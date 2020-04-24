--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60231 and getPlayerStorageValue(cid, 60230) == 1 then 

local pos = getPlayerPosition(cid)
local tppos = {x=1284, y=727, z=13}

doTeleportThing(cid,tppos)
  doSendMagicEffect(tppos,50)
  doSendMagicEffect(frompos,50)
setPlayerStorageValue(cid, 60231, 1)
else

	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)
doTeleportThing(cid,{x=1540, y=744, z=15})
addEvent(wait60,1)
end
end
function wait60(wall1pos)
doSendMagicEffect({x=1540, y=744, z=15}, CONST_ME_TELEPORT)
end