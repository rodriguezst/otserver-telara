function removeStone(pos)
	return getTileItemById({x = pos.x, y = pos.y, z = pos.z}, 1304).uid > 0 and doRemoveItem(getTileItemById({x = pos.x, y = pos.y, z = pos.z}, 1304).uid, 1) or true
end

function onStepIn(cid, item, position, lastPosition)
	doTeleportThing(cid, {x = 1825, y = 206, z = 12})
	doSendMagicEffect({x = 1825, y = 206, z = 12}, 7)
	doCreateItem(1304, 1, {x = lastPosition.x, y = lastPosition.y, z = lastPosition.z})
	addEvent(removeStone, 10 * 1000, lastPosition)
	return true
end