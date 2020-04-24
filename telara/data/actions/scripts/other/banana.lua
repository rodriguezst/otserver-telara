function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	item:transform(5092)
	doPlayerAddItem(cid, 2676, 19)
	doCreatureSay(cid, "Banaa! Bananaaa! HEHEHE!", TALKTYPE_ORANGE_1)
	return true
end
