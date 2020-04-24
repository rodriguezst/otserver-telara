--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60202 then

local pos = getPlayerPosition(cid)
local tppos = {x = 1956, y = 1040, z = 8}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)


end
return 1
end