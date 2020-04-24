--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60414 then

local pos = getPlayerPosition(cid)
local tppos = {x=962, y=763, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 16)


end
return 1
end