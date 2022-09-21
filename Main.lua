if not syn then
   return game:Shutdown()
end

repeat
    wait()
until game:IsLoaded()

shared.optionalWords=shared.optionalWords or false

syn.queue_on_teleport("shared.optionalWords="..(shared.optionalWords and "true" or "false")..";loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Main.lua'))()")

shared.ACL = false

loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/AntiChatLog.lua'))()
if shared.ACL == true then
    messagebox("Script cannot run!", "Bypassing is not possible on this game.", 0)
    game:Shutdown()
    return
end

loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Nameless9000/ChatBypass/main/Bypasser.lua'))()

messagebox("Bypasser Ran", "The bypasser has been executed successfully\n\n Script by Nameless#6118", 0)
