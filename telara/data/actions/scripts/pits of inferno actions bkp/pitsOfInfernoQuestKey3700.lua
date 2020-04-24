function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uniqueid == 1020) then
		if(getPlayerStorageValue(cid, 230) < 1) then
			setPlayerStorageValue(cid, 230, 1)
			key = doPlayerAddItem(cid, 2090, 1)
			doSetItemActionId(key, 1021)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You've found a key.")
		else
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		end
	end
	return true
end