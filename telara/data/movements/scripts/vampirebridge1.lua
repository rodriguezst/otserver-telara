function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=1225, y=1539, z=8}
		doTeleportThing(cid,tppos)
		return true
	end
end