--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60224 then

local pos = getPlayerPosition(cid)
local tppos = {x=1541, y=816, z=15}

doTeleportThing(cid,tppos)
		
if getPlayerStorageValue(cid, 60224) == -1 then 
local message = "I will miss you..."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 60224, 1)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)
else
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)

end
return 1
end
end