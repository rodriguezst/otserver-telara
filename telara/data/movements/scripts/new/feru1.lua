function onStepIn(cid, item, pos)
if item.uid == 60405 then
local pos = getPlayerPosition(cid)
local tppos = {x=420, y=1663, z=1}
doTeleportThing(cid,tppos)
end
return 1
end