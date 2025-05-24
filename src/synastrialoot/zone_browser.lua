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
                -- On click, show remaining items to attune for this zone
                if browserFrame.itemPopup and browserFrame.itemPopup:IsShown() then
                    browserFrame.itemPopup:Hide()
                end
                -- Workaround: Set global for zone filtering, since BuildZoneLootTable only takes callback
                _G.SynastriaLoot_ZoneBrowser_ZoneName = zoneName
                BuildZoneLootTable(function(lootTable)
                    if browserFrame.itemPopup then
                        browserFrame.itemPopup:Hide()
                    end
                    local popup = browserFrame.itemPopup or CreateFrame("Frame", nil, browserFrame, "BackdropTemplate")
                    popup:SetSize(340, 380)
                    popup:SetPoint("CENTER", browserFrame, "CENTER")
                    popup:SetFrameStrata("DIALOG")
                    popup:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", edgeFile = "Interface/Tooltips/UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 16, insets = { left = 4, right = 4, top = 4, bottom = 4 }})
                    popup:SetBackdropColor(0.1, 0.1, 0.2, 0.95)
                    if not popup.title then
                        popup.title = popup:CreateFontString(nil, "OVERLAY", "GameFontHighlightLarge")
                        popup.title:SetPoint("TOP", 0, -10)
                        popup.closeBtn = CreateFrame("Button", nil, popup, "UIPanelCloseButton")
                        popup.closeBtn:SetPoint("TOPRIGHT", -4, -4)
                        popup.closeBtn:SetScript("OnClick", function() popup:Hide() end)
                        popup.scrollFrame = CreateFrame("ScrollFrame", nil, popup, "UIPanelScrollFrameTemplate")
                        popup.scrollFrame:SetPoint("TOPLEFT", 12, -36)
                        popup.scrollFrame:SetPoint("BOTTOMRIGHT", -28, 12)
                        popup.content = CreateFrame("Frame", nil, popup)
                        popup.content:SetSize(300, 1)
                        popup.scrollFrame:SetScrollChild(popup.content)
                    end
                    popup.title:SetText("Items to Attune for "..zoneName)
                    -- Remove previous
                    for _, child in ipairs({popup.content:GetChildren()}) do child:Hide() end
                    local y = 0
                    local shown = 0
                    for _, header in ipairs(lootTable or {}) do
                        for _, row in ipairs(header.rows or {}) do
                            local link = row.item and row.item.ItemLink or (row.item and row.item.Name) or ("ItemID: "..tostring(row.itemID))
                            local fs = popup.content["item"..shown] or popup.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                            fs:SetPoint("TOPLEFT", 0, -y)
                            fs:SetWidth(280)
                            fs:SetJustifyH("LEFT")
                            fs:SetText(link)
                            fs:Show()
                            popup.content["item"..shown] = fs
                            y = y + 18
                            shown = shown + 1
                        end
                    end
                    if shown == 0 then
                        local fs = popup.content["noitems"] or popup.content:CreateFontString(nil, "OVERLAY", "GameFontNormal")
                        fs:SetPoint("TOPLEFT", 0, -y)
                        fs:SetWidth(280)
                        fs:SetJustifyH("LEFT")
                        fs:SetText("All attuned! No items remain.")
                        fs:Show()
                        popup.content["noitems"] = fs
                        y = y + 18
                    end
                    popup.content:SetHeight(y+10)
                    popup:Show()
                    browserFrame.itemPopup = popup
                end)
            end)
        end
        btn:SetText(zoneName)
        btn:SetPoint("TOPLEFT", 0, y)
        btn:Show()
        content.rows[i] = btn
        y = y - ROW_HEIGHT - ROW_PADDING
    end
end

-- Optional: Hide browser on ESC
local orig_Escape = _G["StaticPopup_EscapePressed"]
if type(hooksecurefunc) == "function" then
    hooksecurefunc("StaticPopup_EscapePressed", function()
        if browserFrame and browserFrame:IsShown() then
            browserFrame:Hide()
        end
    end)
end

-- Optional: Expose to global
_G.SynastriaLoot_ShowZoneBrowser = SynastriaLoot_ShowZoneBrowser
_G.SynastriaLoot_HideZoneBrowser = SynastriaLoot_HideZoneBrowser
