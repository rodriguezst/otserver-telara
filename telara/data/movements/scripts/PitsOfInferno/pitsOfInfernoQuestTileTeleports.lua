local config = {
	[13200] = Position(1825, 248, 9),
	[13201] = Position(1837, 258, 9),
	[13202] = Position(1842, 241, 9),
	[13203] = Position(1853, 230, 9),
	[13204] = Position(1838, 251, 9),
	[13205] = Position(1852, 257, 9),
	[13206] = Position(1856, 230, 9),
	[13207] = Position(1854, 222, 9),
	
	[28834] = Position(1852, 253, 9)
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
	return true
end
