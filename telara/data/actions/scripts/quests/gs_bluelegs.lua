function onUse(cid, item, frompos, item2, topos)
if item.uid == 13015 then
		if getPlayerStorageValue(cid, 13015) == -1 and getPlayerStorageValue(cid, 13016) == -1 and getPlayerStorageValue(cid, 13017) == -1 and getPlayerStorageValue(cid, 13018) == -1 and getPlayerStorageValue(cid, 13019)== -1 then


	doSummonCreature("tarantula",{x=1497, y=1612, z=8})
	doSummonCreature("tarantula",{x=1501, y=1612, z=8})
	doSummonCreature("tarantula",{x=1496, y=1616, z=8})
	doSummonCreature("tarantula",{x=1502, y=1617, z=8})
	doSummonCreature("tarantula",{x=1499, y=1613, z=8})
			doSendMagicEffect({x=1497, y=1612, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1501, y=1612, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1496, y=1616, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1502, y=1617, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1499, y=1613, z=8}, CONST_ME_TELEPORT)

setPlayerStorageValue(cid, 13015, 1) 
else

 if getPlayerStorageValue(cid, 13015) == 1 and getPlayerStorageValue(cid, 13016) == -1 and getPlayerStorageValue(cid, 13017) == -1 and getPlayerStorageValue(cid, 13018) == -1 and getPlayerStorageValue(cid, 13019)== -1 then
	doSummonCreature("giant spider",{x=1497, y=1612, z=8})
	doSummonCreature("tarantula",{x=1501, y=1612, z=8})
	doSummonCreature("tarantula",{x=1496, y=1616, z=8})
	doSummonCreature("giant spider",{x=1502, y=1617, z=8})
	doSummonCreature("tarantula",{x=1499, y=1613, z=8})
			doSendMagicEffect({x=1497, y=1612, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1501, y=1612, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1496, y=1616, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1502, y=1617, z=8}, CONST_ME_TELEPORT)
			doSendMagicEffect({x=1499, y=1613, z=8}, CONST_ME_TELEPORT)


setPlayerStorageValue(cid, 13016, 1) 
else
		if getPlayerStorageValue(cid, 13016) == 1 and  getPlayerStorageValue(cid, 13015) == 1 and getPlayerStorageValue(cid, 13017) == -1 and getPlayerStorageValue(cid, 13018) == -1 and getPlayerStorageValue(cid, 13019)== -1 then
	doSummonCreature("giant spider",{x=1497, y=1612, z=8})
	doSummonCreature("giant spider",{x=1501, y=1612, z=8})
	doSummonCreature("giant spider",{x=1496, y=1616, z=8})
	doSummonCreature("giant spider",{x=1502, y=1617, z=8})
	doSummonCreature("giant spider",{x=1499, y=1613, z=8})
			doSendMagicEffect({x=1497, y=1612, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1501, y=1612, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1496, y=1616, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1502, y=1617, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1499, y=1613, z=8}, CONST_ME_MORTAREA)

setPlayerStorageValue(cid, 13017, 1) 
else
		if getPlayerStorageValue(cid, 13017)== 1 and getPlayerStorageValue(cid, 13016) == 1 and  getPlayerStorageValue(cid, 13015) == 1 and getPlayerStorageValue(cid, 13018) == -1 and getPlayerStorageValue(cid, 13019)== -1 then

 doSummonCreature("araneus marmoreus",{x=1497, y=1612, z=8})
	doSummonCreature("giant spider",{x=1501, y=1612, z=8})
	doSummonCreature("giant spider",{x=1496, y=1616, z=8})
	doSummonCreature("giant spider",{x=1502, y=1617, z=8})
	doSummonCreature("giant spider",{x=1505, y=1617, z=8})
	doSummonCreature("giant spider",{x=1499, y=1613, z=8})
			doSendMagicEffect({x=1497, y=1612, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1501, y=1612, z=8}, CONST_ME_MORTAREA)
			doSendMagicEffect({x=1496, y=1616, z=8}, CONST_ME_MORTAREA)
setPlayerStorageValue(cid, 13018, 1) 
else
		if getPlayerStorageValue(cid, 13018) == 1 and getPlayerStorageValue(cid, 13017)== 1 and getPlayerStorageValue(cid, 13016) == 1 and  getPlayerStorageValue(cid, 13015) == 1 and getPlayerStorageValue(cid, 13019)== -1 then
			doSendMagicEffect({x=1502, y=1617, z=8}, CONST_ME_MAGIC_GREEN)
			doSendMagicEffect({x=1505, y=1617, z=8}, CONST_ME_FIREAREA)
			doSendMagicEffect({x=1499, y=1613, z=8}, CONST_ME_FIREAREA)
			doSendMagicEffect({x=1499, y=1615, z=8}, CONST_ME_FIREAREA)
			doSendMagicEffect({x=1497, y=1618, z=8}, CONST_ME_FIREAREA)
setPlayerStorageValue(cid, 13019, 1)
else
if getPlayerStorageValue(cid, 13019)== 1 then
			doSendMagicEffect({x=1499, y=1615, z=8}, CONST_ME_FIREAREA)
return 0
end
end
end
end
end
end
end
end
