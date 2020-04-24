function onStepIn(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to change their temple.")
else
doPlayerSetTown(cid, 1)
   doPlayerSendTextMessage(cid,25,"You are the newest resident of Intiri.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
doTeleportThing(cid,{x=1033, y=1041, z=7})
end
end