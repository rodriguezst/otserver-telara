function onStepIn(cid, item, pos)
if item.uid == 13404 then
		if getPlayerStorageValue(cid, 13402) == -1 then
doPlayerSendTextMessage(cid,25,"You must complete this seal to pass.")

local pos = getPlayerPosition(cid)
local tppos1 = {x=222, y=1717, z=7}
doTeleportThing(cid,tppos1)
else
local pos = getPlayerPosition(cid)
local tppos = {x=196, y=1836, z=6}
doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
return 0
end
return 1
end
end