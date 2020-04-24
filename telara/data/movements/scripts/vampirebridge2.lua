function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=943, y=1172, z=7}
		doTeleportThing(cid,tppos)
		return true
	end
end