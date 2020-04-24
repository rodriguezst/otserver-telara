function onStepIn(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to change their temple.")
else
doPlayerSetTown(cid, 11)
   doPlayerSendTextMessage(cid,25,"You are the newest resident of Gray Beach.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
doTeleportThing(cid,{x=1737, y=1137, z=9})
end
end