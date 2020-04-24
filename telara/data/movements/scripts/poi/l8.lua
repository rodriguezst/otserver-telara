--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13207 then

local pos = getPlayerPosition(cid)
local tppos = {x=209, y=105, z=1}

doTeleportThing(cid,tppos)



end
return 1
end