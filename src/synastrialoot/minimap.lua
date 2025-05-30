-- minimap.lua
-- Minimap button for SynastriaLoot UI refactor

local Minimap = {}
_G.SynastriaLoot_Minimap = Minimap

function Minimap:Create()
    local ldb = LibStub and LibStub("LibDataBroker-1.1", true)
    local dbicon = LibStub and LibStub("LibDBIcon-1.0", true)
    local ADDON_NAME = "SynastriaLoot"
    local ICON_PATH = "Interface/ICONS/INV_Misc_Gem_Pearl_06"
    local MINIMAP_BUTTON_NAME = "SynastriaLootMinimapButton"

    local dataobj = ldb:NewDataObject(MINIMAP_BUTTON_NAME, {
        type = "data source",
        text = ADDON_NAME,
        icon = ICON_PATH,
        OnClick = function(self, button)
            if button == "LeftButton" then
                if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.frame and SynastriaLoot_MainFrame.frame:IsShown() then
                    _G.SynastriaLoot_ManuallyClosed = true
                    SynastriaLoot_MainFrame:Hide()
                elseif SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.Show then
                    _G.SynastriaLoot_ManuallyClosed = false
                    SynastriaLoot_MainFrame:Show()
                    SynastriaLoot_MainFrame:RefreshLoot()
                end
            end
        end,
        OnTooltipShow = function(tooltip)
            tooltip:AddLine(ADDON_NAME)
            tooltip:AddLine("Left-click to open/close the loot frame.")
        end,
    })
    dbicon:Register(MINIMAP_BUTTON_NAME, dataobj, { hide = false })
end

return Minimap
