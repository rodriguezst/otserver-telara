function onUse(cid, item, frompos, item2, topos)
if item.actionid == 60010 then

local pos = getPlayerPosition(cid)
local tppos = {x=826, y=1114, z=13}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 11)


end
return true
end