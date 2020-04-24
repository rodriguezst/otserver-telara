--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60223 then

local pos = getPlayerPosition(cid)
local tppos = {x=1521, y=798, z=12}

doTeleportThing(cid,tppos)
end
return 1

end