function onUse(cid, item, frompos, item2, topos)
gatepos = {x=1604, y=684, z=15, stackpos=1}
getgate = getThingfromPos(gatepos)
if item.uid == 60243 and item.itemid == 1945 and getgate.itemid == 1355 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(gatepos, 44)
elseif item.uid == 60243 and item.itemid == 1946
and getgate.itemid == 0 then
Game.createItem(1355,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 44)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end