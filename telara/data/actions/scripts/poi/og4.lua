function onUse(cid, item, frompos, item2, topos)
gatepos = {x=190, y=150, z=3, stackpos=1}
getgate = getThingfromPos(gatepos)
if item.uid == 13043 and item.itemid == 1945 and getgate.itemid == 6289 then
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(gatepos, 36)
elseif item.uid == 13043 and item.itemid == 1946
and getgate.itemid == 0 then
doCreateItem(6289,1,gatepos)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 36)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end