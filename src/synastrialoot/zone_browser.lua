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
        ZoneBrowser:ClearRows()
        return
    end
    if content.noSLGMsg then content.noSLGMsg:Hide() end

    ZoneBrowser:ClearRows()
    if content.loadingMsg then content.loadingMsg:Hide() end

    local zoneNames = {}
    for zoneName, _ in pairs(Synastria_LootTableRegister["Instances"]) do
        table.insert(zoneNames, zoneName)
    end
    table.sort(zoneNames)
    local y = -ROW_PADDING
    for i, zoneName in ipairs(zoneNames) do
        local btn = content.rows[i]
        if not btn then
            btn = CreateFrame("Button", nil, content, "UIPanelButtonTemplate")
            btn:SetSize(ZONE_BROWSER_WIDTH-48, ROW_HEIGHT)
            btn:SetScript("OnClick", function(self)
                -- Placeholder for future zone detail popup
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
