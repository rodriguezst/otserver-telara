local config = {
	[9238] = Position(223, 1297, 8),
	[9239] = Position(185, 1305, 8)
}

function onStepIn(cid, item, position, fromPosition)
	local player = Player(cid)
	if not player then
		return true
	end

	local targetPosition = config[item.actionid]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	targetPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You dive into the vortex to swim below the rocks to the other side of the cave.')
	return true
end