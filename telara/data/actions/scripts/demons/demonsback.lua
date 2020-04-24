function onUse(cid, item, frompos, item2, topos)
if item.uniqueid == 7922 then

local pos = getPlayerPosition(cid)
local tppos = {x=842, y=924, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
end
return true
end