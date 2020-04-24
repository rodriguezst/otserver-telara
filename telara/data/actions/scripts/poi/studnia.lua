
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isInArray(1386, item.actionid == 1000) then
		fromPosition:moveUpstairs()
	else
		fromPosition.z = fromPosition.z + 1
	end
	player:teleportTo(fromPosition, false)
	return true
end
