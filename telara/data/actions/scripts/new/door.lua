function onUse(cid, item, frompos, item2, topos)
gatepos = {x=1050, y=364, z=10, stackpos=1}
getgate = getThingfromPos(gatepos)
if item.uid == 60435 and item.itemid == 1945 and getgate.itemid == 3397 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(gatepos, 35)
elseif item.uid == 60435 and item.itemid == 1946
and getgate.itemid == 0 then
Game.createItem(3397,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 35)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end