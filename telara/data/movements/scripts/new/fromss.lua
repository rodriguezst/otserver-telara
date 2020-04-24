--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60091 then

local pos = getPlayerPosition(cid)
local tppos = {x=432, y=574, z=8}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 53)


end
return 1
end