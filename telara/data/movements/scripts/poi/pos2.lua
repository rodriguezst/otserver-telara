--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13211 then

local pos = getPlayerPosition(cid)
local tppos = {x=180, y=89, z=4}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)


end
return 1
end