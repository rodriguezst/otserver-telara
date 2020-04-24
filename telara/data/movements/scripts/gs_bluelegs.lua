--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 13020 then
		if getPlayerStorageValue(cid, 13019) == -1 then

local pos = getPlayerPosition(cid)
local tppos = {x=1499, y=1607, z=8}

doTeleportThing(cid,tppos)
doPlayerSendTextMessage(cid, 19, "If You want to pass You must make sacrefice.")
else


local pos = getPlayerPosition(cid)
local tppos1 = {x=1499, y=1609, z=8}

doTeleportThing(cid,tppos1)
end
end
return 1
end