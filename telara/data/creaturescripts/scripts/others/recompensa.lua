local tabela = 
{
	-- [level] = type = "item", id = ITEM_ID, id2 = QUANTIDADE, msg = "MENSAGEM"}
	[10] = {type = "item", id = 2160, id2 = 0, msg = "Welcome to Intiri City! You can find depot at west and to go to training room, in teleport temple."},
	[30] = {type = "item", id = 2160, id2 = 2, msg = "We give you 2 crystal coins for get level 30, congratulations! Now you can finished quest for level 30 in Intiri's Depot, sub-solo and to put promotion you must go to the northwest of Intiri and talk to the Priest. Get level 60 for the next reward."},
	[60] = {type = "item", id = 2160, id2 = 3, msg = "We give you 3 crystal coins for get level 60, congratulations!"}
}

local storage = 15000

function onAdvance(player, skill, oldLevel, newLevel)

	if (skill == 8) then
		for level, _ in pairs(tabela) do
			if player:getLevel() >= level and player:getStorageValue(storage) < level then
				if tabela[level].type == "item" then	
					player:addItem(tabela[level].id, tabela[level].id2)
				else
					return false
				end

				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, tabela[level].msg)
				player:setStorageValue(storage, level)
			end
		end
	end

	player:save() -- salvando player   

	return true
end