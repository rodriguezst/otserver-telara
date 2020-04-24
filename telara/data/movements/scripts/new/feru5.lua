function onStepIn(cid, item, pos)
if item.uid == 60409 then
local pos = getPlayerPosition(cid)
local tppos = {x=1085, y=666, z=7}
doTeleportThing(cid,tppos)
end
return 1
end