--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 49340 then

local pos = getPlayerPosition(cid)
local tppos = {x=1424, y=1161, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 17)


end
return 1
end