function onUse(cid, item, frompos, item2, topos)
gatepos = {x=207, y=138, z=3, stackpos=1}

if item.uid == 13048 and item.itemid == 1945 then
doCreateItem(1386,1,gatepos)
doTransformItem(item.uid,item.itemid+1)
doSendMagicEffect(gatepos, 47)
elseif item.uid == 13048 and item.itemid == 1946 then
getgate = getThingfromPos(gatepos)
doRemoveItem(getgate.uid,1)
doTransformItem(item.uid,item.itemid-1)
doSendMagicEffect(gatepos, 47)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end