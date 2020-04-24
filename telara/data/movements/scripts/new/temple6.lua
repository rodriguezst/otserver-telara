function onStepIn(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to change their temple.")
else
doPlayerSetTown(cid, 8)
   doPlayerSendTextMessage(cid,25,"You are the newest resident of Ithilien.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
doTeleportThing(cid,{x=1007, y=226, z=7})
end
end