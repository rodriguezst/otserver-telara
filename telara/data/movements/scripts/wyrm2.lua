function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=1052, y=1297, z=7}
		doTeleportThing(cid,tppos)
		return true
	end
end