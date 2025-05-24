--#region Setup
-----------------
--- Constants ---
-----------------
AL = AL or setmetatable({}, { __index = function(t, k) return k end })
Synastria_Data = Synastria_Data or {}
local eventFrame = CreateFrame("Frame")
local eventHandlers = {}

function RegisterEvent(event, handler)
    eventFrame:RegisterEvent(event)
    eventHandlers[event] = handler
end

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if eventHandlers[event] then
        eventHandlers[event](...)
    end
end)

Items = Items or {}

-- Helper: Build a set of tracked itemIDs from global tracked list
local function GetTrackedItemSet()
    local tracked = {}
    if _G.SynastriaLoot_TrackedItemIDs then
        for _, itemID in ipairs(_G.SynastriaLoot_TrackedItemIDs) do
            tracked[itemID] = true
        end
    end
    return tracked
end

----------------------
--- Util Functions ---
----------------------
function DumpTable(tbl, indent)
    indent = indent or 0
    local indentStr = string.rep("  ", indent)
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            DEFAULT_CHAT_FRAME:AddMessage(indentStr .. tostring(k) .. " = {")
            DumpTable(v, indent + 1)
            DEFAULT_CHAT_FRAME:AddMessage(indentStr .. "}")
        else
            DEFAULT_CHAT_FRAME:AddMessage(indentStr .. tostring(k) .. " = " .. tostring(v))
        end
    end
end
-- Returns zone loot data as an object: { zoneText, internalKey, bosses = { { bossKey, items={} }, ... } }
function GetZoneLootData(callback)
    GetZoneProperties(function(zoneprops)
        local zoneText = zoneprops.zoneText
        local diff = zoneprops.difficulty
        if not Synastria_LootTableRegister or not Synastria_LootTableRegister["Instances"] or not Synastria_Data then
            callback(nil)
            return
        end

        local instances = Synastria_LootTableRegister["Instances"]
        -- Robust matching: normalize both zoneText and info[1]
        local zoneAliases = {
            ["temple of atal'hakkar"] = "sunken temple",
            ["sunken temple"] = "sunken temple",
        }
        local function normalizeZoneName(name)
            local norm = name:lower():gsub("^%[%d+%]%s*", ""):gsub("^%s+", ""):gsub("%s+$", "")
            if zoneAliases[norm] then
                return zoneAliases[norm]
            end
            return norm
        end
        local zoneTextNorm = normalizeZoneName(zoneText)
        local internalKey = nil
        local scarletMonasteryWings = {
            SMGraveyard = true,
            SMLibrary = true,
            SMArmory = true,
            SMCathedral = true,
        }
        local direMaulWings = {
            DireMaulEast = true,
            DireMaulNorth = true,
            DireMaulWest = true,
        }
        local isScarletMonastery = zoneTextNorm == normalizeZoneName("Scarlet Monastery")
        local isDireMaul = zoneTextNorm == normalizeZoneName("Dire Maul")
        local isStratholme = zoneTextNorm == normalizeZoneName("Stratholme")
        local stratholmeWings = {
            StratholmeCrusader = true,
            StratholmeGauntlet = true,
        }

        if isScarletMonastery or isDireMaul or isStratholme then
            -- Aggregate all wings for Scarlet Monastery, Dire Maul, or Stratholme
            local bossesByWing = {}
            for key, tbl in pairs(instances) do
                if (isScarletMonastery and scarletMonasteryWings[key])
                  or (isDireMaul and direMaulWings[key])
                  or (isStratholme and stratholmeWings[key]) then
                    if tbl.Bosses then
                        table.insert(bossesByWing, { wingKey = key, bosses = tbl.Bosses, info = tbl.Info })
                    end
                end
            end
            local result = {
                zoneText = zoneText,
                internalKey = isScarletMonastery and "ScarletMonastery"
                    or isDireMaul and "DireMaul"
                    or isStratholme and "Stratholme"
                    or zoneText,
                bosses = {}
            }
            for _, wing in ipairs(bossesByWing) do
                for _, bossInfo in ipairs(wing.bosses) do
                    local bossKey = bossInfo[1]
                    local bossData = Synastria_Data[bossKey]
                    local items = {}
                    if bossData and bossData["Normal"] then
                        for _, group in ipairs(bossData["Normal"]) do
                            for _, itemEntry in ipairs(group) do
                                if itemEntry[2] then
                                    table.insert(items, itemEntry[2])
                                    if GetItemInfo then GetItemInfo(itemEntry[2]) end
                                end
                            end
                        end
                    end
                    table.insert(result.bosses, {
                        bossKey = bossKey,
                        items = items,
                        wing = wing.wingKey,
                        wingInfo = wing.info and wing.info[1] or wing.wingKey
                    })
                end
            end
            callback(result)
            return
        end

        -- Special case: Blackrock Spire (LBRS vs UBRS)
        if zoneTextNorm == normalizeZoneName("Blackrock Spire") then
            -- Use only instanceType to distinguish
            local instanceType = zoneprops.Type
            local key, displayName
            if instanceType == "party" then
                key = "BlackrockSpireLower"
                displayName = "Lower Blackrock Spire"
            elseif instanceType == "raid" then
                key = "BlackrockSpireUpper"
                displayName = "Upper Blackrock Spire"
            end
            local tbl = instances[key]
            if tbl and tbl.Bosses then
                local result = {
                    zoneText = displayName or zoneText,
                    internalKey = key,
                    bosses = {}
                }
                for _, bossInfo in ipairs(tbl.Bosses) do
                    local bossKey = bossInfo[1]
                    local bossData = Synastria_Data[bossKey]
                    local items = {}
                    if bossData and bossData["Normal"] then
                        for _, group in ipairs(bossData["Normal"]) do
                            for _, itemEntry in ipairs(group) do
                                if itemEntry[2] then
                                    table.insert(items, itemEntry[2])
                                    if GetItemInfo then GetItemInfo(itemEntry[2]) end
                                end
                            end
                        end
                    end
                    table.insert(result.bosses, {
                        bossKey = bossKey,
                        items = items,
                        wing = key,
                        wingInfo = displayName or key
                    })
                end
                callback(result)
                return
            end
        end
        zoneTextNorm = zoneTextNorm:gsub("^auchindoun:%s*", "")
        zoneTextNorm = zoneTextNorm:gsub("^coilfang:%s*", "")
        zoneTextNorm = zoneTextNorm:gsub("^hellfire citadel: ramparts", "hellfire ramparts")
        zoneTextNorm = zoneTextNorm:gsub("^hellfire citadel: the shattered halls", "the shattered halls")
        zoneTextNorm = zoneTextNorm:gsub("^hellfire citadel: the blood furnace", "the blood furnace")
        zoneTextNorm = zoneTextNorm:gsub("^tempest keep:%s+", "")
        zoneTextNorm = zoneTextNorm:gsub("^magister's terrace", "magisters' terrace")
        zoneTextNorm = zoneTextNorm:gsub("^the escape from durnholde", "old hillsbrad foothills")
        zoneTextNorm = zoneTextNorm:gsub("^violet hold", "the violet hold")
        if string.find(diff, "Mythic") then
            zoneTextNorm = zoneTextNorm .. "+"
        end
        -- If instanceType is 'raid', normalize Tempest Keep to 'the eye' for zoneTextNorm
        if zoneprops.Type == 'raid' then
            zoneTextNorm = zoneTextNorm:gsub("tempest keep", "the eye")
        end
        -- Default: single-table lookup
        local firstExample = nil
        for key, tbl in pairs(instances) do
            local info = tbl.Info
            if info and type(info[1]) == "string" then
                local friendlyNameNorm = normalizeZoneName(info[1])
                if not firstExample then
                    firstExample = { norm = friendlyNameNorm, key = key }
                end
                if friendlyNameNorm == zoneTextNorm then
                    internalKey = key
                    break
                end
            end
        end

        if not internalKey then
            callback(nil)
            return
        end
        local bosses = instances[internalKey].Bosses
        if not bosses then
            callback(nil)
            return
        end

        local result = {
            zoneText = zoneText,
            internalKey = internalKey,
            bosses = {}
        }
        for _, bossInfo in ipairs(bosses) do
            local bossKey = bossInfo[1]
            local bossData = Synastria_Data[bossKey]
            local items = {}
            if string.find(diff, "Heroic") then
                if bossData and bossData["Heroic"] then
                    for _, group in ipairs(bossData["Heroic"]) do
                        for _, itemEntry in ipairs(group) do
                            if itemEntry[2] then
                                table.insert(items, itemEntry[2])
                            end
                        end
                    end
                end
            elseif string.find(diff, "Mythic") then
                if bossData and bossData["Mythic"] then
                    for _, group in ipairs(bossData["Mythic"]) do
                        for _, itemEntry in ipairs(group) do
                            if itemEntry[2] then
                                table.insert(items, itemEntry[2])
                            end
                        end
                    end
                end
            elseif diff == "25Man" then
                if bossData and bossData["25Man"] then
                    for _, group in ipairs(bossData["25Man"]) do
                        for _, itemEntry in ipairs(group) do
                            if itemEntry[2] then
                                table.insert(items, itemEntry[2])
                            end
                        end
                    end
                end
            elseif string.find(diff, "25Man Heroic") then
                if bossData and bossData["25Man Heroic"] then
                    for _, group in ipairs(bossData["25Man Heroic"]) do
                        for _, itemEntry in ipairs(group) do
                            if itemEntry[2] then
                                table.insert(items, itemEntry[2])
                            end
                        end
                    end
                end
            else
                if bossData and bossData["Normal"] then
                    for _, group in ipairs(bossData["Normal"]) do
                        for _, itemEntry in ipairs(group) do
                            if itemEntry[2] then
                                table.insert(items, itemEntry[2])
                            end
                        end
                    end
                end
            end
            table.insert(result.bosses, {
                bossKey = bossKey,
                items = items
            })
        end

        callback(result)
    end)
end
function SynastriaLoot_Print(msg)
    DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00[SynastriaLoot]|r " .. tostring(msg))
end
function BuildZoneLootTable(callback)
    GetZoneLootData(function(data)
        if not data or not data.bosses then
            local zoneName = data and data.zoneText or "Unknown"
            SynastriaLoot_Print("Zone Not Yet Implemented: " .. zoneName)
            callback(nil)
            return
        end
        local lootTable = {}
        local pending = 0
        local finished = false
        local validItemCount = 0
        local headerMap = {}

        -- First, count valid items and set pending
        for bossIdx, boss in ipairs(data.bosses) do
            if boss.items and #boss.items > 0 then
                for _, itemID in ipairs(boss.items) do
                    if itemID ~= 0 then
                        validItemCount = validItemCount + 1
                    end
                end
            end
        end
        pending = validItemCount
        local function tryFinish()
            if pending == 0 and not finished then
                finished = true
                for _, headerEntry in ipairs(lootTable) do
                    local filteredRows = {}
                    for _, row in ipairs(headerEntry.rows) do
                        if row.item.CanAttune == 1 and row.item.AttuneProgress ~= 100 then
                            table.insert(filteredRows, row)
                        end
                    end
                    headerEntry.rows = filteredRows
                end
                -- Build persistent tracked itemIDs table
                _G.SynastriaLoot_CurrentLootTable = lootTable
                _G.SynastriaLoot_TrackedItemIDs = {}
                for _, header in ipairs(lootTable) do
                    for _, row in ipairs(header.rows or {}) do
                        table.insert(_G.SynastriaLoot_TrackedItemIDs, row.itemID)
                    end
                end
                
                for i, header in ipairs(lootTable) do
                    
                    for _, row in ipairs(header.rows or {}) do
                        
                    end
                end
                callback(lootTable)
            end
        end
        for bossIdx, boss in ipairs(data.bosses) do
            local bossKey = boss.bossKey or boss.name or "(unknown boss)"
            local bossDisplay = bossKey
            if _G["Synastria_Data"] and _G["Synastria_Data"][bossKey] and _G["Synastria_Data"][bossKey].info and _G["Synastria_Data"][bossKey].info.name then
                bossDisplay = _G["Synastria_Data"][bossKey].info.name
            elseif _G["BabbleBoss"] and _G["BabbleBoss"][bossKey] then
                bossDisplay = _G["BabbleBoss"][bossKey]
            elseif _G["AL"] and _G["AL"][bossKey] then
                bossDisplay = _G["AL"][bossKey]
            end
            local headerEntry = { type = "header", text = bossDisplay, rows = {} }
            table.insert(lootTable, headerEntry)
            headerMap[bossIdx] = headerEntry
            if boss.items and #boss.items > 0 then
                for _, itemID in ipairs(boss.items) do
                    if itemID ~= 0 then
                        local thisHeader = headerEntry
                        GetItemInfoObject(itemID, function(item)
                            table.insert(thisHeader.rows, { itemID = itemID, item = item, looted = (_G.SynastriaLoot_LootedItemIDs and _G.SynastriaLoot_LootedItemIDs[itemID]) or false })
                            pending = pending - 1
                            tryFinish()
                        end)
                    end
                end
            end
        end
        if validItemCount == 0 then
            callback(lootTable)
            return
        end
    end)
end
function PlayerHasBuff(buffName, delayMs, callback)
    if delayMs and callback then
        local f = CreateFrame("Frame")
        local elapsed = 0
        f:SetScript("OnUpdate", function(self, dt)
            elapsed = elapsed + (dt * 1000)
            if elapsed >= delayMs then
                self:SetScript("OnUpdate", nil)
                self:Hide()
                callback(PlayerHasBuff(buffName))
            end
        end)
        return
    end
    local i = 1
    while true do
        local name = UnitBuff("player", i)
        if not name then break end
        if name == buffName then
            return true
        end
        i = i + 1
    end
    return false
end
function GetZoneProperties(callback)
    local raidDifficultyIdMap = {
        [1] = "Normal",
        [2] = "25Man",
        [3] = "Heroic",
        [4] = "25Man Heroic",
    }
    local name, instanceType, difficultyID, difficultyName = GetInstanceInfo()
    if instanceType == "raid" then
        difficultyName = raidDifficultyIdMap[difficultyID]
    else
        difficultyName = difficultyName or tostring(difficultyID) or "unknown"
    end
    local zoneType = instanceType
    if zoneType == nil or zoneType:lower() == "none" then
        zoneType = "outdoor"
    end
    local zoneText
    if zoneType ~= "outdoor" and zoneType ~= "none" then
        zoneText = name or "unknown"
    else
        zoneText = GetRealZoneText() or "unknown"
    end
    PlayerHasBuff("Mythic Dungeon", 200, function(hasBuff)
        if hasBuff then
            difficultyName = "5 Player (Mythic)"
        end
        callback({
            zoneText = zoneText,
            difficulty = difficultyName,
            Type = zoneType
        })
    end)
end
-----------------------
--- Items Functions ---
-----------------------
function Filter(items, filterFn)
    local result = {}
    for _, itemID in ipairs(items) do
        if filterFn(itemID) then
            table.insert(result, itemID)
        end
    end
    return result
end

function GetItemAttuneStats(itemID, itemLink)
    local canAttuneResult = (type(CanAttuneItemHelper) == "function") and CanAttuneItemHelper(itemID) or nil
    local canAttune = type(canAttuneResult) == "table" and canAttuneResult[1] or canAttuneResult

    local attuneProgressResult = (type(GetItemLinkAttuneProgress) == "function" and itemLink) and GetItemLinkAttuneProgress(itemLink) or nil
    local attuneProgress = type(attuneProgressResult) == "table" and attuneProgressResult[1] or attuneProgressResult
    return {
        CanAttune = canAttune,
        AttuneProgress = attuneProgress
    }
end
local _eventFrame, _pending
function GetItemInfoObject(itemID, callback)
    if not itemID or itemID == "" then
    else
    end
    local info = { GetItemInfoCustom(itemID) }
    if info[1] and info[1] ~= "" then
        info.Name              = info[1] or nil
        info.ItemLink          = info[2] or nil
        info.ID                = itemID
        info.Name              = info[1]
        info.ItemLink          = info[2]
        info.Rarity            = info[3]
        info.Level             = info[4]
        info.MinLevel          = info[5]
        info.Type              = info[6]
        info.SubType           = info[7]
        info.StackCount        = info[8]
        info.EquipLoc          = info[9]
        info.Icon              = info[10]
        info.SellPrice         = info[11]
        info.ClassID           = info[12]
        info.SubClassID        = info[13]
        info.BindType          = info[14]
        info.ExpacID           = info[15]
        info.SetID             = info[16]
        info.IsCraftingReagent = info[17]
        local attuneStats = GetItemAttuneStats(itemID, info[2])
        info.CanAttune         = attuneStats.CanAttune
        info.AttuneProgress    = attuneStats.AttuneProgress
        callback(info)
    else
        if not _eventFrame then
            local f = CreateFrame("Frame")
            f:RegisterEvent("ITEM_INFO_RECEIVED")
            f:SetScript("OnEvent", function(_, _, receivedID, success)
                if _pending and _pending[receivedID] and success then
                    for _, cb in ipairs(_pending[receivedID]) do
                        GetItemInfoObject(receivedID, cb)
                    end
                    _pending[receivedID] = nil
                end
            end)
            _eventFrame = f
            _pending = {}
        end
        if not _pending[itemID] then
            _pending[itemID] = {}
        end
        table.insert(_pending[itemID], function(retryInfo)
            if retryInfo and retryInfo[1] and retryInfo[1] ~= "" then
                callback(retryInfo)
            end
        end)
        GetItemInfo(itemID)
    end
end
Items = Items or {}
Items.GetItemInfoObject = GetItemInfoObject
----------------------
--- Event Handling ---
----------------------
eventFrame:SetScript("OnEvent", function(_, event, ...)
    if eventHandlers[event] then
        eventHandlers[event](...)
    end
end)
RegisterEvent("ZONE_CHANGED_NEW_AREA", function(...)
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.RefreshLoot then
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)
RegisterEvent("ZONE_CHANGED", function(...)
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.RefreshLoot then
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)
RegisterEvent("ZONE_CHANGED_INDOORS", function(...)
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.RefreshLoot then
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)
RegisterEvent("LOADING_SCREEN_DISABLED", function(...)
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.RefreshLoot then
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)
RegisterEvent("PLAYER_ENTERING_WORLD", function(...)
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.RefreshLoot and SynastriaLoot_MainFrame.Show then
        SynastriaLoot_MainFrame:Show()
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)
SynastriaLoot_Print("Synastria Loot Loaded")
if SynastriaLoot_Minimap and SynastriaLoot_Minimap.Create then
    SynastriaLoot_Minimap:Create()
end

-- Utility: Extract itemID from item link
local function ExtractItemIDFromLink(link)
    if not link then return nil end
    local itemID = link:match("item:(%d+):")
    return tonumber(itemID)
end

-- Utility: Extract item link from loot message
local function ExtractItemLinkFromLootMsg(msg)
    return msg:match("(|c%x+|Hitem:.-|h.-|h|r)")
end

-- Register equipment change event for attuning
RegisterEvent("PLAYER_EQUIPMENT_CHANGED", function(slot, hasItem)
    local tracked = GetTrackedItemSet()
    _G.SynastriaLoot_EquippedItems = {}
    for slotID = 0, 19 do
        local itemID = GetInventoryItemID("player", slotID)
        if itemID and tracked[itemID] then
            _G.SynastriaLoot_EquippedItems[itemID] = true
        end
    end
    if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.frame and SynastriaLoot_MainFrame.frame:IsShown() then
        SynastriaLoot_MainFrame:RefreshLoot()
    end
end)

-- Register CHAT_MSG_LOOT event handler for tracked item looting
RegisterEvent("CHAT_MSG_LOOT", function(msg)
    
    local link = ExtractItemLinkFromLootMsg(msg)
    
    local itemID = ExtractItemIDFromLink(link)
    
    local tracked = GetTrackedItemSet()
    local trackedList = ""
    for tid,_ in pairs(tracked) do trackedList = trackedList .. tid .. "," end
    
    if itemID and tracked[itemID] then
        -- Mark as looted in persistent table
        _G.SynastriaLoot_LootedItemIDs = _G.SynastriaLoot_LootedItemIDs or {}
        _G.SynastriaLoot_LootedItemIDs[itemID] = true
        SynastriaLoot_Print("Looted tracked item: " .. (link or ("itemID " .. tostring(itemID))))
        if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.frame and SynastriaLoot_MainFrame.frame:IsShown() then
            SynastriaLoot_MainFrame:RefreshLoot()
        end
    end
end)

-- Register PLAYER_EQUIPMENT_CHANGED to check for tracked equips
RegisterEvent("PLAYER_EQUIPMENT_CHANGED", function(slot, hasItem)
    local itemID = GetInventoryItemID and GetInventoryItemID("player", slot)
    itemID = itemID and tonumber(itemID) or nil
    if itemID and GetTrackedItemSet()[itemID] then
        -- Mark as equipped in the loot table
        if _G.SynastriaLoot_CurrentLootTable then
            for _, row in ipairs(_G.SynastriaLoot_CurrentLootTable) do
                if row.itemID == itemID then
                    row.status = "equipped"
                end
            end
        end
        SynastriaLoot_Print("Equipped tracked item: " .. ("itemID " .. tostring(itemID)))
        if SynastriaLoot_MainFrame and SynastriaLoot_MainFrame.frame and SynastriaLoot_MainFrame.frame:IsShown() then
            SynastriaLoot_MainFrame:RefreshLoot()
        end
    end
end)

