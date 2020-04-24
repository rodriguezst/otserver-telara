--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13008 then

local pos = getPlayerPosition(cid)
local tppos = {x=960, y=888, z=13}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)


end
return 1
end