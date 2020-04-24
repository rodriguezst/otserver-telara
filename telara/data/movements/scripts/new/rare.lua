--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60228 then

doCreatureAddHealth(cid,-30000)
local message = "WAAAAAAAAAAAAAAAAAAAAAAAAAAAH!"
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
	doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREA)

end
end