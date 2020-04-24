function onStepIn(cid, item, frompos, item2, topos)
doPlayerSetTown(cid, 2)
   doPlayerSendTextMessage(cid,25,"You are the newest resident of Community Management Mansion.")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_GREEN)
doTeleportThing(cid,{x=929, y=818, z=6})
end