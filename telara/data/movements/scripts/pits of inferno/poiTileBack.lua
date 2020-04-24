function onStepIn(cid, item, pos)
if isPlayer(cid) then
	local tppos = {x=733, y=771, z=8}
	doTeleportThing(cid,tppos)
end
return true
end