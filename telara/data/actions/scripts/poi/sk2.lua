function onUse(cid, item, frompos, item2, topos)
	if item.uid == 13309 then
		local pos = getPlayerPosition(cid)
		local tppos = {x=1797, y=404, z=15}
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		doTeleportThing(cid,tppos)
	end
end