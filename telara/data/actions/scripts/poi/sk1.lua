function onUse(cid, item, frompos, item2, topos)
	if item.uid == 13308 then
		local pos = getPlayerPosition(cid)
		local tppos = {x=1797, y=393, z=14}
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		doTeleportThing(cid,tppos)
		gatepos = {x=1797, y=404, z=13, stackpos=1}
		doSendMagicEffect(gatepos, 6)

	end
end