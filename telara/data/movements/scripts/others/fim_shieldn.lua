function onStepIn(cid, item, position, lastPosition)
	if(item.uid == 9240) then
		if (getPlayerStorageValue(cid, 70058) == 1) then
			doTeleportThing(cid, {x = 951, y = 94, z = 8})
			doSendMagicEffect({x = 951, y = 94, z = 8}, CONST_ME_TELEPORT)
		else
			doTeleportThing(cid, lastPosition)
			doSendMagicEffect(getCreaturePosition(cid),11)
		end
	end
	return true
end
