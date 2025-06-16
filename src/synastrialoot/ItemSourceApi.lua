local addonName, ns = ...
local ItemSourceApi = {}

ItemSourceApi.DIFFICULTY = {
    ALL = 0,
    NORMAL = 1,
    HEROIC = 2,
    TEN_MAN = 3,
    TWENTYFIVE_MAN = 4,
    TEN_NORMAL = 5,
    TWENTYFIVE_NORMAL = 6,
    TEN_HEROIC = 7,
    TWENTYFIVE_HEROIC = 8,
    MYTHIC = 9
}

local MAP_ID_FLAG = 0x8000

-- Bit operation replacements for 3.3.5 compatibility
local function bit_band(a, b)
    local result = 0
    local bit = 1
    while a > 0 and b > 0 do
        if a % 2 == 1 and b % 2 == 1 then
            result = result + bit
        end
        a = math.floor(a / 2)
        b = math.floor(b / 2)
        bit = bit * 2
    end
    return result
end

local function bit_bor(...)
    local result = 0
    for i = 1, select('#', ...) do
        local v = select(i, ...)
        -- Bitwise OR implementation using addition and bitwise AND
        result = (result + v) - bit_band(result, v)
    end
    return result
end

local function bit_lshift(a, b)
    return a * (2 ^ b)
end

local function processOptions(opts)
    opts = opts or {}
    return {
        zoneId = opts.zoneId or -1,
        mustCurCharAttunable = opts.mustCurCharAttunable or 0,
        mustAccAttunable = opts.mustAccAttunable or 0,
        mustAnyAttunable = opts.mustAnyAttunable or 1,
        mustObtainable = opts.mustObtainable or 1
    }
end

function ItemSourceApi.BuildZoneId(mapId, difficulty)
    assert(type(mapId) == "number", "mapId must be a number")
    difficulty = difficulty or 0
    
    local shiftedMapId = bit_lshift(mapId, 16)
    local maskedDifficulty = bit_band(difficulty, 0xF)
    local shiftedDifficulty = bit_lshift(maskedDifficulty, 10)
    
    return bit_bor(shiftedMapId, MAP_ID_FLAG, shiftedDifficulty)
end

function ItemSourceApi.GetItemsInZone(opts)
    local options = processOptions(opts)
    return ItemLocGetAllItemsInZone(
        options.zoneId,
        options.mustCurCharAttunable,
        options.mustAccAttunable,
        options.mustAnyAttunable,
        options.mustObtainable
    ) or {}
end

function ItemSourceApi.GetCharacterAttunableItems(zoneId)
    return ItemSourceApi.GetItemsInZone({
        zoneId = zoneId or -1,
        mustCurCharAttunable = 1,
        mustAnyAttunable = 1,
        mustObtainable = 1
    })
end

function ItemSourceApi.GetAccountAttunableItems(zoneId)
    return ItemSourceApi.GetItemsInZone({
        zoneId = zoneId or -1,
        mustAccAttunable = 1,
        mustAnyAttunable = 1,
        mustObtainable = 1
    })
end

function ItemSourceApi.GetNonAttunableItems(zoneId)
    return ItemSourceApi.GetItemsInZone({
        zoneId = zoneId or -1,
        mustAnyAttunable = -1,
        mustObtainable = 1
    })
end

ns.ItemSourceApi = ItemSourceApi
return ItemSourceApi