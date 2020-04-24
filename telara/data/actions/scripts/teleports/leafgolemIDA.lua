function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 22652) then
		doTeleportThing(cid, {x = 789, y = 1485, z = 11})
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You sailed through the underworld.")
	end
	return true
end

