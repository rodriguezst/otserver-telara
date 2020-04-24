--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.actionid == 7061 then

local pos = getPlayerPosition(cid)
local tppos = {x=457, y=677, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 12)

end
return 1
end