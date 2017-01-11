hexchat.register("downgrade", "1.0", "Downgrade message command for use in #minecrafthelp.")
hexchat.hook_command("dg", function (words, word_eols)
    local user = words[2]
    local arg1 = words[3]
    local arg2 = words[4]
	local arg3 = words[5]
    local version
	local reqversion
    if arg2 then
		version = arg1
		reqversion = arg2
	else
		version = 10
		reqversion = arg1
	end
	local message
	if(arg3) then
		message = "Unfortunately, your graphics card isnt supported on Windows "..version..". You will need to either downgrade to Windows "..reqversion..", get a new graphics card(If you have a desktop PC) or play in another PC"
    else
		message = "Unfortunately, your graphics card isnt supported on Windows "..version.." as Intel has not released drivers for your graphics card as its too old. You will need to either downgrade to Windows "..reqversion..", get a new graphics card(If you have a desktop PC) or play in another PC"		
	end
	local cmd = "say " .. user .. ": " .. message
    hexchat.command(cmd)
    return hexchat.EAT_HEXCHAT
end, "/dg <username> <current-version> <previous-version> | /dg <username> <previous-version>")