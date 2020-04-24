function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1945) then
		if(getTileItemById({x = 1825, y = 207, z = 11}, 1304).uid > 0) then
			doRemoveItem(getTileItemById({x = 1825, y = 207, z = 11}, 1304).uid, 1)
		end
		doTransformItem(item.uid, 1946)
	else
		doTransformItem(item.uid, 1945)
	end
	return true
end