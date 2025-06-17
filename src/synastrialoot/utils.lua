local MAJOR, MINOR = "SynastriaLoot2-Utils", 1
local Utils = LibStub:NewLibrary(MAJOR, MINOR)
if not Utils then return end

-- Performance tracking system
Utils.PerfTracker = {}
local perfData = {}
local DEBUG_PERF = false  -- Set to false to disable performance logging

function Utils.PerfTracker.StartTimer(key)
    if not DEBUG_PERF then return end
    perfData[key] = {
        startTime = GetTime(),
        count = (perfData[key] and perfData[key].count or 0) + 1
    }
end

function Utils.PerfTracker.EndTimer(key)
    if not DEBUG_PERF or not perfData[key] then return end
    
    local elapsed = GetTime() - perfData[key].startTime
    perfData[key].totalTime = (perfData[key].totalTime or 0) + elapsed
    perfData[key].lastTime = elapsed
    
    -- Log slow operations (>50ms)
    if elapsed > 0.05 then
        print(string.format("|cffff9900[SL Perf]|r %s took %.3fs", key, elapsed))
    end
end

function Utils.PerfTracker.GetStats(key)
    if not perfData[key] then return nil end
    return {
        count = perfData[key].count,
        totalTime = perfData[key].totalTime or 0,
        averageTime = (perfData[key].totalTime or 0) / perfData[key].count,
        lastTime = perfData[key].lastTime or 0
    }
end

function Utils.PerfTracker.PrintAllStats()
    print("|cff00ff00[SL Performance Stats]|r")
    for key, data in pairs(perfData) do
        if data.totalTime then
            local avg = data.totalTime / data.count
            print(string.format("  %s: %d calls, %.3fs total, %.3fs avg, %.3fs last", 
                key, data.count, data.totalTime, avg, data.lastTime or 0))
        end
    end
end

function Utils.PerfTracker.Reset()
    perfData = {}
    print("|cff00ff00[SL Perf]|r Performance data reset")
end

-- Bag update throttling system
Utils.BagUpdateManager = {}
local bagUpdateCallbacks = {}
local bagUpdateThrottle = nil
local THROTTLE_DELAY = 0.1  -- 100ms throttle

function Utils.BagUpdateManager.RegisterCallback(key, callback)
    bagUpdateCallbacks[key] = callback
end

function Utils.BagUpdateManager.UnregisterCallback(key)
    bagUpdateCallbacks[key] = nil
end

function Utils.BagUpdateManager.TriggerBagUpdate()
    if bagUpdateThrottle then
        return  -- Already scheduled
    end
    
    bagUpdateThrottle = Utils.C_Timer.After(THROTTLE_DELAY, function()
        Utils.PerfTracker.StartTimer("BagUpdate_Batch")
        
        local callbackCount = 0
        for key, callback in pairs(bagUpdateCallbacks) do
            if callback then
                Utils.PerfTracker.StartTimer("BagUpdate_" .. key)
                callback()
                Utils.PerfTracker.EndTimer("BagUpdate_" .. key)
                callbackCount = callbackCount + 1
            end
        end
        
        Utils.PerfTracker.EndTimer("BagUpdate_Batch")
        bagUpdateThrottle = nil
        
        if DEBUG_PERF and callbackCount > 5 then
            print(string.format("|cffff9900[SL Perf]|r Processed %d bag update callbacks", callbackCount))
        end
    end)
end

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