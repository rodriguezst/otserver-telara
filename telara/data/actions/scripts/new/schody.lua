function onUse(cid, item, frompos, item2, topos)
gatepos = {x=1214, y=1474, z=6, stackpos=1}

if item.uid == 60150 and item.itemid == 1945 then
Game.createItem(9573,1,gatepos)
doSendMagicEffect({x=1207, y=1513, z=11}, 3)
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(gatepos, 47)
elseif item.uid == 60150 and item.itemid == 1946 then
getgate = getThingfromPos(gatepos)
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 47)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end