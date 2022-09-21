-- Forked from AnthonyIsntHere/anthonysrepository

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
    if not PlayerGui then
        repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
        PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
    end
end

local Tween = function(Object, Time, Style, Direction, Property)
	return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
end

local Insert = function(Tbl, ...)
    for _, x in next, {...} do
        table.insert(Tbl, x) 
    end
end

local ChatFixToggle = true
local CoreGuiSettings = {}
local ChatFix

ChatFix = hookmetamethod(StarterGui, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if not checkcaller() and ChatFixToggle and Method == "SetCoreGuiEnabled" then
        local CoreGuiType = Arguments[1]
        local SettingValue = Arguments[2]
        
        if CoreGuiType == ("All" or "Chat") then
            Insert(CoreGuiSettings, CoreGuiType, SettingValue)
            return
        end
    end
    
    return ChatFix(self, ...)
end)

local PlayerScripts = Player:WaitForChild("PlayerScripts")
local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false

if not ChatMain then
    local Timer = tick()
    repeat
        task.wait()
    until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
    ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
    if not ChatMain then
        shared.ACL = true
        return
    end
end

local PostMessage = require(ChatMain).MessagePosted

if not PostMessage then
    shared.ACL = true
    return
end

local MessageEvent = Instance.new("BindableEvent")
local OldFunctionHook
OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
    if not checkcaller() and self == PostMessage then
        MessageEvent:Fire(Message)
        return
    end
    return OldFunctionHook(self, Message)
end)

setfflag("AbuseReportScreenshot", "False")
setfflag("AbuseReportScreenshotPercentage", 0)

ChatFixToggle = false
if OldSetting then
    StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
end
