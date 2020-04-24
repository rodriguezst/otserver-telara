local token = 5
local level = 20
local storage = 17128
function onAdvance(player, skill, oldLevel, newLevel)
	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end
	
	    if player:getLevel() >= level then
			if player:getStorageValue(storage) < oldLevel then
			db.query("UPDATE `accounts` SET `tokens` = `tokens` + " .. token .. " WHERE `id` = '" .. player:getAccountId() .. "';")
			player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Congratulations! You have advanced to level ' .. newLevel .. ' and you have earned '.. token ..' crown tokens!')  
			player:setStorageValue(storage, oldLevel)
    	end
	end
    return true
end