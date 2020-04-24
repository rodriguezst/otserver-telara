--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 78002 then

local pos = getPlayerPosition(cid)
local tppos = {x=671, y=1191, z=12}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 17)


end
return 1
end