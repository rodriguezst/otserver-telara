function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=1362, y=1183, z=13}
		doTeleportThing(cid,tppos)
		return true
	end
end