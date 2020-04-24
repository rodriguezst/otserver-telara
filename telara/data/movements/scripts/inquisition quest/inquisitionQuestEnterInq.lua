function onStepIn(cid, item, position, lastPosition)
	if(item.uid == 9014) then
		if (getPlayerStorageValue(cid, 200) >= 6) then
			doTeleportThing(cid, {x = 1763, y = 946, z = 14})
			doSendMagicEffect({x = 1763, y = 946, z = 14}, CONST_ME_TELEPORT)
		else
			doTeleportThing(cid, lastPosition)
			doSendMagicEffect(getCreaturePosition(cid),11)
		end
	end
	return true
end
