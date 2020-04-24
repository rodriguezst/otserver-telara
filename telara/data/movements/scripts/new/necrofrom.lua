--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60402 then

local pos = getPlayerPosition(cid)
local tppos = {x=1050, y=577, z=8}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 11)

end
return 1
end