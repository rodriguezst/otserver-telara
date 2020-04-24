function onUse(cid, item, frompos, item2, topos)
gatepos = {x=820, y=374, z=10, stackpos=1}

if item.uid == 60312 and item.itemid == 1945 then
getgate = getThingfromPos(gatepos)
doRemoveItem(getgate.uid,1)
doSendMagicEffect({x=883, y=432, z=12}, 13)
doSendMagicEffect({x=820, y=374, z=10}, 6)
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 60312 and item.itemid == 1946 then
getgate = getThingfromPos(gatepos)
Game.createItem(1304,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 6)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end