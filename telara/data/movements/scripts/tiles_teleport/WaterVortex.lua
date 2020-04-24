local config = {
	[9241] = Position(1648, 1597, 8),
	[9242] = Position(1576, 1477, 7)
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local targetPosition = config[item.uid]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	targetPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
	return true
end