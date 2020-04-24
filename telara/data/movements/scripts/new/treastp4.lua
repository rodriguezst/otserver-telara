--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60225 then

local pos = getPlayerPosition(cid)
local tppos = {x=1525, y=828, z=14}

doTeleportThing(cid,tppos)
end
return 1

end