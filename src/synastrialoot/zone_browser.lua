-- SynastriaLoot Zone Browser UI
-- This module provides a browsable UI for all zones with attunement stats

local ZONE_BROWSER_WIDTH = 500
local ZONE_BROWSER_HEIGHT = 500
local ROW_HEIGHT = 36
local ROW_PADDING = 6
local FONT = "GameFontNormal"

local ZoneBrowser = {}
local browserFrame

-- Forward declaration for external access
function SynastriaLoot_ShowZoneBrowser()
    if not browserFrame then
        ZoneBrowser:CreateFrame()
    end
    ZoneBrowser:Populate()
    browserFrame:Show()
end

function SynastriaLoot_HideZoneBrowser()
    if browserFrame then
        browserFrame:Hide()
    end
end

function ZoneBrowser:CreateFrame()
    browserFrame = CreateFrame("Frame", "SynastriaLoot_ZoneBrowserFrame", UIParent)
    browserFrame:SetSize(ZONE_BROWSER_WIDTH, ZONE_BROWSER_HEIGHT)
    browserFrame:SetPoint("CENTER")
    browserFrame:SetFrameStrata("DIALOG")
    browserFrame:SetMovable(true)
    browserFrame:EnableMouse(true)
    browserFrame:RegisterForDrag("LeftButton")
    browserFrame:SetScript("OnDragStart", browserFrame.StartMoving)
    browserFrame:SetScript("OnDragStop", browserFrame.StopMovingOrSizing)
    browserFrame:SetBackdrop({
        bgFile = "Interface/Tooltips/UI-Tooltip-Background",
        edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
        tile = true, tileSize = 16, edgeSize = 16,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    browserFrame:SetBackdropColor(0.1, 0.1, 0.2, 0.95)

    -- Title
    local title = browserFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
    title:SetPoint("TOP", 0, -12)
    title:SetText("SynastriaLoot: Zone Browser")

    -- Close button
    local closeBtn = CreateFrame("Button", nil, browserFrame, "UIPanelCloseButton")
    closeBtn:SetPoint("TOPRIGHT", -4, -4)
    closeBtn:SetScript("OnClick", SynastriaLoot_HideZoneBrowser)

    -- ScrollFrame
    local scrollFrame = CreateFrame("ScrollFrame", "SynastriaLoot_ZoneBrowserScrollFrame", browserFrame, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", 16, -40)
    scrollFrame:SetPoint("BOTTOMRIGHT", -30, 16)

    local content = CreateFrame("Frame", nil, scrollFrame)
    content:SetSize(ZONE_BROWSER_WIDTH-48, 1) -- width, height will auto-expand
    scrollFrame:SetScrollChild(content)
    browserFrame.scrollFrame = scrollFrame
    browserFrame.content = content
end

function ZoneBrowser:ClearRows()
    if not browserFrame or not browserFrame.content.rows then return end
    for _, row in ipairs(browserFrame.content.rows) do
        row:Hide()
    end
end

function ZoneBrowser:Populate()
    if not browserFrame then return end
    local content = browserFrame.content
    if not content.rows then content.rows = {} end
    self:ClearRows()

    -- Defensive: Check Synastria_LootTableRegister and Synastria_Data
    if not Synastria_LootTableRegister or not Synastria_LootTableRegister["Instances"] or not Synastria_Data then
        if content.noSLGMsg then
            content.noSLGMsg:Show()
        else
            content.noSLGMsg = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
            content.noSLGMsg:SetPoint("TOP", 0, -40)
            content.noSLGMsg:SetText("Zone data not loaded. Please reload UI or check addon load order.")
            content.noSLGMsg:SetTextColor(1, 0.4, 0.4)
        end
        -- Hide any rows
        ZoneBrowser:ClearRows()
        return
    end
    if content.noSLGMsg then content.noSLGMsg:Hide() end

    -- Gather zone data asynchronously
    local zoneStats = {}
    local zoneNames = {}
    -- Use Synastria_LootTableRegister["Instances"] for zone names
    for zoneName, _ in pairs(Synastria_LootTableRegister and Synastria_LootTableRegister["Instances"] or {}) do
        table.insert(zoneNames, zoneName)
    end
    if #zoneNames == 0 then return end
    -- Show loading message
    if not content.loadingMsg then
        content.loadingMsg = content:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
        content.loadingMsg:SetPoint("TOP", 0, -40)
        content.loadingMsg:SetText("Loading zone statistics...")
        content.loadingMsg:SetTextColor(1, 0.8, 0.2)
    end
    content.loadingMsg:Show()
    ZoneBrowser:ClearRows()
    local i = 1
    local function processNextZone()
        if i > #zoneNames then
            -- All done, sort and update UI
            table.sort(zoneStats, function(a, b) return a.percent > b.percent end)
            local y = -ROW_PADDING
            for idx, stats in ipairs(zoneStats) do
                local row = content.rows[idx]
                if not row then
                    row = CreateFrame("Frame", nil, content)
                    row:SetSize(ZONE_BROWSER_WIDTH-48, ROW_HEIGHT)
                    row.bg = row:CreateTexture(nil, "BACKGROUND")
                    row.bg:SetAllPoints()
                    row.bg:SetColorTexture(0.2, 0.2, 0.3, (idx%2==0) and 0.3 or 0.15)
                    row.zoneName = row:CreateFontString(nil, "OVERLAY", FONT)
                    row.zoneName:SetPoint("LEFT", 8, 0)
                    row.zoneName:SetWidth(170)
                    row.zoneName:SetJustifyH("LEFT")
                    row.progressBar = CreateFrame("StatusBar", nil, row)
                    row.progressBar:SetPoint("LEFT", row.zoneName, "RIGHT", 10, 0)
                    row.progressBar:SetSize(120, 18)
                    row.progressBar:SetStatusBarTexture("Interface/TargetingFrame/UI-StatusBar")
                    row.progressBar:GetStatusBarTexture():SetHorizTile(false)
                    row.progressBar:SetMinMaxValues(0, 100)
                    row.progressBar:SetValue(0)
                    row.percentText = row:CreateFontString(nil, "OVERLAY", FONT)
                    row.percentText:SetPoint("LEFT", row.progressBar, "RIGHT", 10, 0)
                    row.percentText:SetWidth(60)
                    row.percentText:SetJustifyH("LEFT")
                    row.countText = row:CreateFontString(nil, "OVERLAY", FONT)
                    row.countText:SetPoint("LEFT", row.percentText, "RIGHT", 10, 0)
                    row.countText:SetWidth(80)
                    row.countText:SetJustifyH("LEFT")
                    row:SetScript("OnEnter", function(self)
                        GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
                        GameTooltip:AddLine(stats.zoneName)
                        GameTooltip:AddLine("Attuned: "..stats.zoneAttuned.."/"..stats.zoneEligible)
                        GameTooltip:AddLine("Click to view details (future)", 0.7, 0.7, 0.7)
                        GameTooltip:Show()
                    end)
                    row:SetScript("OnLeave", function() GameTooltip:Hide() end)
                    row:SetScript("OnMouseUp", function() 
                        -- Placeholder for future zone detail popup
                    end)
                    content.rows[idx] = row
                end
                row:Show()
                row:SetPoint("TOPLEFT", 0, y)
                row.zoneName:SetText(stats.zoneName)
                row.progressBar:SetValue(stats.percent)
                row.percentText:SetText(stats.percent.."%")
                row.countText:SetText(stats.zoneAttuned.."/"..stats.zoneEligible)
                if stats.percent == 100 then
                    row.progressBar:SetStatusBarColor(0.2, 0.8, 0.2)
                elseif stats.percent >= 50 then
                    row.progressBar:SetStatusBarColor(0.8, 0.8, 0.2)
                else
                    row.progressBar:SetStatusBarColor(0.8, 0.3, 0.2)
                end
                y = y - (ROW_HEIGHT + ROW_PADDING)
            end
            content:SetHeight(-y + ROW_PADDING)
            if content.loadingMsg then content.loadingMsg:Hide() end
            return
        end
        local zoneName = zoneNames[i]
        print("[ZoneBrowser] Processing zone", i, zoneName)
        ZoneBrowser:GetZoneStats(zoneName, function(stats)
            if stats then
                table.insert(zoneStats, stats)
            end
            i = i + 1
            C_Timer.After(0, processNextZone)
        end)
    end
    processNextZone()

end

-- Returns: zoneEligible, zoneAttuned
function ZoneBrowser:GetZoneItems(zoneName, callback)
    print("[ZoneBrowser:GetZoneItems] Start for zone:", zoneName)
    -- Use GetZoneLootData to get bosses/items for this zone
    GetZoneLootData(function(zoneData)
        if not zoneData or not zoneData.bosses then print("[ZoneBrowser:GetZoneItems] No data for", zoneName); callback(0, 0); return end
        local allItemIDs = {}
        for _, boss in ipairs(zoneData.bosses) do
            if boss.items then
                for _, itemID in ipairs(boss.items) do
                    table.insert(allItemIDs, itemID)
                end
            end
        end
        print("[ZoneBrowser:GetZoneItems] ", zoneName, "total items:", #allItemIDs)
        if #allItemIDs == 0 then callback(0, 0); return end
        local zoneEligible, zoneAttuned = 0, 0
        local pending = #allItemIDs
        for _, itemID in ipairs(allItemIDs) do
            GetItemInfoObject(itemID, function(item)
                print("[ZoneBrowser:GetZoneItems] Processing item", itemID, item and item.CanAttune, item and item.AttuneProgress)
                if item and item.CanAttune == 1 then
                    zoneEligible = zoneEligible + 1
                    if item.AttuneProgress and item.AttuneProgress >= 100 then
                        zoneAttuned = zoneAttuned + 1
                    end
                else
                    if item then
                        print("[ZoneBrowser:GetZoneItems] Unattunable or unknown item:", itemID, "table:", (item and (type(item) == "table") and table.concat({"Name:", item.Name, "Link:", item.ItemLink, "Type:", item.Type, "CanAttune:", tostring(item.CanAttune), "AttuneProgress:", tostring(item.AttuneProgress)}, ", ") or tostring(item)))
                    end
                end
                pending = pending - 1
                if pending == 0 then
                    print("[ZoneBrowser:GetZoneItems] Done for", zoneName, "Eligible:", zoneEligible, "Attuned:", zoneAttuned)
                    callback(zoneEligible, zoneAttuned)
                end
            end)
        end
    end, zoneName)
end

function ZoneBrowser:GetZoneStats(zoneName, callback)
    self:GetZoneItems(zoneName, function(zoneEligible, zoneAttuned)
        if not zoneEligible or zoneEligible == 0 then callback(nil); return end
        local percent = math.floor(100 * (zoneAttuned or 0) / math.max(zoneEligible, 1))
        callback({
            zoneName = zoneName,
            zoneAttuned = zoneAttuned or 0,
            zoneEligible = zoneEligible or 0,
            percent = percent,
        })
    end)
end

-- Optional: Hide browser on ESC
local orig_Escape = _G["StaticPopup_EscapePressed"]
hooksecurefunc("StaticPopup_EscapePressed", function()
    if browserFrame and browserFrame:IsShown() then
        browserFrame:Hide()
    end
end)

-- Optional: Expose to global
_G.SynastriaLoot_ShowZoneBrowser = SynastriaLoot_ShowZoneBrowser
_G.SynastriaLoot_HideZoneBrowser = SynastriaLoot_HideZoneBrowser
