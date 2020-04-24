local config = {
	[16772] = Position(1806, 353, 15),
	[16773] = Position(1797, 418, 15),
	[16774] = Position(1826, 174, 12),
	[50082] = Position(1797, 405, 14),
	[50083] = Position(1797, 405, 14)
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local targetPosition = config[item.actionid]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	return true
end