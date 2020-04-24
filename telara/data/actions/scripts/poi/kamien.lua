function onUse(cid, item, frompos, item2, topos)
	if item.uid == 13030 then
		local pos = getPlayerPosition(cid)
		local tppos = {x=144, y=151, z=2}
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		doTeleportThing(cid,tppos)
	end
end