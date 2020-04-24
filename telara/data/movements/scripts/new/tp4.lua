--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60000 then

local pos = getPlayerPosition(cid)
local tppos = {x=877, y=1131, z=12}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)


end
return 1
end