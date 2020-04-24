function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	item:transform(4010)
	doPlayerAddItem(cid, 5953, 5)
	doCreatureSay(cid, "Wooow! Drugs. Hmmmm!", TALKTYPE_ORANGE_1)

		if(item.itemid == 4010) then
			addEvent(doTransformItem, 1 * 60 * 1000, item.itemid, 4009)
		end
	return true
end
