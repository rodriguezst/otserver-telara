function onSay(player, words, param)
	local text = '---------------------------**| -> Tasks System Infos <- |**---------------------------\n'

	if param:lower() == "me" then
		text = text .. '[+] Task Points [+]: You have '..taskPoints_get(player)..' task points.\n[+] Task Rank Points [+]: Você tem '..taskRank_get(player)..' rank points.\n[+] Rank Task [+]: '..getRankTask(player)..''
		return false,  player:popupFYI(text)
	end

	local ret_t = getTaskInfos(player)
	if ret_t then
		text = text .. '\n\n      [ -> ----- [+] Normal Task [+] ----- <- ]\n      \n[*] Current Task [*]: '..ret_t.name..' - You need to kill: '..ret_t.amount..'.\n[*] Awards [*]: '..getItemsFromTable(ret_t.items)..' - '..ret_t.pointsTask[1]..' Task Points - '..ret_t.pointsTask[2]..' Task Ranks. \n[*] Progress [*]: ['..(player:getStorageValue(ret_t.storage))..'/'..ret_t.amount..']\n[*] Task Status [*]: '..(player:getStorageValue(ret_t.storage) == ret_t.amount and 'Complete' or 'Incomplete')..'!'			
	else
		text = text .. "\n\n      [ -> ----- [+] Normal Task [+] ----- <- ]\n      \n--- You aren't doing any Daily Task."
	end

	local ret_td = getTaskDailyInfo(player)
	if ret_td then
		text = text .. '\n\n\n      [ -> ----- [+] Daily Task [+] ----- <- ]\n      \n[*] Current Task [*]: '..ret_td.name..' - You need to kill: '..ret_td.amount..'.\n[*] Awards [*]: '..getItemsFromTable(ret_td.items)..' - '..ret_td.pointsTask[1]..' Task Points - '..ret_td.pointsTask[2]..' Task Ranks \n[*] Progress [*]: ['..(player:getStorageValue(ret_td.storage))..'/'..ret_td.amount..']\n[*] Task Status [*]: '..(player:getStorageValue(ret_td.storage) == ret_td.amount and 'Complete' or 'Incomplete')..'!'			
	else
		text = text .. "\n\n\n      [ -> ----- [+] Daily Task [+] ----- <- ]\n      \n--- You aren't doing any Daily Task."
	end

	return false,  player:popupFYI(text)
end