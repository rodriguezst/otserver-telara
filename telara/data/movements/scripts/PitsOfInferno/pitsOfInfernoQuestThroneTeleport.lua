local newpos = {x = 1823, y = 175, z = 12}
function onStepIn(cid, item, position, lastPosition)
		if(item.actionid == 9059) then
			doTeleportThing(cid, newpos)
			doSendMagicEffect(newpos, 11)
		end
	return true
end