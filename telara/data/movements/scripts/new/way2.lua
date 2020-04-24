--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60242 then

local pos = getPlayerPosition(cid)
local tppos = {x=1581, y=675, z=15}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)


end
return 1
end