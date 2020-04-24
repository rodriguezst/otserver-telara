--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13007 then

local pos = getPlayerPosition(cid)
local tppos = {x=959, y=889, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)


end
return 1
end