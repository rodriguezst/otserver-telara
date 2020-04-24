--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13203 then

local pos = getPlayerPosition(cid)
local tppos = {x=208, y=113, z=1}

doTeleportThing(cid,tppos)



end
return 1
end