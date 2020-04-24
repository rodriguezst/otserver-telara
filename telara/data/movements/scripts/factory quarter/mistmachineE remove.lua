function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=1075, y=1050, z=12}
	local noPosition = {x=1075, y=1050, z=12}
        if (getPlayerStorageValue(cid, 10251) == 1) then
		    	doTeleportThing(cid, newPosition, TRUE)
			doSendMagicEffect(newPosition, CONST_ME_TELEPORT)
			setPlayerStorageValue(cid, 10251, -1)
		else
			doTeleportThing(cid, noPosition, TRUE)
			doSendMagicEffect(noPosition, CONST_ME_TELEPORT)
			setPlayerStorageValue(cid, 10251, -1)
	end
end