function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=1060, y=1354, z=9}
		doTeleportThing(cid,tppos)
		return true
	end
end