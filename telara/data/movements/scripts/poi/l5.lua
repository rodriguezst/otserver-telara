--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13204 then

local pos = getPlayerPosition(cid)
local tppos = {x=193, y=134, z=1}

doTeleportThing(cid,tppos)



end
return 1
end