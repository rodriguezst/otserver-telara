--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13200 then

local pos = getPlayerPosition(cid)
local tppos = {x=180, y=131, z=1}

doTeleportThing(cid,tppos)



end
return 1
end