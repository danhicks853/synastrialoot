local addonName, ns = ...
-- throttle table-wide reloads to avoid recursive spikes
local reloadQueued = false
-- cache item counts to reduce redundant API calls
local itemCountCache = {}
local itemCountCacheTime = 0
local CACHE_DURATION = 0.5  -- Cache for 500ms


-- helper to retrieve item count with cache
local function GetCachedItemCount(itemID)
	local currentTime = GetTime()
	if currentTime - itemCountCacheTime > CACHE_DURATION then
		-- Cache expired, clear it
		itemCountCache = {}
		itemCountCacheTime = currentTime
	end
	
	local count = itemCountCache[itemID]
	if count == nil then
		count = GetItemCount(itemID)
		itemCountCache[itemID] = count
	end
	return count
end
local ItemRow = {}
ns.ItemRow = ItemRow
local Utils = ns.Utils or {}
local C_Timer = Utils.C_Timer or {
	After = function() end,
}

function ItemRow:Create(parent, itemID)
	-- Create the row button
	local row = CreateFrame("Button", nil, parent)
	row:SetHeight(24)
	row:SetWidth(parent:GetWidth() or 200)
	row.itemID = itemID

	-- Create highlight texture
	local highlight = row:CreateTexture(nil, "HIGHLIGHT")
	highlight:SetAllPoints()
	highlight:SetTexture(1, 1, 1, 0.2)
	highlight:Hide()
	row.Highlight = highlight

	-- Create background
	local bg = row:CreateTexture(nil, "BACKGROUND")
	bg:SetAllPoints()
	bg:SetTexture(0.15, 0.15, 0.15, 0.7)
	row.Background = bg

	-- Function to refresh obtained state
	function row:RefreshObtained()
		local Utils = ns.Utils
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.StartTimer("RefreshObtained_" .. (self.itemID or 0))
		end
		
		local count = GetCachedItemCount(self.itemID or 0)

		-- Apply strong green background when owned
		if count and count > 0 then
			self.Background:SetTexture(0.10, 0.6, 0.10, 0.85)
		else
			self.Background:SetTexture(0.08, 0.08, 0.08, 0.85)
		end


		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.EndTimer("RefreshObtained_" .. (self.itemID or 0))
		end
	end

	-- Create item icon
	local icon = row:CreateTexture(nil, "ARTWORK")
	icon:SetSize(18, 18)
	icon:SetPoint("LEFT", 4, 0)
	icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
	row.Icon = icon

	-- Create item name text (left)
	local text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	text:SetPoint("LEFT", icon, "RIGHT", 4, 0)
	text:SetJustifyH("LEFT")
	text:SetText("Loading...")
	-- Set font size explicitly for better readability
	local font, fontHeight, fontFlags = text:GetFont()
	text:SetFont(font, 14, fontFlags)
	row.Text = text

	-- Anchor item name text fully left-to-right
	text:ClearAllPoints()
	text:SetPoint("LEFT", icon, "RIGHT", 4, 0)
	text:SetPoint("RIGHT", row, "RIGHT", -6, 0)


	-- Helper: populate row when item info becomes available
	local attempts = 0
	local function TryPopulate()
		local name, link, rarity, _, _, _, _, _, _, texture
		if GetItemInfoCustom then
			name, link, rarity, _, _, _, _, _, _, texture = GetItemInfoCustom(itemID)
		end
		if not name or name == "" then
			name, link, rarity, _, _, _, _, _, _, texture = GetItemInfo(itemID)
		end
		if name then
			text:SetText(name)
			row.itemLink = link
			if texture then
				icon:SetTexture(texture)
			end
			if rarity and rarity > 1 then
				local r, g, b = GetItemQualityColor(rarity)
				text:SetTextColor(r, g, b)
			else
				text:SetTextColor(1, 1, 1)
			end
			row:RefreshObtained()
		elseif attempts < 10 then
			attempts = attempts + 1
			C_Timer.After(0.5, TryPopulate)
		end
	end
	TryPopulate()

	-- OnEnter tooltip uses item hyperlink directly, ensures server query
	row:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetHyperlink("item:" .. self.itemID)
		GameTooltip:Show()
		highlight:Show()
	end)

	row:SetScript("OnLeave", function()
		GameTooltip:Hide()
		highlight:Hide()
	end)

	-- Update OnClick to use link if available or construct item string
	row:SetScript("OnClick", function(_, button)
		if IsShiftKeyDown() then
			local link = row.itemLink or ("item:" .. row.itemID)
			local editBox = ChatEdit_GetActiveWindow()
			if editBox then
				editBox:Insert(link)
			end
		else
			OpenLootDb(row.itemID)
		end
	end)

	-- Make the row resizable with its parent
	row:SetScript("OnSizeChanged", function(self, width, height)
		self:SetWidth(width)
	end)

	-- Listen for non-bag events to refresh obtained state dynamically
	-- BAG_UPDATE is now handled centrally for better performance
	-- row:RegisterEvent("CHAT_MSG_LOOT") -- fires when loot is received

	-- Also update attune on PLAYER_EQUIPMENT_CHANGED and ATTUNE_UPDATE if exists
	if _G.ItemAttuneUpdateEvent then
		row:RegisterEvent(_G.ItemAttuneUpdateEvent)
		row:SetScript("OnEvent", function(self, event)
			if event == _G.ItemAttuneUpdateEvent then
				
			end
		end)
	end

	return row
end

function ItemRow:Update(row, itemID)
	if not row or not itemID then
		return
	end
	row.itemID = itemID
	row.Text:SetText("Loading...")
	local itemName, itemLink, itemRarity = GetItemInfo(itemID)

	if itemName then
		row.Text:SetText(itemName)
		row.itemLink = itemLink
		if itemRarity and itemRarity > 1 then
			local r, g, b = GetItemQualityColor(itemRarity)
			row.Text:SetTextColor(r, g, b)
		else
			row.Text:SetTextColor(1, 1, 1)
		end
		row:RefreshObtained()
	else
		local itemInfoCallback = function()
			local name, link, rarity = GetItemInfo(itemID)
			if name and row and row.Text then
				row.Text:SetText(name)
				row.itemLink = link

				if rarity and rarity > 1 then
					local r, g, b = GetItemQualityColor(rarity)
					row.Text:SetTextColor(r, g, b)
				else
					row.Text:SetTextColor(1, 1, 1)
				end
				row:RefreshObtained()
				
			end
		end
		C_Timer.After(0.1, itemInfoCallback)
	end
	if row.Icon then
		local _, _, _, _, _, _, _, _, _, texture = GetItemInfo(itemID)
		if texture then
			row.Icon:SetTexture(texture)
			row.Icon:Show()
		else
			row.Icon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
		end
	end
end
