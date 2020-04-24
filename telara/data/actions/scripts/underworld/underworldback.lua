function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uniqueid == 60201) then
		doTeleportThing(cid, {x = 1077, y = 1113, z = 7})
		doSendMagicEffect(getCreaturePosition(cid), 18)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You sailed through the underworld.")
	end
	return true
end