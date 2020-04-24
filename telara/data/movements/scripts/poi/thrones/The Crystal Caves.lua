function onStepIn(cid, item, pos)
if item.uid == 13400 then
		if getPlayerStorageValue(cid, 13400) == -1 then
doPlayerSendTextMessage(cid,25,"You must complete this seal to pass.")

local pos = getPlayerPosition(cid)
local tppos1 = {x=217, y=1710, z=7}
doTeleportThing(cid,tppos1)
else
local pos = getPlayerPosition(cid)
local tppos = {x=324, y=1768, z=5}
doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
return 0
end
return 1
end
end