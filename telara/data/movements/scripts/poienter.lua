function onStepIn(cid, item, pos)
if isPlayer(cid) then
	if getPlayerStorageValue(cid, 37005) == -1 then
		doPlayerSendTextMessage(cid,25,"To enter the ruthless seven throneroom you'd have to finish the Pits of Inferno Quest.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_GREEN)
		local tppos1 = {x=977, y=1198, z=6}
		doTeleportThing(cid,tppos1)
	else
		local tppos = {x=979, y=1198, z=6}
		doTeleportThing(cid,tppos)
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_BLUE)
		return false
	end
end
return true
end