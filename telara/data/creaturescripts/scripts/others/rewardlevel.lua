function onAdvance(cid, skill, oldlevel, newlevel)

	       	if getPlayerLevel(cid) >= 20 and getPlayerStorageValue(cid, 99963) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 2000)
						    setPlayerStorageValue(cid, 99963, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 2000 gold in into your bank for advancing to Level 20.")

		    elseif getPlayerLevel(cid) >= 40 and getPlayerStorageValue(cid, 99964) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 12000)
						    setPlayerStorageValue(cid, 99964, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 12000 gold in into your bank for advancing to Level 40.")

		   elseif getPlayerLevel(cid) >= 70 and getPlayerStorageValue(cid, 99965) ~= 1 then
						    doPlayerSetBalance(cid, getPlayerBalance(cid) + 32000)
						    setPlayerStorageValue(cid, 99965, 1)
						    doPlayerSendTextMessage(cid, 19, "You have received 32000 gold in into your bank for advancing to Level 70.")								
						    end
		    return TRUE
end