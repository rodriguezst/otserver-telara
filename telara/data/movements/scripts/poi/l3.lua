--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13202 then

local pos = getPlayerPosition(cid)
local tppos = {x=197, y=124, z=1}

doTeleportThing(cid,tppos)



end
return 1
end