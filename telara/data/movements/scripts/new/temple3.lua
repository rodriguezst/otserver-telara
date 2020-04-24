function onStepIn(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to change their temple.")
else
doPlayerSetTown(cid, 3)
   doPlayerSendTextMessage(cid,25,"You are the newest resident of Salzart.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
doTeleportThing(cid,{x=626, y=1100, z=3})
end
end