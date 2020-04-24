function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=1068, y=1050, z=13}
	local noPosition = {x=1074, y=1056, z=12}
        if (getPlayerStorageValue(cid, 10251) == 1) then
		    	doTeleportThing(cid, newPosition, TRUE)
			doSendMagicEffect(newPosition, CONST_ME_TELEPORT)
		else
			doTeleportThing(cid, fromPosition, TRUE)
			doSendMagicEffect(noPosition, CONST_ME_POFF)
                doPlayerSendTextMessage(cid,19,"Access denied! Please insert 4 gear wheels into the relais either to the left or to the right, to calibrate the teleporter.") 

	end
end