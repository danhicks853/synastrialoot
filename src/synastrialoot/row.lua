-- row.lua
-- Row component for SynastriaLoot UI refactor

local Row = {}
_G.SynastriaLoot_Row = Row

function Row:Create(parent)
    local row
    if UIPanelButtonTemplate then
        row = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    else
        row = CreateFrame("Button", nil, parent)
    end
    row:RegisterForClicks("AnyUp")
    row:EnableMouse(true)
    row:SetHeight(26)
    row:SetPoint("LEFT", parent, "LEFT", 0, 0)
    row:SetPoint("RIGHT", parent, "RIGHT", 0, 0)
    row.bg = row:CreateTexture(nil, "BACKGROUND")
    row.bg:SetAllPoints(row)

    row.text = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    row.text:SetPoint("LEFT", 20, 0)
    row.text:SetPoint("RIGHT", -8, 0)
    row:SetFrameStrata("MEDIUM")
    row.bg:SetDrawLayer("BACKGROUND", 0)
    row.text:SetDrawLayer("OVERLAY", 7)
    row.text:SetParent(row)
    row.text:SetJustifyH("LEFT")
    row.text:SetWordWrap(false)
    row.text:SetNonSpaceWrap(false)
    row:Hide()
    -- Tooltip support
    row:SetScript("OnEnter", function(self)
        self.bg:SetTexture(1, 0.8, 0, 0.5) -- gold highlight
        local tooltip = _G.GameTooltip
        tooltip:SetOwner(self, "ANCHOR_RIGHT")
        if self.data and self.data.itemID then
            if tooltip.SetItemByID then
                tooltip:SetItemByID(self.data.itemID)
            elseif tooltip.SetHyperlink then
                local itemLink = "item:" .. tostring(self.data.itemID)
                tooltip:SetHyperlink(itemLink)
            end
        else
            tooltip:SetText("Test Tooltip: No itemID")
        end
        tooltip:Show()
    end)
    row:SetScript("OnLeave", function(self)
        self.bg:SetTexture(nil) -- clear highlight
        local tooltip = _G.GameTooltip
        if tooltip then tooltip:Hide() end
    end)
    return row
end

function Row:SetData(row, data)
    row.data = data
    local text = data.text or ""
    if data.status == "looted" then
        row.text:SetText(text .. " - Looted!")
        row.text:SetTextColor(0, 1, 0, 1) -- green
        row:Show()
    elseif data.status == "equipped" then
        row.text:SetText(text .. " - Attuning")
        row.text:SetTextColor(1, 1, 0, 1) -- yellow
        row:Show()
    elseif data.status == "attuned" then
        row:Hide()
    else
        row.text:SetText(text)
        row.text:SetTextColor(1, 1, 1, 1) -- white
        row:Show()
    end
    row.text:SetAlpha(1)
end

return Row
