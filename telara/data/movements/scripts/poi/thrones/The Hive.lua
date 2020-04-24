function onStepIn(cid, item, pos)
if item.uid == 13408 then
		if getPlayerStorageValue(cid, 13404) == -1 then
doPlayerSendTextMessage(cid,25,"You must complete this seal to pass.")

local pos = getPlayerPosition(cid)
local tppos1 = {x=213, y=1722, z=7}
doTeleportThing(cid,tppos1)
else
local pos = getPlayerPosition(cid)
local tppos = {x=398, y=1928, z=5}
doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
return 0
end
return 1
end
end