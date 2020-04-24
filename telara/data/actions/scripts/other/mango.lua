function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	item:transform(5156)
	doPlayerAddItem(cid, 5097, 7)
	doCreatureSay(cid, "Mango! Mango! Yup!", TALKTYPE_ORANGE_1)
	return true
end
