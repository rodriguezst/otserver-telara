function onStepIn(cid, item, position, lastPosition)
	doTeleportThing(cid, {x = 1840, y = 208, z = 10})
	doSendMagicEffect({x = 1840, y = 208, z = 10}, 7)
	return true
end