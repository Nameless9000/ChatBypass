shared.optionalWords = shared.optionalWords or false

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
    ["negro"] = "ne_gro",
    ["kill"] = "ki_ll",
    ["fuck"] = "fu_ck",
    ["retard"] = "ret_ard",
    ["bastard"] = "bast_ard",
    ["bastards"] = "bast_ards",
    ["retards"] = "ret_ards",
    ["rape"] = "rap_e",
    ["gas"] = "g_as",
    ["orgy"] = "or_gy",
    ["gangbang"] = "gangb_ang",
    ["ass"] = "as_s",
    ["asshole"] = "as_shole",
    ["bitch"] = "bit_ch",
    ["bitches"] = "bit_ches",
    ["cock"] = "co_ck",
    ["cocks"] = "co_cks",
    ["cunt"] = "cu_nt",
    ["dick"] = "dic_k",
    ["dicks"] = "dic_ks",
    ["dyke"] = "dy_ke",
    ["faggot"] = "fa_ggot",
    ["faggots"] = "fa_ggots",
    ["fuck"] = "fu_ck",
    ["fucks"] = "fu_cks",
    ["fucked"] = "fu_cked",
    ["gaylord"] = "gayl_ord",
    ["gaylords"] = "gayl_ords",
    ["kike"] = "ki_ke",
    ["kikes"] = "ki_kes",
    ["motherfucker"] = "motherf_ucker",
    ["nigga"] = "ni_gga",
    ["nigger"] = "ni_gger",
    ["niggers"] = "ni_ggers",
    ["piss"] = "p_iss",
    ["pisses"] = "p_isses",
    ["penis"] = "pe_nis",
    ["penisses"] = "pe_nisses",
    ["pussy"] = "pu_ssy",
    ["shit"] = "sh_it",
    ["shitter"] = "sh_itter",
    ["shitting"] = "sh_itting",
    ["shitty"] = "shi_tty",
    ["slut"] = "sl_ut",
    ["sluts"] = "sl_uts",
    ["whore"] = "who_re",
    ["whores"] = "who_res",
    ["kys"] = "k_ys",
    ["kill"] = "ki_ll",
    ["kills"] = "ki_lls",
    ["killing"] = "ki_lling",
    ["gay"] = "g_ay",
    ["gays"] = "g_ays",
    ["sex"] = "se_x",
    ["sexy"] = "se_xy",
    ["sexting"] = "se_xting",
    ["porn"] = "po_rn",
    ["love"] = "l_ove",
    ["loves"] = "l_oves",
    ["lover"] = "l_over",
    ["loving"] = "l_oving",
    ["date"] = "da_te",
    ["dates"] = "da_tes",
    ["dating"] = "da_ting",
    ["dater"] = "da_ter",
    ["rape"] = "ra_pe",
    ["rapes"] = "ra_pes",
    ["raping"] = "rap_ing",
    ["raper"] = "ra_per",
    ["v3rm"] = "v3_rm",
    ["v3rmillion"] = "v3_rmillion",
    ["hack"] = "ha_ck",
    ["hacking"] = "hac_king",
    ["hacker"] = "hac_ker",
    ["hackers"] = "hac_kers",
    ["hot"] = "ho_t",
    ["hotter"] = "ho_tter",
    ["boob"] = "bo_ob",
    ["boobs"] = "boo_bs",
    ["condom"] = "con_dom",
    ["condoms"] = "con_doms",
    ["thot"] = "th_ot",
    ["thots"] = "th_ots",
    ["bang"] = "ban_g",
    ["ligma"] = "li_gma",
    ["ligmaballs"] = "ligm_aballs",
    ["terrorist"] = "terror_ist",
    ["terrorists"] = "terror_ists",
    ["horny"] = "horn_y",
    ["mf"] = "m_f",
    ["lmao"] = "lm_ao",
    ["anus"] = "an_us",
    ["hacks"] = "hac_ks",
    ["predator"] = "pred_ator",
    ["predators"] = "pred_ator",
    ["kiss"] = "ki_ss",
    ["kisses"] = "ki_sses",
    ["kissing"] = "ki_ssing",
    ["kisser"] = "ki_sser",
    ["bomb"] = "bom_b",
    ["bomb"] = "bom_bs",
    ["nude"] = "nu_de",
    ["nudes"] = "nu_des",
    ["child"] = "chi_ld",
    ["my"] = "m_y",
    ["racism"] = "raci_sm",
    ["hoe"] = "h_oe",
    ["pedo"] = "pe_do",
    ["nsfw"] = "ns_fw",
    ["suck"] = "su_ck",
    ["cum"] = "c_um",
    ["cums"] = "c_ums",
    ["cumming"] = "cu_mming",
    ["scammer"] = "sca_mmer",
    ["fucker"] = "fu_cker",
    ["hitler"] = "hit_ler",
    ["nazi"] = "na_zi",
    ["simp"] = "si_mp",
    ["simping"] = "sim_ping",
    ["meth"] = "me_th",
    ["cocaine"] = "co_caine",
    ["heroin"] = "hero_in",
    ["faggot"] = "fa_ggot",
    ["athiest"] = "athi_est",
    ["jewish"] = "je_wish",
    ["christian"] = "chri_stian",
    ["muslim"] = "mu_slim",
    ["jurdism"] = "jur_dism",
    ["islam"] = "isl_am",
    ["allah"] = "al_lah",
    ["muhammad"] = "muha_mmad",
    ["christianity"] = "chri_stianity",
    ["satanism"] = "sata_nism",
    ["1"] = "on_e",
    ["2"] = "t_wo",
    ["3"] = "th_ree",
    ["4"] = "fo_ur",
    ["5"] = "fi_ve",
    ["6"] = "s_ix",
    ["7"] = "se_ven",
    ["8"] = "ei_ght",
    ["9"] = "ni_ne",
    ["10"] = "te_n",
    ["twitter"] = "twi_tter",
    ["youtube"] = "you_tube",
    ["rumble"] = "rum_ble",
    ["tiktok"] = "tik_tok",
    ["facebook"] = "face_book",
    ["whatsapp"] = "wha_tsapp",
    ["discord"] = "disco_rd",
    ["instagram"] = "inst_agram",
    ["snapchat"] = "snap_chat",
	["cum"] = "cu_m",
	["cums"] = "cu_ms",
	["cumming"] = "cu_mming",
	["drug"] = "dr_ug",
	["drugs"] = "dr_ugs",
	["drugging"] = "dr_ugging",
	["nutsack"] = "nu_tsack",
	["ballsack"] = "ba_llsack",
	["sperm"] = "spe_rm",
	["alcoholic"] = "alco_holic",
	["jizz"] = "ji_zz",
	["isis"] = "is_is"
}

-- optional words
local optWords = {
	["and"] = "a_nd",
    ["or"] = "o_r",
    ["if"] = "i_f",
    ["else"] = "el_se",
    ["then"] = "th_en",
    ["why"] = "wh_y",
    ["what"] = "wha_t",
    ["who"] = "wh_o",
    ["where"] = "wh_ere",
    ["see"] = "se_e",
    ["do"] = "d_o",
    ["to"] = "t_o",
    ["of"] = "o_f",
    ["he"] = "h_e",
    ["she"] = "sh_e",
    ["they"] = "th_ey",
    ["them"] = "th_em",
    ["had"] = "h_add",
    ["for"] = "fo_r",
    ["on"] = "o_n",
    ["as"] = "a_s",
    ["you"] = "yo_u",
    ["my"] = "m_y",
    ["yours"] = "you_rs",
    ["not"] = "no_t",
    ["with"] = "wi_th",
    ["number"] = "numb_er",
    ["numbers"] = "numb_ers",
    ["day"] = "da_y",
    ["night"] = "ni_ght",
    ["get"] = "ge_t",
    ["come"] = "co_me",
    ["it"] = "i_t",
    ["retard"] = "ret_ard",
    ["retarded"] = "ret_arded",
    ["some"] = "so_me",
    ["there"] = "the_re",
    ["but"] = "bu_t",
    ["more"] = "mo_re",
    ["all"] = "a_ll",
    ["get"] = "ge_t",
    ["its"] = "i_ts",
    ["yes"] = "ye_s",
    ["no"] = "n_o",
    ["said"] = "sa_id",
    ["can"] = "ca_n"
}

if shared.optionalWords == true then
	for key, value in next, optWords do
		bypassedWords[key] = value
	end
end

local bypassBlock = {}

for key, value in next, bypassedWords do
	bypassBlock[key] = value
end

local bypassStr = "%s{{aieixzvzx:%s}}"

function bypassMessage(message)
    local bypassedMessage = {}

    for index, word in ipairs( message:split(" ") ) do
         local wordFormat = bypassBlock[word]
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
local sayMessageReq = replicatedStorage:FindFirstChild("SayMessageRequest", true)

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
