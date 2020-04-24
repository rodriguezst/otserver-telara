--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60227 then
if getPlayerStorageValue(cid, 60231) == -1 and getPlayerStorageValue(cid, 60230) == 1 then 
doTeleportThing(cid,{x=1541, y=744, z=15})
local message = "You solved the riddle. Why are you running out?"
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 60231, 1)
else

local pos = getPlayerPosition(cid)
local tppos = {x=1541, y=813, z=15}

doTeleportThing(cid,tppos)
end
return 1
end
end