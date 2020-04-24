--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13307 then

local pos = getPlayerPosition(cid)
local tppos = {x=160, y=236, z=7}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)


end
return 1
end