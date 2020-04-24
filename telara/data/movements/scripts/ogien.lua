function onStepIn(cid, item, fromPosition, itemEx, toPosition)
if isPlayer(cid) then
	doCreatureAddHealth(cid,-300)
	doSendMagicEffect(getCreaturePosition(cid), 47)
	doSendAnimatedText(getCreaturePosition(cid),"300",160)
	return true
end
end