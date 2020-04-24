--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 5009 then

local pos = getPlayerPosition(cid)
local tppos = {x=572, y=687, z=7}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 11)

end
return 1
end