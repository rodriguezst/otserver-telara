local efeito = {x = 146, y = 286, z = 6}
function onStepIn(cid, item, position, lastPosition)
	if item.actionid == 13309 and getPlayerStorageValue(cid,13309) == -1 then
		doCreatureSay(cid, 'Muahaha..',TALKTYPE_ORANGE_1)
		doSendMagicEffect(efeito, 61)
		setPlayerStorageValue(cid,13309,1)
	end
	return true
end