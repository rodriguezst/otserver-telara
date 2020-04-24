--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60222 then

local pos = getPlayerPosition(cid)
local tppos = {x=1525, y=804, z=13}

doTeleportThing(cid,tppos)
		
if getPlayerStorageValue(cid, 60222) == -1 then 
local message = "Remember that this is not your home! STAY AWAY FROM THE TREASURES OR ELSE!"
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 60222, 1)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)
else
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)

end
return 1
end
end