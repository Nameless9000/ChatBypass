repeat
    wait()
until game:IsLoaded()

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Main.lua'))()")


loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/AntiChatLog.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Bypasser.lua'))()
