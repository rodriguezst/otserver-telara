function onStepIn(cid, item, pos)
if isPlayer(cid) then
	local tppos = {x=1405, y=1348, z=13}
	doTeleportThing(cid,tppos)
end
return true
end