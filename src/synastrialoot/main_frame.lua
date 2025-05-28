-- main_frame.lua
-- Main addon frame for SynastriaLoot UI refactor

local MainFrame = {}
_G.SynastriaLoot_MainFrame = MainFrame
MainFrame.attunedMsg = nil

local frame

function MainFrame:Create()
    if not frame then
        frame = CreateFrame("Frame", "SynastriaLootFrame", UIParent)
        if SynastriaLootFrameSettings then
            frame:ClearAllPoints()
            frame:SetPoint(
                SynastriaLootFrameSettings.point or "CENTER",
                UIParent,
                SynastriaLootFrameSettings.relPoint or "CENTER",
                SynastriaLootFrameSettings.xOfs or 0,
                SynastriaLootFrameSettings.yOfs or 0
            )
            frame:SetWidth(SynastriaLootFrameSettings.width or 250)
            frame:SetHeight(SynastriaLootFrameSettings.height or 350)
        else
            frame:SetSize(250, 350)
            frame:SetPoint("CENTER")
        end
        frame:SetMovable(true)
        frame:EnableMouse(true)
        frame:RegisterForDrag("LeftButton")
        frame:SetScript("OnDragStart", frame.StartMoving)
        frame:SetScript("OnDragStop", function(self)
            self:StopMovingOrSizing()
            if not SynastriaLootFrameSettings then SynastriaLootFrameSettings = {} end
            local point, _, relPoint, xOfs, yOfs = self:GetPoint()
            SynastriaLootFrameSettings.point = point
            SynastriaLootFrameSettings.relPoint = relPoint
            SynastriaLootFrameSettings.xOfs = xOfs
            SynastriaLootFrameSettings.yOfs = yOfs
            SynastriaLootFrameSettings.width = self:GetWidth()
            SynastriaLootFrameSettings.height = self:GetHeight()
        end)
        frame:SetScript("OnSizeChanged", function(self)
            if not SynastriaLootFrameSettings then SynastriaLootFrameSettings = {} end
            local point, _, relPoint, xOfs, yOfs = self:GetPoint()
            SynastriaLootFrameSettings.point = point
            SynastriaLootFrameSettings.relPoint = relPoint
            SynastriaLootFrameSettings.xOfs = xOfs
            SynastriaLootFrameSettings.yOfs = yOfs
            SynastriaLootFrameSettings.width = self:GetWidth()
            SynastriaLootFrameSettings.height = self:GetHeight()
        end)
        frame:SetScript("OnHide", function(self)
            if not SynastriaLootFrameSettings then SynastriaLootFrameSettings = {} end
            local point, _, relPoint, xOfs, yOfs = self:GetPoint()
            SynastriaLootFrameSettings.point = point
            SynastriaLootFrameSettings.relPoint = relPoint
            SynastriaLootFrameSettings.xOfs = xOfs
            SynastriaLootFrameSettings.yOfs = yOfs
            SynastriaLootFrameSettings.width = self:GetWidth()
            SynastriaLootFrameSettings.height = self:GetHeight()
        end)
        frame:SetResizable(true)
        frame:SetMinResize(200, 300)
        frame:SetMaxResize(900, 700)
        frame:SetBackdrop({
            bgFile = "Interface/Tooltips/UI-Tooltip-Background",
            edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
            tile = true,
            tileSize = 16,
            edgeSize = 16,
            insets = { left = 4, right = 4, top = 4, bottom = 4 }
        })
        frame:SetBackdropColor(0.08, 0.08, 0.18, 0.95)
        frame:Hide()

        -- Instance name label at the top
        local instanceLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        instanceLabel:SetPoint("TOP", frame, "TOP", 0, -12)
        instanceLabel:SetText("")
        frame.instanceLabel = instanceLabel

        -- Close button (template fallback for Classic)
        local closeBtn
        if pcall(function() return CreateFrame("Button", nil, frame, "UIPanelCloseButton") end) then
            closeBtn = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
        else
            closeBtn = CreateFrame("Button", nil, frame)
        end
        closeBtn:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -4, -4)
        closeBtn:SetScript("OnClick", function() frame:Hide() end)

        -- Resize handle (bottom right)
        local resizeBtn = CreateFrame("Button", nil, frame)
        resizeBtn:SetSize(16, 16)
        resizeBtn:SetPoint("BOTTOMRIGHT", -2, 2)
        resizeBtn:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
        resizeBtn:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
        resizeBtn:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
        resizeBtn:SetScript("OnMouseDown", function() frame:StartSizing("BOTTOMRIGHT") end)
        resizeBtn:SetScript("OnMouseUp", function() frame:StopMovingOrSizing() end)
        local scrollFrame = CreateFrame("ScrollFrame", nil, frame)
        scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 1, -40)
        scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -28, 20)
        scrollFrame:EnableMouseWheel(true)

        -- Create a vertical scrollbar
        local scrollBar = CreateFrame("Slider", nil, scrollFrame, "UIPanelScrollBarTemplate")
        scrollBar:SetPoint("TOPLEFT", scrollFrame, "TOPRIGHT", 4, -16)
        scrollBar:SetPoint("BOTTOMLEFT", scrollFrame, "BOTTOMRIGHT", 4, 16)
        scrollBar:SetMinMaxValues(0, 0)
        scrollBar:SetValueStep(1)
        scrollBar:SetValue(0)
        scrollBar:SetWidth(16)
        scrollFrame.scrollBar = scrollBar

        local content = CreateFrame("Frame", nil, scrollFrame)
        content:SetSize(400, 1) -- Set explicit width for row stretching
        content:SetWidth(400)
        scrollFrame:SetScrollChild(content)
        frame.scrollFrame = scrollFrame
        frame.content = content

        -- Scroll handling
        scrollBar:SetScript("OnValueChanged", function(self, value)
            scrollFrame:SetVerticalScroll(value)
        end)
        scrollFrame:SetScript("OnMouseWheel", function(self, delta)
            local min, max = scrollBar:GetMinMaxValues()
            local cur = scrollBar:GetValue()
            if delta > 0 then
                scrollBar:SetValue(math.max(cur - 20, min))
            else
                scrollBar:SetValue(math.min(cur + 20, max))
            end
        end)

        -- Stubs for loot table population and header toggling
        MainFrame._collapsedHeaders = MainFrame._collapsedHeaders or {}
        local Row = _G.SynastriaLoot_Row

        function MainFrame:RefreshLoot()
            local savedPos = 0
            if frame.scrollFrame then
                savedPos = frame.scrollFrame:GetVerticalScroll()
            end
            local content = self.frame and self.frame.content
            if not content then return end
            -- Get lootTable data
            if not BuildZoneLootTable then
                return
            end
            BuildZoneLootTable(function(lootTable)
                if not lootTable then
                    -- Hide all previous headers and rows
                    for _, header in ipairs(MainFrame.headerPool or {}) do header:Hide() end
                    for _, row in ipairs(MainFrame.rowPool or {}) do row:Hide() end
                    -- Update zone label to current zone
                    if frame and frame.instanceLabel then
                        local zoneName = GetZoneText and GetZoneText() or ""
                        frame.instanceLabel:SetText(zoneName)
                    end
                    -- Show a centered message
                    local parentFrame = self.frame or frame or content
                    if not MainFrame.zoneNotImplementedMsg then
                        MainFrame.zoneNotImplementedMsg = parentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                        MainFrame.zoneNotImplementedMsg:SetPoint("CENTER", parentFrame, "CENTER", 0, 0)
                        MainFrame.zoneNotImplementedMsg:SetTextColor(1, 0.3, 0.3, 1)
                        MainFrame.zoneNotImplementedMsg:SetJustifyH("CENTER")
                        MainFrame.zoneNotImplementedMsg:SetJustifyV("MIDDLE")
                    end
                    MainFrame.zoneNotImplementedMsg:SetText("Zone Not Yet Implemented!")
                    MainFrame.zoneNotImplementedMsg:Show()
                    if MainFrame.attunedMsg then MainFrame.attunedMsg:Hide() end
                    return
                end
                if MainFrame.zoneNotImplementedMsg then MainFrame.zoneNotImplementedMsg:Hide() end
                -- Set instance name label using client API (GetRealZoneText or GetInstanceInfo)
                if frame.instanceLabel then
                    local instanceName = ""
                    if GetRealZoneText then
                        instanceName = GetRealZoneText()
                    elseif GetInstanceInfo then
                        local name = GetInstanceInfo()
                        if name then instanceName = name end
                    end
                    if instanceName and instanceName ~= "" then
                        frame.instanceLabel:SetText(instanceName)
                    else
                        frame.instanceLabel:SetText("")
                    end
                end
                -- Populate loot table UI
                local yOffset = -12
                local anyHeaderShown = false
                -- Frame pools for headers and rows
                MainFrame.headerPool = MainFrame.headerPool or {}
                MainFrame.rowPool = MainFrame.rowPool or {}
                -- Hide all headers/rows in pool
                for _, header in ipairs(MainFrame.headerPool) do header:Hide() end
                for _, row in ipairs(MainFrame.rowPool) do row:Hide() end
                local headerIdx = 1
                local rowIdx = 1
                for hIdx, header in ipairs(lootTable) do
                    -- Only show header if it has at least one attunable row
                    if header.rows and #header.rows > 0 then
                        anyHeaderShown = true
                        -- Get or create header button
                        local headerBtn = MainFrame.headerPool[headerIdx]
                        if not headerBtn then
                            headerBtn = CreateFrame("Button", nil, content)
                            headerBtn.text = headerBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                            headerBtn.text:SetDrawLayer("OVERLAY", 7)
                            headerBtn.text:SetParent(headerBtn)
                            headerBtn:SetFrameStrata("MEDIUM")
                            headerBtn.text:SetPoint("LEFT", 28, 0) -- Make space for collapse button
                            headerBtn:EnableMouse(true)
                            headerBtn:RegisterForClicks("AnyUp")
                            headerBtn.bg = headerBtn:CreateTexture(nil, "BACKGROUND")
                            headerBtn.bg:SetAllPoints(headerBtn)
                            headerBtn:SetScript("OnEnter", function(self)
                                self.bg:SetTexture(0.4, 0.65, 1, 0.5)
                            end)
                            headerBtn:SetScript("OnLeave", function(self)
                                self.bg:SetTexture(nil)
                            end)
                            MainFrame.headerPool[headerIdx] = headerBtn
                        end
                        headerBtn:SetParent(content)
                        headerBtn:SetHeight(20)
                        headerBtn:SetPoint("TOPLEFT", content, "TOPLEFT", 1, yOffset)
                        headerBtn:SetPoint("RIGHT", content, "RIGHT", 0, 0)
                        headerBtn:SetFrameStrata("HIGH")
                        headerBtn:SetFrameLevel(content:GetFrameLevel() + 10)
                        local headerText = header.text
                        if headerText == nil then
                            headerText = "Boss " .. tostring(hIdx)
                        end
                        -- Create or reuse collapse button to the left of header text
                        if not headerBtn.collapseBtn then
                            local collapseBtn = CreateFrame("Button", nil, headerBtn)
                            collapseBtn:SetSize(20, 20)
                            collapseBtn:SetPoint("LEFT", headerBtn, "LEFT", 0, 0)
                            collapseBtn.text = collapseBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                            collapseBtn.text:SetAllPoints()
                            collapseBtn:SetFrameStrata("HIGH")
                            collapseBtn:SetScript("OnClick", function(self)
                                MainFrame:ToggleHeader(headerBtn, hIdx)
                            end)
                            collapseBtn:SetScript("OnEnter", function(self)
                                self:GetParent().bg:SetTexture(0.4, 0.65, 1, 0.5)
                            end)
                            collapseBtn:SetScript("OnLeave", function(self)
                                self:GetParent().bg:SetTexture(nil)
                            end)
                            headerBtn.collapseBtn = collapseBtn
                        end
                        local collapseBtn = headerBtn.collapseBtn
                        local collapsed = MainFrame._collapsedHeaders[hIdx]
                        collapseBtn.text:SetText(collapsed and "+" or "–")
                        collapseBtn:Show()
                        headerBtn.text:SetText(tostring(headerText))
                        headerBtn:SetScript("OnClick", function(self)
                            -- Only send .findnpc NAME to chat; do not collapse/expand
                            local headerName = tostring(headerText):gsub("^[-+]%s*", ""):gsub("%s*%([Rr]are%)$", "")
                            if headerName and headerName ~= "" then
                                SendChatMessage(".findnpc " .. headerName, "SAY")
                            end
                        end)
                        headerBtn:Show()
                        headerIdx = headerIdx + 1
                        yOffset = yOffset - 24
                        local rows = header.rows or {}
                        if not MainFrame._collapsedHeaders[hIdx] then
                            for _, row in ipairs(rows) do
                                local itemID = row.itemID
                                -- Attunement check MUST be first and skip row if attuned
                                local isAttuned = false
                                if Items and Items.GetItemAttuneStats then
                                    local attune = Items:GetItemAttuneStats(itemID, row.item and row.item.Link)
                                    if attune and attune.AttuneProgress and attune.AttuneProgress >= 1 then
                                        isAttuned = true
                                    end
                                end
                                if not isAttuned then
                                    local status = nil
                                    if row.looted or (_G.SynastriaLoot_LootedItemIDs and _G.SynastriaLoot_LootedItemIDs[itemID]) then
                                        status = "looted"
                                    end
                                    if _G.SynastriaLoot_EquippedItems and _G.SynastriaLoot_EquippedItems[itemID] then
                                        status = "Attuning"
                                    end
                                    -- Get or create row
                                    local itemRow = MainFrame.rowPool[rowIdx]
                                    if not itemRow then
                                        itemRow = Row:Create(content)
                                        MainFrame.rowPool[rowIdx] = itemRow
                                    end
                                    itemRow:SetParent(content)
                                    itemRow:SetPoint("TOPLEFT", content, "TOPLEFT", 6, yOffset)
                                    itemRow:SetPoint("RIGHT", content, "RIGHT", 0, 0)
                                    local itemText = (row.item and row.item.Name) or row.itemID or "?"
                                    itemText = tostring(itemText)
                                    Row:SetData(itemRow, { text = itemText, itemID = itemID, status = status })
                                    if itemRow.SetHeight then itemRow:SetHeight(20) end
                                    itemRow:Show()
                                    rowIdx = rowIdx + 1
                                    yOffset = yOffset - 20
                                end
                            end
                        end
                    end
                    -- If header.rows is empty, do not create a header button or any rows
                end
                -- Hide 'All Items Attuned!' message if it exists and there are items to show
                if MainFrame.attunedMsg then
                    MainFrame.attunedMsg:Hide()
                end
                if not anyHeaderShown then
                    local parentFrame = self.frame or frame or content
                    if not MainFrame.attunedMsg then
                        MainFrame.attunedMsg = parentFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
                        MainFrame.attunedMsg:SetPoint("CENTER", parentFrame, "CENTER", 0, 0)
                        MainFrame.attunedMsg:SetTextColor(0.2, 1, 0.2, 1)
                        MainFrame.attunedMsg:SetJustifyH("CENTER")
                        MainFrame.attunedMsg:SetJustifyV("MIDDLE")
                    end
                    MainFrame.attunedMsg:SetText("All Items Attuned!")
                    MainFrame.attunedMsg:Show()
                end
                local contentHeight = -yOffset + 8
                content:SetHeight(contentHeight)
                local frameHeight = scrollFrame:GetHeight()
                local scrollMax = math.max(0, contentHeight - frameHeight)
                scrollBar:SetMinMaxValues(0, scrollMax)
                -- Reset scroll to top only when entering a new zone
                MainFrame.lastZoneName = MainFrame.lastZoneName or nil
                local currentZone = GetRealZoneText and GetRealZoneText() or GetZoneText()
                if MainFrame.lastZoneName ~= currentZone then
                    savedPos = 0
                end
                MainFrame.lastZoneName = currentZone
                if not savedPos then savedPos = 0 end
                if savedPos > scrollMax then savedPos = scrollMax end
                frame.scrollFrame:SetVerticalScroll(savedPos)
                -- Robustly reset scroll position again on the next frame (fixes timing/layout issues)
                frame.scrollFrame:SetScript("OnUpdate", function(self)
                    self:SetVerticalScroll(savedPos)
                    self:SetScript("OnUpdate", nil)
                end)
            end)
        end

        function MainFrame:ToggleHeader(headerFrame, headerIndex)
            MainFrame._collapsedHeaders[headerIndex] = not MainFrame._collapsedHeaders[headerIndex]
            MainFrame:RefreshLoot()
        end

        self.frame = frame
        return frame
    end
    frame.scrollFrame = scrollFrame
    frame.content = content
end

function MainFrame:Show()
    if not self.frame then self:Create() end
    self.frame:Show()
    self:RefreshLoot()
end

function MainFrame:Hide()
    if self.frame then self.frame:Hide() end
end

return MainFrame
