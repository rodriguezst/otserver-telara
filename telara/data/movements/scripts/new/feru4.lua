function onStepIn(cid, item, pos)
if item.uid == 60408 then
local pos = getPlayerPosition(cid)
local tppos = {x=423, y=1660, z=1}
doTeleportThing(cid,tppos)
end
return 1
end