--edit by Banco dla tnp --
function onStepIn(cid, item, pos)
if item.uid == 60436 then
if getPlayerStorageValue(cid, 60436) == -1 then
local message = "You have touched this stone tile and absorbed some energy."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MORTAREA)
setPlayerStorageValue(cid, 60436, 1)
else
end
end
end