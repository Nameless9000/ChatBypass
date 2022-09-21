if not syn then
   return game:Shutdown()
end

repeat
    wait()
until game:IsLoaded()

syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Main.lua'))()")

shared.ACL = false

loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/AntiChatLog.lua'))()
if shared.ACL == true then
    messagebox("Script cannot run!", "Bypassing is not possible on this game.", 0)
    game:Shutdown()
    return
end

loadstring(game:HttpGet('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Bypasser.lua'))()
