function onStepIn(cid, item, position, lastPosition)
	if(item.uid == 9243) then
		if (getPlayerStorageValue(cid, 60091) == 1) then
			doTeleportThing(cid, {x = 2539, y = 2499, z = 7})
			doSendMagicEffect({x = 2539, y = 2499, z = 7}, CONST_ME_TELEPORT)
		else
			doTeleportThing(cid, lastPosition)
			doSendMagicEffect(getCreaturePosition(cid),11)
		end
	end
	return true
end
