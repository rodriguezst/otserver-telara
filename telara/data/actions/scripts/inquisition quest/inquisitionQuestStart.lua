function onUse(cid, item, fromPosition, itemEx, toPosition)
local player = Player(cid)
	if(item.actionid == 1005) and getPlayerStorageValue(cid, 200) >= 20 then
			if item.itemid == 5132 then
				player:teleportTo(toPosition, true)
				Item(item.uid):transform(item.itemid + 1)
			elseif item.itemid == 5133 then
				Item(item.uid):transform(item.itemid - 1)
				player:teleportTo(toPosition, true)			
			end
	
		else player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
	end
	return true
end
