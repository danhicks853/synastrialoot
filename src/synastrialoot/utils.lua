local MAJOR, MINOR = "SynastriaLoot2-Utils", 1
local Utils = LibStub:NewLibrary(MAJOR, MINOR)
if not Utils then return end
Utils.C_Timer = {}
function Utils.CreateBasicFrame(name, width, height, title, movable, parent)
    parent = parent or UIParent
    local frame = CreateFrame("Frame", name, parent)
    frame:SetSize(width, height)
    
    frame:SetBackdrop({
        bgFile = "Interface\DialogFrame\UI-DialogBox-Background",
        edgeFile = "Interface\DialogFrame\UI-DialogBox-Border",
        tile = true, tileSize = 32, edgeSize = 32,
        insets = { left = 11, right = 12, top = 12, bottom = 11 }
    })
    if title then
        frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
        frame.title:SetPoint("TOP", 0, 12)
        frame.title:SetText(title)
    end
    if movable then
        frame:SetMovable(true)
        frame:EnableMouse(true)
        frame:RegisterForDrag("LeftButton")
        frame:SetScript("OnDragStart", function(self) self:StartMoving() end)
        frame:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
    end
    
    frame.closeBtn = CreateFrame("Button", nil, frame, "UIPanelCloseButton")
    frame.closeBtn:SetPoint("TOPRIGHT", -5, -5)
    frame.closeBtn:SetScript("OnClick", function() frame:Hide() end)
    
    return frame
end

-- C_Timer implementation for 3.3.5
local timers = {}
local timerFrame = CreateFrame("Frame")
local elapsed = 0

local function OnUpdate(_, updateElapsed)
    elapsed = elapsed + updateElapsed
    if elapsed < 0.1 then return end
    
    for id, timer in pairs(timers) do
        if timer.running then
            timer.elapsed = timer.elapsed + elapsed
            if timer.elapsed >= timer.duration then
                timer.elapsed = 0
                if timer.callback then
                    timer.callback()
                end
                if not timer.looping then
                    timer.running = false
                end
            end
        end
    end
    
    for id, timer in pairs(timers) do
        if not timer.running and not timer.looping then
            timers[id] = nil
        end
    end
    
    elapsed = 0
end

timerFrame:SetScript("OnUpdate", OnUpdate)

function Utils.C_Timer.After(duration, callback)
    local id = #timers + 1
    timers[id] = {
        duration = duration,
        elapsed = 0,
        callback = callback,
        running = true,
        looping = false
    }
    return id
end

function Utils.C_Timer.NewTicker(interval, callback, iterations)
    local id = #timers + 1
    timers[id] = {
        duration = interval,
        elapsed = 0,
        callback = callback,
        running = true,
        looping = iterations ~= 1,
        iterations = iterations,
        count = 0
    }
    return id
end

function Utils.C_Timer.CancelTimer(id)
    if timers[id] then
        timers[id].running = false
        timers[id] = nil
        return true
    end
    return false
end

-- SetColorTexture implementation for 3.3.5
function Utils.SetColorTexture(texture, r, g, b, a)
    if not texture.texture then
        texture.texture = texture:CreateTexture(nil, "BACKGROUND")
        texture.texture:SetAllPoints()
    end
    
    if r and g and b then
        texture.texture:SetTexture(r, g, b, a or 1)
    else
        texture.texture:SetTexture(1, 1, 1, 1)
    end
    
    return texture.texture
end
return Utils