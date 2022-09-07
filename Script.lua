local bypassedWords = {
    ["discord"] = "discor_d",
    ["ass"] = "as_s",
    ["gay"] = "g_ay",
    ["gays"] = "g_ays",
    ["jew"] = "j_ew",
    ["jew"] = "j_ews",
    ["asshole"] = "as_shole",
    ["bitch"] = "bit_ch",
    ["cock"] = "co_ck",
    ["cunt"] = "cu_nt",
    ["dick"] = "di_ck",
    ["faggot"] = "fa_ggot",
    ["fag"] = "fa_g",
    ["motherfucker"] = "motherf_ucker",
    ["fucker"] = "fu_cker",
    ["fucking"] = "fu_king",
    ["piss"] = "p_iss",
    ["penis"] = "pe_nis",
    ["shit"] = "sh_it",
    ["pussy"] = "pu_ssy",
    ["slut"] = "sl_ut",
    ["whore"] = "who_re",
    ["kys"] = "k_ys",
    ["nigga"] = "ni_gga",
    ["negro"] = "ne_gro",
    ["nigger"] = "ni_gger",
    ["kill"] = "ki_ll",
    ["fuck"] = "fu_ck",
    ["retard"] = "ret_ard",
    ["bastard"] = "bast_ard",
    ["bastards"] = "bast_ards",
    ["retards"] = "ret_ards",
    ["rape"] = "rap_e",
    ["gas"] = "g_as",
    ["orgy"] = "or_gy",
    ["gangbang"] = "gangb_ang"
}

local bypassStr = "%s{{aieixzvzx:%s}}"

function bypassMessage(message)
    local bypassedMessage = {}

    for index, word in ipairs( message:split(" ") ) do
         local wordFormat = bypassedWords[word]
         if (not wordFormat) then
              bypassedMessage[index] = word
              continue
         end
         
         wordFormat = wordFormat:split("_")
         word = bypassStr:format(wordFormat[1], wordFormat[2])
         bypassedMessage[index] = word
    end
    bypassedMessage[#bypassedMessage + 1] = "ng"
    bypassedMessage = table.concat(bypassedMessage, " ")
    
    return bypassedMessage
end

local replicatedStorage = game:GetService("ReplicatedStorage")
local sayMessageReq      = replicatedStorage:FindFirstChild("SayMessageRequest", true)

local old__nameCall;
old__nameCall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    
    if (self == sayMessageReq) and (method == "FireServer") then
         local args = {...}
         local message = args[1]
         
         message = bypassMessage( message )
         
         args[1] = message
         
         return self.FireServer(self, unpack( args ) )     
    end
    
    return old__nameCall(self, ...)
end)
