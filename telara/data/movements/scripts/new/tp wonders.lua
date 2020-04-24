--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60220 then

local pos = getPlayerPosition(cid)
local tppos = {x=1521, y=815, z=12}

doTeleportThing(cid,tppos)
		
if getPlayerStorageValue(cid, 60220) == -1 then 
local message = "Welcome to my world. Muahahahahaha!"
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 60220, 1)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)
else
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)

end
return 1
end
end