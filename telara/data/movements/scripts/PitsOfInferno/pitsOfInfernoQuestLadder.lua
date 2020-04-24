function onStepIn(cid, item, position, lastPosition)
	doCreateItem(5543, 1, {x = 1852, y = 255, z = 11})
	doCreatureSay(cid, "The ladder is down.", TALKTYPE_ORANGE_1)
	return true
end

function onStepOut(cid, item)
	doRemoveItem(getTileItemById({x = 1852, y = 255, z = 11}, 5543).uid, 1)

	doCreatureSay(cid, "The ladder is up.", TALKTYPE_ORANGE_1)
	return true
end