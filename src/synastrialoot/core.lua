-- Simplified core.lua for SynastriaLoot2
local addonName, ns = ...
local SL = _G[addonName] or {}
_G[addonName] = SL

local Utils = LibStub and LibStub:GetLibrary("SynastriaLoot2-Utils", true)
SL.Utils = Utils

local ROW_HEIGHT = 24
local HEADER_HEIGHT = 18
SL.headerStates = SL.headerStates or {}
local lastZone = nil
-- Filter mode: 1 = All, 2 = Single-source, 3 = Multi-source
local filterMode = 1
local FILTER_LABELS = { "All", "1 Src", "Multi" }

-- Central bag update management
local bagUpdateFrame = nil
local itemRows = {}  -- Track all item rows for centralized updates

-- Forward declaration so inner closures can reference it before definition
local populateLootList

-- Centralized bag update handler
local function HandleBagUpdate()
	if Utils and Utils.PerfTracker then
		Utils.PerfTracker.StartTimer("CentralBagUpdate")
	end
	
	local updatedRows = 0
	for _, row in ipairs(itemRows) do
		if row and row.RefreshObtained and row:IsVisible() then
			row:RefreshObtained()
			updatedRows = updatedRows + 1
		end
	end
	
	-- if Utils and Utils.PerfTracker then
	-- 	Utils.PerfTracker.EndTimer("CentralBagUpdate")
	-- 	if updatedRows > 10 then
	-- 		print(string.format("|cffff9900[SL Perf]|r Updated %d item rows", updatedRows))
	-- 	end
	-- end
end

-- Initialize centralized bag update system
local function InitBagUpdateSystem()
	if bagUpdateFrame then return end
	
	bagUpdateFrame = CreateFrame("Frame")
	bagUpdateFrame:RegisterEvent("BAG_UPDATE")
	bagUpdateFrame:SetScript("OnEvent", function()
		if Utils and Utils.BagUpdateManager then
			Utils.BagUpdateManager.TriggerBagUpdate()
		else
			-- Fallback if utils not loaded
			HandleBagUpdate()
		end
	end)
	
	-- Register with the centralized system if available
	if Utils and Utils.BagUpdateManager then
		Utils.BagUpdateManager.RegisterCallback("SynastriaLoot_Main", HandleBagUpdate)
	end
end

-- --------------------------------------------------------------
-- Main frame creator
-- --------------------------------------------------------------
local function CreateMainFrame()
	-- Tooltip-style frame backdrop (3.3.5-compatible)
	local frame = CreateFrame("Frame", "SLFrameMain", UIParent)
	frame:SetSize(350, 500)
	frame:SetPoint("CENTER")
	frame:SetFrameStrata("MEDIUM")
	frame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		tile = true,
		tileSize = 16,
	})
	frame:SetBackdropColor(0, 0, 0, 0.85)

	-- Draggable & resizable
	frame:SetMovable(true)
	frame:SetResizable(true)
	frame:EnableMouse(true)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	frame:SetMinResize(250, 200)

	-- Resize handle (bottom-right)
	local resizeBtn = CreateFrame("Button", nil, frame)
	resizeBtn:SetSize(16, 16)
	resizeBtn:SetPoint("BOTTOMRIGHT", -2, 2)
	resizeBtn:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
	resizeBtn:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
	resizeBtn:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")

	resizeBtn:SetScript("OnMouseDown", function(self)
		self:GetParent():StartSizing("BOTTOMRIGHT")
	end)
	resizeBtn:SetScript("OnMouseUp", function(self)
		local p = self:GetParent()
		p:StopMovingOrSizing()
		if p.scrollChild and p.scrollFrame then
			p.scrollChild:SetWidth(p.scrollFrame:GetWidth() - 8)
		end
	end)

	-- Keep scroll child width in sync when frame is resized programmatically
	frame:SetScript("OnSizeChanged", function(self)
		if self.scrollChild and self.scrollFrame then
			self.scrollChild:SetWidth(self.scrollFrame:GetWidth() - 8)
		end
	end)

	-- Filter toggle button at the very top
	local filterBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	filterBtn:SetSize(60, 18)
	filterBtn:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -8)
	filterBtn:SetText(FILTER_LABELS[filterMode])

	filterBtn:SetScript("OnClick", function()
		filterMode = filterMode % 3 + 1 -- cycle 1->2->3->1
		filterBtn:SetText(FILTER_LABELS[filterMode])
		if frame.scrollChild then
			populateLootList(frame.scrollChild, frame.scrollFrame)
			frame.scrollFrame:SetVerticalScroll(0) -- jump to top so change is visible immediately
		end
	end)
	frame.filterButton = filterBtn

	-- Title displays current zone name
	local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	title:SetPoint("TOP", 0, -8)
	title:SetText((GetZoneText() or "SynastriaLoot2"))
	frame.title = title

	-- Close button
	local closeBtn = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
	closeBtn:SetPoint("TOPRIGHT", 0, 0)

	-- Scroll frame + child
	local sf = CreateFrame("ScrollFrame", "SLScrollFrame", frame, "UIPanelScrollFrameTemplate")
	sf:SetPoint("TOPLEFT", 10, -30)
	sf:SetPoint("BOTTOMRIGHT", -25, 20)

	local sc = CreateFrame("Frame", "SLScrollChild", sf)
	sc:SetPoint("TOPLEFT")
	sc:SetSize(1, 1) -- will resize after population
	sf:SetScrollChild(sc)

	frame.scrollFrame = sf
	frame.scrollChild = sc

	return frame
end

-- --------------------------------------------------------------
-- Utility functions
-- --------------------------------------------------------------
local function clearLootList(parent)
	-- Remove item row frames
	for _, child in ipairs({ parent:GetChildren() }) do
		child:Hide()
		child:SetParent(nil)
	end

	-- Hide FontStrings / textures (headers, etc.) attached directly to the scroll child.
	-- Do NOT call SetParent(nil) on these regions because textures and fontstrings
	-- must always have a valid parent (Lua error otherwise).
	for _, region in ipairs({ parent:GetRegions() }) do
		if region and region.Hide then
			region:Hide()
		end
	end
end

populateLootList = function(parent, scrollFrame)
	if Utils and Utils.PerfTracker then
		Utils.PerfTracker.StartTimer("PopulateLootList")
	end
	
	clearLootList(parent)
	-- Clear the itemRows tracking table
	itemRows = {}

	-- Ensure the scroll child has the same width as the scroll frame minus padding
	parent:SetWidth(scrollFrame:GetWidth() - 8)

	if Utils and Utils.PerfTracker then
		Utils.PerfTracker.StartTimer("ItemLocGetAllItems")
	end
	local items = ItemLocGetAllItemsInZone(-1, 1, 0, 0, 1) or {}
	if Utils and Utils.PerfTracker then
		Utils.PerfTracker.EndTimer("ItemLocGetAllItems")
	end

	-- Prepare grouping tables
	local grouped = {}
	local ungrouped = {}

	for _, itemID in ipairs(items) do
		local srcCount = ItemLocGetSourceCount and ItemLocGetSourceCount(itemID) or 0

		-- Determine if item matches current filter
		local include = (filterMode == 1) or (filterMode == 2 and srcCount == 1) or (filterMode == 3 and srcCount > 1)

		if include then
			-- Check for crafting source

			if srcCount > 0 and ns.ItemLocAPI and ns.ItemLocAPI.GetSourceAt then
				local PROF_TYPE = ns.ItemLocAPI.SOURCE_TYPES and ns.ItemLocAPI.SOURCE_TYPES.PROFESSION or 7
				for s = 1, srcCount do
					local srcType, _, _, _, _, srcName = ns.ItemLocAPI:GetSourceAt(itemID, s)
					-- If API not loaded yet, fall back to direct global
					if not srcType then
						srcType, _, _, _, _, srcName = ItemLocGetSourceAt(itemID, s)
					end
					-- SourceType == PROFESSION / CRAFTING

					-- Fallback textual detection

				end
			elseif srcCount > 0 then
				-- Fallback loop using global API directly
				for s = 1, srcCount do
					local srcType, _, _, _, _, srcName = ItemLocGetSourceAt(itemID, s)

				end
			end

			if srcCount == 1 then
				local _, _, _, _, _, objName = ItemLocGetSourceAt(itemID, 1)
				objName = objName or "Unknown"
				grouped[objName] = grouped[objName] or {}
				table.insert(grouped[objName], itemID)
			else
				table.insert(ungrouped, itemID)
			end
		end
	end

	-- Helper to add a collapsible header frame with icon
	local function addHeader(name, y)
		local hdr = CreateFrame("Frame", nil, parent)
		hdr:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, -y)
		hdr:SetPoint("RIGHT", parent, "RIGHT", -4, 0)
		hdr:SetHeight(HEADER_HEIGHT)
		hdr.sourceName = name

		-- Icon button (plus/minus)
		local iconBtn = CreateFrame("Button", nil, hdr)
		iconBtn:SetSize(12, 12)
		iconBtn:SetPoint("LEFT", 4, 0)
		hdr.IconBtn = iconBtn

		local iconTex = iconBtn:CreateTexture(nil, "ARTWORK")
		iconTex:SetAllPoints()
		hdr.IconTex = iconTex

		-- Label button (covers remaining area)
		local labelBtn = CreateFrame("Button", nil, hdr)
		labelBtn:SetPoint("LEFT", iconBtn, "RIGHT", 4, 0)
		labelBtn:SetPoint("RIGHT", hdr, "RIGHT", 0, 0)
		labelBtn:SetHeight(HEADER_HEIGHT)

		local labelFS = labelBtn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		labelFS:SetAllPoints(labelBtn)
		labelFS:SetTextColor(1, 0.82, 0)
		labelFS:SetJustifyH("LEFT")
		labelFS:SetText(name)

		-- Update icon based on collapse state
		local function refreshIcon()
			if SL.headerStates[name] then
				iconTex:SetTexture("Interface\\Buttons\\UI-PlusButton-UP")
			else
				iconTex:SetTexture("Interface\\Buttons\\UI-MinusButton-UP")
			end
		end
		refreshIcon()

		iconBtn:SetScript("OnClick", function()
			SL.headerStates[name] = not SL.headerStates[name]
			refreshIcon()
			SL.ReloadList()
		end)

		labelBtn:SetScript("OnClick", function()
			-- Send .findnpc command to chat
			if SendChatMessage then
				SendChatMessage(".findnpc " .. name, "SAY")
			else
				ChatFrame_OpenChat(".findnpc " .. name)
			end
		end)

		-- Prevent highlight visuals
		iconBtn:SetHighlightTexture(nil)
		labelBtn:SetHighlightTexture(nil)

		return HEADER_HEIGHT + 2
	end

	local yOffset = 0  -- No offset for least space below title

	-- Sorted headers
	local headers = {}
	for name in pairs(grouped) do
		table.insert(headers, name)
	end
	table.sort(headers)

	for _, name in ipairs(headers) do
		yOffset = yOffset + addHeader(name, yOffset)

		if not SL.headerStates[name] then -- only show rows if expanded
			for _, itemID in ipairs(grouped[name]) do
				local row = ns.ItemRow:Create(parent, itemID)
				row:SetPoint("TOPLEFT", parent, "TOPLEFT", 4, -yOffset)
				row:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
				row:SetHeight(ROW_HEIGHT)
				-- Register row for centralized bag updates
				table.insert(itemRows, row)
				yOffset = yOffset + ROW_HEIGHT + 2
			end
		end
	end


	-- Header for multi-source or remaining items
	if #ungrouped > 0 and (filterMode == 1 or filterMode == 3) then
		yOffset = yOffset + addHeader("Other Items", yOffset)
		if not SL.headerStates["Other Items"] then
			for _, itemID in ipairs(ungrouped) do
				local row = ns.ItemRow:Create(parent, itemID)
				row:SetPoint("TOPLEFT", parent, "TOPLEFT", 4, -yOffset)
				row:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
				row:SetHeight(ROW_HEIGHT)
				-- Register row for centralized bag updates
				table.insert(itemRows, row)
				yOffset = yOffset + ROW_HEIGHT + 2
			end
		end
	end

	-- Ensure scroll child height is sufficient for scrolling
	parent:SetHeight(math.max(yOffset, scrollFrame:GetHeight()))
	-- Reaffirm width after population in case scrollbar appears
	parent:SetWidth(scrollFrame:GetWidth() - 8)

	-- Count total items in the list
	local totalItems = 0
	for _, group in pairs(grouped) do
		totalItems = totalItems + #group
	end
	totalItems = totalItems + #ungrouped

	-- Update the title with the zone name and item count
	if SL.frame and SL.frame.title then
		local zoneName = GetZoneText() or "SynastriaLoot2"
		SL.frame.title:SetText(string.format("%s (%d items)", zoneName, totalItems))
	end
	
	-- Initialize centralized bag update system if not already done
	InitBagUpdateSystem()
	
	if Utils and Utils.PerfTracker then
		Utils.PerfTracker.EndTimer("PopulateLootList")
		local stats = Utils.PerfTracker.GetStats("PopulateLootList")
		if stats and stats.lastTime > 0.1 then
			print(string.format("|cffff9900[SL Perf]|r PopulateLootList took %.3fs, created %d rows", 
				stats.lastTime, #itemRows))
		end
	end
end

-- --------------------------------------------------------------
-- Initialisation
-- --------------------------------------------------------------
local function InitialiseUI()
	local frame = SL.frame or CreateMainFrame()
	SL.frame = frame

	Utils.C_Timer.After(0.1, function()
		populateLootList(frame.scrollChild, frame.scrollFrame)
		lastZone = GetZoneText() or ""
		-- title is now updated in populateLootList
	end)

	return frame
end

-- --------------------------------------------------------------
-- Minimap button creator
-- --------------------------------------------------------------
local function CreateMinimapButton()
	-- Prefer LibDBIcon if libraries are available
	if SL.minimapIconRegistered then return end

	local DBIcon = LibStub and LibStub:GetLibrary("LibDBIcon-1.0", true)
	local LDB    = LibStub and LibStub:GetLibrary("LibDataBroker-1.1", true)

	if DBIcon and LDB then
		-- Use minimaplocation as the SavedVariable for minimap icon persistence
		-- This table is declared in the TOC as SavedVariables: minimaplocation
		if type(minimaplocation) ~= "table" then minimaplocation = {} end
		SL.iconDB = minimaplocation  -- for compatibility, but minimaplocation is the real storer {}
		local dataObj = LDB:NewDataObject("SynastriaLoot", {
			type = "launcher",
			icon = "Interface\\Icons\\INV_Misc_Map_01",
			OnClick = function()
				if not SL.frame then InitialiseUI() end
				if SL.frame:IsShown() then SL.frame:Hide() else SL.frame:Show() end
			end,
			OnTooltipShow = function(tooltip)
				tooltip:AddLine("SynastriaLoot")
				tooltip:AddLine("Click to toggle window", 0.9, 0.9, 0.9)
			end,
		})
		-- Persist minimap position in minimaplocation SavedVariable
		DBIcon:Register("SynastriaLoot", dataObj, minimaplocation)
		SL.minimapIconRegistered = true
	end
end

-- Slash commands
SLASH_SYNASTRIA1 = "/sl"
SLASH_SYNASTRIA2 = "/synastrialoot"
SlashCmdList["SYNASTRIA"] = function(msg)
	local command = string.lower(msg or "")
	
	if command == "perf" or command == "performance" then
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.PrintAllStats()
		else
			print("|cffff0000[SL]|r Performance tracking not available")
		end
	elseif command == "reset" then
		if Utils and Utils.PerfTracker then
			Utils.PerfTracker.Reset()
		else
			print("|cffff0000[SL]|r Performance tracking not available")
		end
	elseif command == "help" then
		print("|cff00ff00[SL Commands]|r")
		print("  /sl - Toggle main window")
		print("  /sl perf - Show performance statistics")
		print("  /sl reset - Reset performance statistics")
		print("  /sl help - Show this help")
	else
		-- Default behavior: toggle window
		if not SL.frame then
			InitialiseUI()
			return
		end
		if SL.frame:IsShown() then
			SL.frame:Hide()
		else
			SL.frame:Show()
		end
	end
end

-- Event bootstrap
local listener = CreateFrame("Frame")
listener:RegisterEvent("ADDON_LOADED")
listener:RegisterEvent("PLAYER_LOGIN")
listener:RegisterEvent("PLAYER_ENTERING_WORLD")
listener:RegisterEvent("ZONE_CHANGED")
listener:RegisterEvent("ZONE_CHANGED_INDOORS")
listener:RegisterEvent("ZONE_CHANGED_NEW_AREA")
listener:SetScript("OnEvent", function(_, evt, name)
	if evt == "ADDON_LOADED" and name == addonName then
		InitialiseUI()
		-- Check for optional attunement system
		if not GetItemLinkAttuneProgress then
			print("|cffff9900[SL]|r Attunement system not detected - percentage tracking disabled")
		end
	elseif evt == "PLAYER_LOGIN" then
		CreateMinimapButton()
	elseif
		evt == "PLAYER_ENTERING_WORLD"
		or evt == "ZONE_CHANGED"
		or evt == "ZONE_CHANGED_INDOORS"
		or evt == "ZONE_CHANGED_NEW_AREA"
	then
		local zone = GetZoneText() or ""
		if zone ~= lastZone then
			lastZone = zone
			if SL.frame and SL.frame.scrollChild then
				SL.ReloadList()
				-- title is now updated in populateLootList
			end
		end
	end
end)

-- Public helper to refresh list on demand
function SL.ReloadList()
	if SL.frame and SL.frame.scrollChild then
		populateLootList(SL.frame.scrollChild, SL.frame.scrollFrame)
	end
end
