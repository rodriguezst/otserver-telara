--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60221 then

local pos = getPlayerPosition(cid)
local tppos = {x=1521, y=852, z=11}

doTeleportThing(cid,tppos)
end
return 1

end