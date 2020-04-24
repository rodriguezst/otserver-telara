--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60413 then

local pos = getPlayerPosition(cid)
local tppos = {x=742, y=795, z=13}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 16)


end
return 1
end