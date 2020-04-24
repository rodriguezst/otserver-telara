function onStepIn(cid, item, pos)
if isPlayer(cid) then
	doTeleportThing(cid,{x=1089, y=741, z=7})
	doSendMagicEffect(getPlayerPosition(cid), CONST_ME_TELEPORT)
end
return true
end