function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uid == 7019) then
		if(item.itemid == 1945) then
			if(getThingfromPos({x = 1285, y = 1243, z = 10, stackpos = STACKPOS_FIRST_ITEM_ABOVE_GROUNDTILE}).type == 11) then
				doTransformItem(getThingfromPos({x = 1283, y = 1252, z = 10, stackpos = STACKPOS_GROUND}).uid, 1284)
				doCreatureSay(cid, "You have exactly 360 seconds until the bridge breaks, be quick or you'll be stuck.", TALKTYPE_ORANGE_1)
				addEvent(doTransformItem, 10 * 360 * 1000, getThingfromPos({x = 1283, y = 1252, z = 10, stackpos = STACKPOS_GROUND}).uid, 598)
				doTransformItem(item.uid, 1946)
				addEvent(doTransformItem, 10 * 360 * 1000, item.uid, 1946)
			else
				doCreatureSay(cid, "The lever is creaking and rusty, you need use oil.", TALKTYPE_ORANGE_1)
			end
		end
	end
	return true
end