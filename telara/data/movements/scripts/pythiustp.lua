function onStepIn(cid, item, frompos, item2, topos)
playerpos = getPlayerPosition
vip = getPlayerStorageValue(cid,49337)
vippos = {x=1248, y=739, z=14}
templepos = {x=1248, y=743, z=14}

if item.actionid == 13541 and vip == 1 then
getThingfromPos(playerpos)
doSendMagicEffect(playerpos,2)
doTeleportThing(cid,vippos)
doSendMagicEffect(vippos,10)
doPlayerSendTextMessage(cid,"Finish Quest.")
else
doPlayerSendCancel(cid,"You need kill boss later.")
getThingfromPos(playerpos)
doSendMagicEffect(playerpos,2)
doTeleportThing(cid,templepos)
doSendMagicEffect(templepos,10)
end
end