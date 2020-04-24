--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60230 then

local pos = getPlayerPosition(cid)
local tppos = {x=1541, y=744, z=15}

doTeleportThing(cid,tppos)
		
if getPlayerStorageValue(cid, 60230) == -1 then 
local message = "You finally done it. Go on the white tile to the north to continue your journey."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 60230, 1)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)
else
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREAREA)

end
return 1
end
end