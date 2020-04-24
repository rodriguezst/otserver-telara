local pos = {
	[2050] = {text = "You flipped the first level. Hurry up and find the next one!", number = 1}, --ok
	[2051] = {text = "You flipped the second level. Hurry up and find the next one!", number = 2}, --ok
	[2052] = {text = "You flipped the third level. Hurry up and find the next one!", number = 3}, --ok
	[2053] = {text = "You flipped the fourth level. Hurry up and find the next one!", number = 4}, --ok
	[2054] = {text = "You flipped the fifth level. Hurry up and find the next one!", number = 5}, --ok
	[2055] = {text = "You flipped the sixth level. Hurry up and find the next one!", number = 6}, --ok
	[2056] = {text = "You flipped the seventh level. Hurry up and find the next one!", number = 7}, --ok
	[2057] = {text = "You flipped the eighth level. Hurry up and find the next one!", number = 8},  --ok
	[2058] = {text = "You flipped the ninth level. Hurry up and find the next one!", number = 9}, --ok
	[2059] = {text = "You flipped the tenth level. Hurry up and find the next one!", number = 10}, --ok
	[2060] = {text = "You flipped the eleventh level. Hurry up and find the next one!", number = 11}, --ok
	[2061] = {text = "You flipped the twelfth level. Hurry up and find the next one!", number = 12}, --ok
	[2062] = {text = "You flipped the thirteenth level. Hurry up and find the next one!", number = 13}, --ok
	[2063] = {text = "You flipped the fourteenth level. Hurry up and find the next one!", number = 14}, --ok
	[2064] = {text = "You flipped the fifteenth level. Hurry up and find the next one!", number = 15} --ok
}
 
local stones = {
	{x = 1849, y = 267, z = 12},
	{x = 1850, y = 267, z = 12}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.uid == 2065) then
		if(item.itemid == 1945) or (item.itemid == 1946) then
			if(getGlobalStorageValue(1000) == 15) then
				for i = 1, 2 do
					doRemoveItem(getTileItemById(stones[i], 1304).uid, 1)
					doSendMagicEffect(stones[i], 3)
				end
				doTransformItem(item.uid, 1946)
			else
				doCreatureSay(cid, "The final lever won't budge... yet.", TALKTYPE_ORANGE_1)
			end
			return true
		end
	end
	if(getGlobalStorageValue(1000) < 0) then
		setGlobalStorageValue(1000, 0)
	end
	if(item.itemid == 1945) or (item.itemid == 1946) then
		if((getGlobalStorageValue(1000) + 1) == pos[item.uid].number) then
			setGlobalStorageValue(1000, pos[item.uid].number)
			doCreatureSay(cid, pos[item.uid].text, TALKTYPE_ORANGE_1)
			doTransformItem(item.uid, 1946)
		else
			doCreatureSay(cid, "The final lever won't budge... yet.", TALKTYPE_ORANGE_1)
		end
	end
	return true
end