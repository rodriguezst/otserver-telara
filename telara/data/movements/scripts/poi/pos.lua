--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13210 then

local pos = getPlayerPosition(cid)
local tppos = {x=195, y=92, z=2}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)


end
return 1
end