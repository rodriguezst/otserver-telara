function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uid == 9245) then
		local player = Player(cid)
		if(player:getStorageValue(70024) == 1) then
			if item.itemid == 12204 then
				player:teleportTo(toPosition, true)
				Item(item.uid):transform(item.itemid + 1)
			elseif item.itemid == 12205 then
				Item(item.uid):transform(item.itemid - 1)
				player:teleportTo(toPosition, true)			
			end
		else
			player:sendTextMessage(MESSAGE_INFO_DESCR, "The door seems to be sealed against unwanted intruders.")
		end
	end
	return true
end