local addonName, ns = ...
local ItemHeader = {}
ns.ItemHeader = ItemHeader

-- Store expanded state for each header
local headerStates = {}

function ItemHeader:Create(parent, headerText, npcName, isExpanded)
    -- Create the header button
    local header = CreateFrame("Button", nil, parent)
    header:SetHeight(24)
    header:SetWidth(parent:GetWidth() or 200)
    
    -- Store NPC name for click handling
    header.npcName = npcName or headerText or ""
    header.isExpanded = isExpanded ~= false -- Default to expanded
    header.childFrames = {}
    
    -- Create background
    local bg = header:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    bg:SetTexture(0.3, 0.3, 0.5, 0.5)
    header.Background = bg
    
    -- Create toggle icon
    local toggle = header:CreateTexture(nil, "ARTWORK")
    toggle:SetSize(14, 14)
    toggle:SetPoint("LEFT", 4, 0)
    toggle:SetTexture("Interface\\Buttons\\UI-PlusMinus-Buttons")
    if header.isExpanded then
        toggle:SetTexCoord(0, 0.5, 0, 0.5) -- Minus sign
    else
        toggle:SetTexCoord(0.5, 1, 0, 0.5) -- Plus sign
    end
    header.ToggleIcon = toggle
    
    -- Create header text
    local text = header:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    text:SetPoint("LEFT", toggle, "RIGHT", 4, 0)
    text:SetText(headerText or "Header")
    header.Text = text
    
    -- Toggle function
    local function ToggleHeader()
        header.isExpanded = not header.isExpanded
        
        -- Update toggle icon
        if header.isExpanded then
            toggle:SetTexCoord(0, 0.5, 0, 0.5) -- Minus sign
        else
            toggle:SetTexCoord(0.5, 1, 0, 0.5) -- Plus sign
        end
        
        -- Show/hide child frames
        for _, child in ipairs(header.childFrames) do
            child:SetShown(header.isExpanded)
        end
        
        -- Save state
        headerStates[headerText] = header.isExpanded
        
        -- Notify parent to update layout
        if header.OnToggle then
            header:OnToggle(header.isExpanded)
        end
    end
    
    -- Click handler
    header:SetScript("OnClick", function(_, button)
        if button == "LeftButton" then
            ToggleHeader()
        elseif button == "RightButton" and header.npcName ~= "" then
            SendChatMessage(".findnpc " .. header.npcName, "SAY")
        end
    end)
    
    -- Hover effects
    header:SetScript("OnEnter", function()
        bg:SetTexture(0.4, 0.4, 0.7, 0.7)
    end)
    
    header:SetScript("OnLeave", function()
        bg:SetTexture(0.3, 0.3, 0.5, 0.5)
    end)
    
    -- Make the header resizable with its parent
    header:SetScript("OnSizeChanged", function(self, width, height)
        self:SetWidth(width)
    end)
    
    -- Add methods
    function header:AddChild(frame)
        table.insert(self.childFrames, frame)
        frame:SetShown(self.isExpanded)
    end
    
    function header:SetExpanded(expanded)
        if self.isExpanded ~= expanded then
            ToggleHeader()
        end
    end
    
    -- Set initial state
    if headerStates[headerText] ~= nil then
        header:SetExpanded(headerStates[headerText])
    end
    
    return header
end