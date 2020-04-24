--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60403 then

local pos = getPlayerPosition(cid)
local tppos = {x=1147, y=597, z=9}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 11)
			
end
return 1
end