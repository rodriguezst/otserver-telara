function onUse(cid, item, frompos, item2, topos)
if item.actionid == 60011 then

local pos = getPlayerPosition(cid)
local tppos = {x=853, y=1108, z=13}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 6)


end
return 1
end