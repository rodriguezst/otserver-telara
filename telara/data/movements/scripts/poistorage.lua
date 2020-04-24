function onStepIn(cid, item, pos)
if isPlayer(cid) then
	setPlayerStorageValue(cid, 37005, 1)
end
return true
end