function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	item:transform(4008)
	doPlayerAddItem(cid, 2675, 8)
	doCreatureSay(cid, "Orangeee!! Thats feel smell good.", TALKTYPE_ORANGE_1)
	return true
end
