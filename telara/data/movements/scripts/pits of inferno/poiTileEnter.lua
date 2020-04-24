function onStepIn(cid, item, pos)
	if isPlayer(cid) then
		local tppos = {x=1792, y=268, z=9}
		doTeleportThing(cid,tppos)
		return true
	end
end