local addonName, ns = ...
-- throttle table-wide reloads to avoid recursive spikes
local reloadQueued = false
-- cache GetItemLinkAttuneProgress results to avoid expensive repeat calls
local attuneCache = {}
-- cache item counts to reduce redundant API calls
local itemCountCache = {}
local itemCountCacheTime = 0
local CACHE_DURATION = 0.5  -- Cache for 500ms

-- helper to retrieve attunement progress with simple cache
local function GetCachedAttune(link)
	-- Check if the attunement function exists
	if not GetItemLinkAttuneProgress then
		-- Function not available, return nil (no attunement system)
		return nil
	end
	
	local val = attuneCache[link]
	if val == nil then
		val = GetItemLinkAttuneProgress(link)
		attuneCache[link] = val
	end
	return val
end

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

		-- Apply green background when owned
		if count and count > 0 then
			self.Background:SetTexture(0, 0.35, 0, 0.7)
		else
			self.Background:SetTexture(0.15, 0.15, 0.15, 0.7)
		end

		-- If item is fully attuned, remove it from the list immediately
		local prog
		local link = self.itemLink or ("item:" .. self.itemID)
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.StartTimer("GetItemLinkAttuneProgress")
		end
		prog = GetCachedAttune(link)
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.EndTimer("GetItemLinkAttuneProgress")
		end
		
		if prog and (prog == 1 or prog >= 100) then
			-- Hide this row and trigger a list reload to reflow layout
			self:Hide()
			if _G[addonName] and _G[addonName].ReloadList then
				if not reloadQueued then
					reloadQueued = true
					C_Timer.After(0.5, function()
						reloadQueued = false
						_G[addonName].ReloadList()
					end)
				end
			end
		end
		
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.EndTimer("RefreshObtained_" .. (self.itemID or 0))
		end
	end

	-- Create item icon
	local icon = row:CreateTexture(nil, "ARTWORK")
	icon:SetSize(18, 18)
	icon:SetPoint("LEFT", 4, 0)
	row.Icon = icon

	-- Create item name text (left)
	local text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	text:SetPoint("LEFT", icon, "RIGHT", 4, 0)
	-- right anchor updated after pct is created
	text:SetJustifyH("LEFT")
	text:SetText("Loading...")
	row.Text = text

	-- Create attunement percentage text (right)
	local pct = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	pct:SetSize(32, 14)
	pct:SetPoint("RIGHT", -6, 0)
	pct:SetJustifyH("RIGHT")
	pct:SetText("")
	row.PctText = pct
	-- Re-anchor item name now that pct exists
	text:ClearAllPoints()
	text:SetPoint("LEFT", icon, "RIGHT", 4, 0)
	text:SetPoint("RIGHT", pct, "LEFT", -4, 0)

	-- Helper to refresh attunement percentage
	function row:RefreshAttune()
		local Utils = ns.Utils
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.StartTimer("RefreshAttune_" .. (self.itemID or 0))
		end
		
		local link = self.itemLink or ("item:" .. self.itemID)
		local prog = GetCachedAttune(link)
		if prog then
			if prog == 0 then
				pct:SetText("0%")
			elseif prog > 0 and prog < 1 then
				pct:SetFormattedText("%d%%", math.floor(prog*100+0.5))
			elseif prog >=1 and prog < 100 then
				pct:SetFormattedText("%d%%", math.floor(prog+0.5))
			elseif prog >= 100 then
				pct:SetText("100%")
			end
		else
			pct:SetText("")
		end
		
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.EndTimer("RefreshAttune_" .. (self.itemID or 0))
		end
	end

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
			row:RefreshAttune()
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
				self:RefreshAttune()
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
		row:RefreshAttune()
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
				row:RefreshAttune()
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
