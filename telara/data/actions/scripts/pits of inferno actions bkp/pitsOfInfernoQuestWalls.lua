local pos = {
	[2025] = {x = 1829, y = 267, z = 11},
	[2026] = {x = 1831, y = 267, z = 11},
	[2027] = {x = 1833, y = 267, z = 11},
	[2028] = {x = 1835, y = 267, z = 11}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 1945) then
		doRemoveItem(getTileItemById(pos[item.uid], 6289).uid, 1)
		doSendMagicEffect(pos[item.uid], CONST_ME_FIRE)
	else
		Game.createItem(6289, 1, pos[item.uid])
		doSendMagicEffect(pos[item.uid], CONST_ME_FIRE)
	end
	
	if (item.itemid == 1945) then
		doTransformItem(item.uid, item.itemid + 1)
	else
		doTransformItem(item.uid, item.itemid - 1)
	end
	
	return true
end
