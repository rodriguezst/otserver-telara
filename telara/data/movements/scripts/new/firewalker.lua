--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60300 then

local pos = getPlayerPosition(cid)
local tppos = {x=1256, y=859, z=8}

doTeleportThing(cid,tppos)


end
return 1
end