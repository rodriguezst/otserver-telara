--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60232 then

local pos = getPlayerPosition(cid)
local tppos = {x=1541, y=744, z=15}

doTeleportThing(cid,tppos)
end		
return 1

end