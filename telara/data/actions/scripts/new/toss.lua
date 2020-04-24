--edit by Banco dla tnp --

function onUse(cid, item, pos)
if item.uid == 60090 then

local pos = getPlayerPosition(cid)
local tppos = {x=803, y=834, z=7}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 53)


end
return 1
end