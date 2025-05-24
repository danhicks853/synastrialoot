-- zone_browser.lua
-- Zone Browser Frame for SynastriaLoot

local ZoneBrowser = {}
_G.SynastriaLoot_ZoneBrowser = ZoneBrowser

local frame, dropdown, selectedZoneKey
-- Add a selectedMode field to track the currently selected loot mode
global_selectedMode = nil -- fallback if frame not ready

-- Utility: Build a list of {key, name} for dropdown
local function GetZoneDropdownList()
    local list = {}
    local seen = {}
    if not Synastria_LootTableRegister or not Synastria_LootTableRegister["Instances"] then return list end
    for key, tbl in pairs(Synastria_LootTableRegister["Instances"]) do
        local info = tbl.Info
        if info and type(info[1]) == "string" then
            -- Remove duplicates: if a zone has a key ending with '+', skip it (handled by radio buttons)
            local baseName = info[1]:gsub("%s*%+.*$", "")
            if not seen[baseName] then
                table.insert(list, { key = key, name = baseName })
                seen[baseName] = true
            end
        end
    end
    table.sort(list, function(a, b) return a.name < b.name end)
    return list
end

function ZoneBrowser:Create()
    global_selectedMode = nil
    if frame then return end
    frame = CreateFrame("Frame", "SynastriaZoneBrowserFrame", UIParent)
    frame:SetSize(480, 500)
    frame:SetPoint("CENTER")
    frame:SetFrameStrata("DIALOG")
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetResizable(true)
    frame:SetMinResize(320, 240)
    frame:SetMaxResize(1200, 1000)
    frame:SetScript("OnDragStart", frame.StartMoving)
    frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
    frame:SetClampedToScreen(true)

    -- Collapsed state table for headers
    frame.headerCollapsed = {}

    -- Dark background (must be first child)
    local bg = frame:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints(true)
    bg:SetTexture(0.08, 0.08, 0.12, 0.92) -- dark bluish, mostly opaque
    frame.bg = bg

    -- Resize handle
    local resizeHandle = CreateFrame("Button", nil, frame)
    resizeHandle:SetSize(16, 16)
    resizeHandle:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
    resizeHandle:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
    resizeHandle:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
    resizeHandle:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
    resizeHandle:SetScript("OnMouseDown", function(self, button)
        if button == "LeftButton" then
            frame:StartSizing("BOTTOMRIGHT")
        end
    end)
    resizeHandle:SetScript("OnMouseUp", function(self, button)
        frame:StopMovingOrSizing()
    end)
    resizeHandle:Show()

    frame:SetScript("OnSizeChanged", function(self, width, height)
        if self.bg then self.bg:SetSize(width, height) end
        if self.scrollFrame then self.scrollFrame:SetSize(width - 30, height - 110) end
        if self.content then self.content:SetSize(width - 30, height - 110) end
    end)

    -- Title
    local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOP", frame, "TOP", 0, -10)
    title:SetText("Zone Browser")

    -- Ensure Blizzard dropdown template is loaded
    if not UIDropDownMenu_Initialize then
        if UIParentLoadAddOn then
            UIParentLoadAddOn("Blizzard_UIDropDown")
        end
    end
    if not UIDropDownMenu_Initialize then
        return
    end

    -- Dropdown
    dropdown = CreateFrame("Frame", "SynastriaZoneDropdown", frame, "UIDropDownMenuTemplate")
    if not dropdown then
        return
    end
    dropdown:SetPoint("TOPLEFT", frame, "TOPLEFT", 12, -36)

    -- Radio buttons for item filter
    local filterGroup = CreateFrame("Frame", nil, frame)
    filterGroup:SetPoint("TOPLEFT", dropdown, "BOTTOMLEFT", 0, -2)
    filterGroup:SetSize(300, 24)
    frame.filterGroup = filterGroup

    local filters = {
        { label = "All", value = "all" },
        { label = "All Eligible", value = "eligible" },
        { label = "Unattuned", value = "unattuned" },
        { label = "Attuned", value = "attuned" },
    }
    frame.itemFilter = "all"
    frame.radioButtons = {}
    for i, filter in ipairs(filters) do
        local btn = CreateFrame("CheckButton", nil, filterGroup, "UIRadioButtonTemplate")
        btn:SetPoint("LEFT", filterGroup, "LEFT", (i-1)*90, 0)
        btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        btn.text:SetPoint("LEFT", btn, "RIGHT", 2, 0)
        btn.text:SetText(filter.label)
        btn:SetScript("OnClick", function(self)
            for j, other in ipairs(frame.radioButtons) do
                other:SetChecked(other == self)
            end
            frame.itemFilter = filter.value
            -- Always refresh using the last selected zoneKey if possible
            local zoneKey = selectedZoneKey
            if not zoneKey and frame.dropdown and frame.dropdown.selectedValue then
                zoneKey = frame.dropdown.selectedValue
            end
            if not zoneKey and UIDropDownMenu_GetSelectedValue then
                zoneKey = UIDropDownMenu_GetSelectedValue(dropdown)
            end
            if not zoneKey and frame.lastZoneKey then
                zoneKey = frame.lastZoneKey
            end
            if zoneKey then
                frame.lastZoneKey = zoneKey
                ZoneBrowser:PopulateLoot(zoneKey)
            end
        end)
        btn:SetChecked(i == 1)
        frame.radioButtons[i] = btn
    end
    filterGroup:Show()

    -- Mode radio buttons (loot difficulties)
    frame.modeButtons = {}
    frame.modeButtonGroup = CreateFrame("Frame", nil, frame)
    frame.modeButtonGroup:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 18, 8)
    frame.modeButtonGroup:SetSize(420, 28)
    frame.selectedMode = nil -- reset on frame creation

    -- Loot List ScrollFrame (copied from main_frame.lua)
    local scrollFrame = CreateFrame("ScrollFrame", "SynastriaZoneBrowserScrollFrame", frame, "UIPanelScrollFrameTemplate")
    if not scrollFrame then
        return
    end
    if not dropdown then
        return
    end
    scrollFrame:SetPoint("TOPLEFT", filterGroup, "BOTTOMLEFT", 0, -8)
    -- Ensure the scroll frame ends above the mode buttons, not at the absolute bottom
    scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -30, 48) -- leave at least 36px for mode buttons
    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(400, 1)
    content:SetWidth(400)
    scrollFrame:SetScrollChild(content)
    frame.scrollFrame = scrollFrame
    frame.content = content

    -- Store for rows/headers
    frame.headerPool = {}
    frame.rowPool = {}

    -- Dropdown init
    -- Group zones by source file for submenu structure
    local sourcePrettyNames = {
        classic = "Classic WoW",
        burningcrusade = "Burning Crusade",
        wrathofthelichking = "Wrath of the Lich King",
        mythicwotlk = "Mythic WotLK",
        dalaran = "Dalaran",
        vendor_armor = "Vendors",
        loottables = "Misc Tables",
        data = "Other Data",
        classicwow = "Classic WoW",
    }
    local function getSourceKeyFromZoneKey(zoneKey)
        local tbl = Synastria_LootTableRegister and Synastria_LootTableRegister["Instances"] and Synastria_LootTableRegister["Instances"][zoneKey]
        if tbl and tbl.Info and type(tbl.Info[2]) == "string" then
            local src = tbl.Info[2]:lower()
            src = src:gsub("^synastrialoot","")
            src = src:gsub("^synastria","")
            src = src:gsub("^atlasloot_","")
            src = src:gsub("^atlasloot","")
            src = src:gsub("^_+",""):gsub("_+","")
            src = src:gsub("^data/","")
            src = src:gsub("%.lua$","")
            if src == "" then src = "misc" end
            return src
        end
        return "misc"
    end
    UIDropDownMenu_Initialize(dropdown, function(self, level, menuList)
        level = level or 1
        if level == 1 then
            -- Build sources
            local zoneList = GetZoneDropdownList()
            local sources = {}
            for _, zone in ipairs(zoneList) do
                local src = getSourceKeyFromZoneKey(zone.key)
                sources[src] = true
            end
            local sortedSources = {}
            for src in pairs(sources) do table.insert(sortedSources, src) end
            table.sort(sortedSources)
            for _, src in ipairs(sortedSources) do
                local info = UIDropDownMenu_CreateInfo()
                info.text = sourcePrettyNames[src] or (src:gsub("^%l", string.upper))
                info.hasArrow = true
                info.notCheckable = true
                info.menuList = src
                UIDropDownMenu_AddButton(info, level)
            end
        else
            -- Show zones for this source
            local zoneList = GetZoneDropdownList()
            local src = menuList
            for _, zone in ipairs(zoneList) do
                if getSourceKeyFromZoneKey(zone.key) == src then
                    local info = UIDropDownMenu_CreateInfo()
                    info.text = zone.name
                    info.func = function()
                        UIDropDownMenu_SetSelectedValue(dropdown, zone.key)
                        selectedZoneKey = zone.key
                        ZoneBrowser:PopulateLoot(zone.key)
                    end
                    info.value = zone.key
                    UIDropDownMenu_AddButton(info, level)
                end
            end
        end
    end)

    UIDropDownMenu_SetWidth(dropdown, 200)
    UIDropDownMenu_SetText(dropdown, "Select Zone...")

    -- Close button
    local close = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -4, -4)
end

function ZoneBrowser:Show()
    if not frame then self:Create() end
    frame:Show()
end

function ZoneBrowser:Hide()
    if frame then frame:Hide() end
end

-- Build a loot table for a specific zoneKey (mimics BuildZoneLootTable but for selected zone)
local function BuildZoneLootTableForZone(zoneKey, callback)
    if not Synastria_LootTableRegister or not Synastria_LootTableRegister["Instances"] or not Synastria_Data then
        callback(nil)
        return
    end
    local instances = Synastria_LootTableRegister["Instances"]
    local tbl = instances[zoneKey]
    if not tbl or not tbl.Bosses then
        callback(nil)
        return
    end
    local bosses = tbl.Bosses
    local lootTable = {}
    local pending = 0
    local finished = false
    local validItemCount = 0
    local headerMap = {}
    local selectedMode = frame and frame.selectedMode or global_selectedMode or "Normal"
    -- Count valid items for selected mode only, skip bosses that don't have this mode
    for bossIdx, bossInfo in ipairs(bosses) do
        local bossKey = bossInfo[1]
        local bossData = Synastria_Data[bossKey]
        local items = {}
        if bossData and selectedMode and bossData[selectedMode] then
            for _, group in ipairs(bossData[selectedMode]) do
                for _, itemEntry in ipairs(group) do
                    if itemEntry[2] then
                        table.insert(items, itemEntry[2])
                    end
                end
            end
        end
        if #items > 0 then
            validItemCount = validItemCount + #items
        end
    end
    pending = validItemCount
    local function tryFinish()
        if pending == 0 and not finished then
            finished = true
            callback(lootTable)
        end
    end
    for bossIdx, bossInfo in ipairs(bosses) do
        local bossKey = bossInfo[1]
        local bossData = Synastria_Data[bossKey]
        local bossDisplay = bossKey
        if bossData and bossData.info and bossData.info.name then
            bossDisplay = bossData.info.name
        elseif _G["BabbleBoss"] and _G["BabbleBoss"][bossKey] then
            bossDisplay = _G["BabbleBoss"][bossKey]
        elseif _G["AL"] and _G["AL"][bossKey] then
            bossDisplay = _G["AL"][bossKey]
        end
        local headerEntry = { type = "header", text = bossDisplay, rows = {} }
        table.insert(lootTable, headerEntry)
        headerMap[bossIdx] = headerEntry
        if bossData and selectedMode and bossData[selectedMode] then
            for _, group in ipairs(bossData[selectedMode]) do
                for _, itemEntry in ipairs(group) do
                    local itemID = itemEntry[2]
                    if itemID then
                        local thisHeader = headerEntry
                        if Items and Items.GetItemInfoObject then
                            local realItemID = itemID
                            if type(itemID) == "table" then
                                -- Try to extract the actual itemID if possible
                                if itemID.id then
                                    realItemID = itemID.id
                                elseif itemID[2] then
                                    realItemID = itemID[2]
                                else
                                    realItemID = nil
                                end
                            end
                            if realItemID and type(realItemID) == "number" then
                                Items.GetItemInfoObject(realItemID, function(item)
                                    table.insert(thisHeader.rows, { itemID = realItemID, item = item, looted = (_G.SynastriaLoot_LootedItemIDs and _G.SynastriaLoot_LootedItemIDs[realItemID]) or false })
                                    pending = pending - 1
                                    tryFinish()
                                end)
                            else
                                pending = pending - 1
                                tryFinish()
                            end
                        else
                            table.insert(thisHeader.rows, { itemID = itemID, item = nil, looted = false })
                            pending = pending - 1
                            tryFinish()
                        end
                    end
                end
            end
        end
    end
    if validItemCount == 0 then
        callback(lootTable)
        return
    end
end


function ZoneBrowser:PopulateLoot(zoneKey)
    -- Clear previous rows/headers
    frame.headerCollapsed = frame.headerCollapsed or {}
    if not frame.lastZoneKey or frame.lastZoneKey ~= zoneKey then
        frame.headerCollapsed = {}
        frame.lastZoneKey = zoneKey
    end
    for _, header in ipairs(frame.headerPool) do header:Hide() end
    for _, row in ipairs(frame.rowPool) do row:Hide() end
    frame.headerPool = frame.headerPool or {}
    frame.rowPool = frame.rowPool or {}
    local content = frame.content
    if not content then return end
    -- Remove placeholder text if present
    if content.text then content.text:Hide() end

    -- --- MODE BUTTONS ---
    -- Remove old mode buttons
    if frame.modeButtons then for _, btn in ipairs(frame.modeButtons) do btn:Hide() end end
    frame.modeButtons = {}
    local bosses = nil
    if Synastria_LootTableRegister and Synastria_LootTableRegister["Instances"] and Synastria_LootTableRegister["Instances"][zoneKey] then
        bosses = Synastria_LootTableRegister["Instances"][zoneKey].Bosses
    end
    local availableModesSet = {}
    if bosses then
        for _, bossInfo in ipairs(bosses) do
            local bossKey = bossInfo[1]
            local bossData = Synastria_Data[bossKey]
            if bossData then
                for mode, groups in pairs(bossData) do
                    if type(groups) == "table" and mode ~= "info" then
                        availableModesSet[mode] = true
                    end
                end
            end
        end
    end
    local availableModes = {}
    for mode in pairs(availableModesSet) do table.insert(availableModes, mode) end
    table.sort(availableModes)
    -- Default to "Normal" if present, else first mode
    local function tContains(tbl, val)
        for _, v in ipairs(tbl) do if v == val then return true end end
        return false
    end
    if not frame.selectedMode or not tContains(availableModes, frame.selectedMode) then
        if tContains(availableModes, "Normal") then
            frame.selectedMode = "Normal"
        else
            frame.selectedMode = availableModes[1]
        end
    end
    -- Render radio buttons
    for i, mode in ipairs(availableModes) do
        local btn = CreateFrame("CheckButton", nil, frame.modeButtonGroup, "UIRadioButtonTemplate")
        btn:SetPoint("LEFT", frame.modeButtonGroup, "LEFT", (i-1)*110, 0)
        if not btn.text or not btn.text.SetText then
            btn.text = btn:CreateFontString(nil, "OVERLAY", "GameFontNormal")
            btn.text:SetPoint("LEFT", btn, "RIGHT", 2, 0)
        end
        btn.text:SetText(mode)
        btn:SetChecked(frame.selectedMode == mode)
        btn:SetScript("OnClick", function(self)
            frame.selectedMode = mode
            for _, b in ipairs(frame.modeButtons) do b:SetChecked(false) end
            self:SetChecked(true)
            ZoneBrowser:PopulateLoot(zoneKey)
        end)
        btn:Show()
        frame.modeButtons[i] = btn
    end
    -- If no modes, hide group
    if #availableModes == 0 then frame.modeButtonGroup:Hide() else frame.modeButtonGroup:Show() end

    -- Build and display loot table for selected zone and mode
    BuildZoneLootTableForZone(zoneKey, function(lootTable, pending)
        -- If there are still items pending, defer rendering and try again shortly
        if pending and pending > 0 then
            -- WoW 3.3.5 compatible timer replacement for C_Timer.After
            if not ZoneBrowser._timerFrame then
                local f = CreateFrame("Frame")
                f:Hide()
                f._delay = 0
                f._callback = nil
                f:SetScript("OnUpdate", function(self, elapsed)
                    self._delay = self._delay - elapsed
                    if self._delay <= 0 then
                        self:Hide()
                        if self._callback then self._callback() end
                        self._callback = nil
                    end
                end)
                ZoneBrowser._timerFrame = f
            end
            local timerFrame = ZoneBrowser._timerFrame
            timerFrame._delay = 0.2
            timerFrame._callback = function()
                ZoneBrowser:PopulateLoot(zoneKey)
            end
            timerFrame:Show()
            return
        end
        local yOffset = -12
        local anyHeaderShown = false
        local headerIdx = 1
        local rowIdx = 1
        for hIdx, header in ipairs(lootTable or {}) do
            local filteredRows = {}
            for _, row in ipairs(header.rows or {}) do
                local filter = frame.itemFilter or "all"
                local item = row.item
                local show = false
                if filter == "all" then
                    show = true
                elseif filter == "unattuned" then
                    if item and item.CanAttune == 1 and tonumber(item.AttuneProgress or 0) ~= 100 then
                        show = true
                    end
                elseif filter == "eligible" then
                    local canAttune = item and tonumber(item.CanAttune or 0)
                    if canAttune == 1 then
                        show = true
                    end
                elseif filter == "attuned" then
                    local canAttune = item and tonumber(item.CanAttune or 0)
                    local attuneProgress = item and tonumber(item.AttuneProgress or 0)
                    if canAttune == 1 and attuneProgress == 100 then
                        show = true
                    end
                end
                if show then table.insert(filteredRows, row) end
            end
            if #filteredRows > 0 then
                -- For safety, check that only valid items are in filteredRows for Attuned view
                if frame.itemFilter == "attuned" then
                    for _, row in ipairs(filteredRows) do
                        local canAttune = row.item and tonumber(row.item.CanAttune or 0)
                        local attuneProgress = row.item and tonumber(row.item.AttuneProgress or 0)
                        if not (canAttune == 1 and attuneProgress == 100) then
                        end
                    end
                end
                anyHeaderShown = true
                -- Get or create header button
                local headerBtn = frame.headerPool[headerIdx]
                if not headerBtn then
                    headerBtn = CreateFrame("Button", nil, content)
                    headerBtn.text = headerBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                    headerBtn.text:SetDrawLayer("OVERLAY", 7)
                    headerBtn.text:SetParent(headerBtn)
                    headerBtn:SetFrameStrata("TOOLTIP")
                    headerBtn:SetFrameLevel(1000)
                    headerBtn.text:SetPoint("LEFT", 8, 0)
                    headerBtn:EnableMouse(true)
                    headerBtn:RegisterForClicks("AnyUp")
                    headerBtn.bg = headerBtn:CreateTexture(nil, "BACKGROUND")
                    headerBtn.bg:SetAllPoints(headerBtn)
                end
                headerBtn:SetParent(content)
                headerBtn:SetHeight(20)
                headerBtn:SetPoint("TOPLEFT", content, "TOPLEFT", 1, yOffset)
                headerBtn:SetPoint("RIGHT", content, "RIGHT", 0, 0)
                local headerText = header.text or ("Boss " .. tostring(hIdx))
                local headerKey = headerText -- Use header text as unique key
                -- Collapsible: show + or -
                local isCollapsed = frame.headerCollapsed[headerKey]
                headerBtn.text:SetText((isCollapsed and "+ " or "- ") .. tostring(headerText))
                headerBtn:SetScript("OnClick", function(self)
                    frame.headerCollapsed[headerKey] = not frame.headerCollapsed[headerKey]
                    print("[ZoneBrowser] Header clicked! headerKey:", headerKey, "collapsed now:", frame.headerCollapsed[headerKey])
                    ZoneBrowser:PopulateLoot(selectedZoneKey or (frame.dropdown and frame.dropdown.selectedValue))
                end)
                headerBtn:Show()
                headerBtn:Raise()
                frame.headerPool[headerIdx] = headerBtn
                yOffset = yOffset - 24
                headerIdx = headerIdx + 1

                -- Render rows only if not collapsed
                if not isCollapsed then
                    for _, row in ipairs(filteredRows) do
                        local itemID = row.itemID
                        local status = nil
                        if row.looted or (_G.SynastriaLoot_LootedItemIDs and _G.SynastriaLoot_LootedItemIDs[itemID]) then
                            status = "looted"
                        end
                        if _G.SynastriaLoot_EquippedItems and _G.SynastriaLoot_EquippedItems[itemID] then
                            status = "Attuning"
                        end
                        -- Get or create row
                        local itemRow = frame.rowPool[rowIdx]
                        if not itemRow then
                            if Row and Row.Create then
                                itemRow = Row:Create(content)
                            else
                                itemRow = CreateFrame("Button", nil, content)
                                itemRow.text = itemRow:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                                itemRow.text:SetPoint("LEFT", 8, 0)
                            end
                            frame.rowPool[rowIdx] = itemRow
                        end
                        itemRow:SetParent(content)
                        itemRow:SetPoint("TOPLEFT", content, "TOPLEFT", 6, yOffset)
                        itemRow:SetPoint("RIGHT", content, "RIGHT", 0, 0)
                        local itemText = (row.item and row.item.ItemLink) or ("|cffaaaaaa[" .. tostring(row.itemID) .. "]|r")
                        if Row and Row.SetData then
                            Row:SetData(itemRow, { text = itemText, itemID = itemID, status = status })
                        else
                            itemRow.text:SetText(itemText)
                        end
                        -- Set row background for clarity
                        if not itemRow.bg then
                            itemRow.bg = itemRow:CreateTexture(nil, "BACKGROUND")
                            itemRow.bg:SetAllPoints(itemRow)
                        end
                        itemRow.bg:SetTexture(0.15, 0.15, 0.2)
                        itemRow.bg:SetAlpha(0.4)
                        -- Tooltip on hover (only if not using Row:SetData)
                        if not Row or not Row.SetData then
                            itemRow:SetScript("OnEnter", function(self)
                                if row.item and row.item.ItemLink then
                                    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                                    GameTooltip:SetHyperlink(row.item.ItemLink)
                                    GameTooltip:Show()
                                end
                            end)
                            itemRow:SetScript("OnLeave", function(self)
                                GameTooltip:Hide()
                            end)
                        end
                        if itemRow.SetHeight then itemRow:SetHeight(20) end
                        itemRow:Show()
                        rowIdx = rowIdx + 1
                        yOffset = yOffset - 20
                    end
                end
            end
        end
        if not anyHeaderShown then
            if not frame.attunedMsg then
                frame.attunedMsg = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                frame.attunedMsg:SetPoint("CENTER", content, "CENTER", 0, 0)
                frame.attunedMsg:SetTextColor(0.2, 1, 0.2, 1)
                frame.attunedMsg:SetJustifyH("CENTER")
                frame.attunedMsg:SetJustifyV("MIDDLE")
            end
            frame.attunedMsg:SetText("All Items Attuned!")
            frame.attunedMsg:Show()
        elseif frame.attunedMsg then
            frame.attunedMsg:Hide()
        end
        local contentHeight = -yOffset + 8
        content:SetHeight(contentHeight)
        local frameHeight = frame.scrollFrame:GetHeight()
        local scrollMax = math.max(0, contentHeight - frameHeight)
        -- Quick fix: do not call GetScrollBar() (UIPanelScrollFrameTemplate does not provide it)
        frame.scrollFrame:SetVerticalScroll(0)
    end)
end

return ZoneBrowser
