--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13011 then

local pos = getPlayerPosition(cid)
local tppos = {x=973, y=937, z=8}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)


end
return 1
end