--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13208 then

local pos = getPlayerPosition(cid)
local tppos = {x=207, y=136, z=1}

doTeleportThing(cid,tppos)



end
return 1
end