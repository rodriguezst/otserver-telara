function onUse(cid, item, frompos, item2, topos)
if item.uniqueid == 7921 then

local pos = getPlayerPosition(cid)
local tppos = {x=1010, y=960, z=14}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You entered the depths of the demons.")
end
return true
end