function onStepIn(cid, item, pos)
if item.uid == 60406 then
local pos = getPlayerPosition(cid)
local tppos = {x=421, y=1663, z=1}
doTeleportThing(cid,tppos)
end
return 1
end