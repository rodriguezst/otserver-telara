--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60241 then

local pos = getPlayerPosition(cid)
local tppos = {x=1588, y=661, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)


end
return 1
end