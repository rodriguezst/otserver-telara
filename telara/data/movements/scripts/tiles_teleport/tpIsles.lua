local config = {
	[64103] = Position(744, 1450, 7), -- {x = 33475, y = 32641, z = 10}
	[64104] = Position(740, 1422, 7), -- {x = 515, y = 532, z = 7}
	[64105] = Position(576, 1400, 7), -- {x = 33463, y = 32585, z = 8}
	[64106] = Position(645, 1638, 7), -- {x = 33457, y = 32580, z = 8}
	[64107] = Position(689, 1368, 7), -- {x = 33421, y = 32582, z = 8}
	[64108] = Position(632, 1415, 7), -- {x = 33430, y = 32600, z = 10}
	[64109] = Position(707, 1478, 7), -- {x = 33420, y = 32604, z = 10}
	[64120] = Position(657, 1470, 7) -- {x = 33446, y = 32616, z = 11}
	
	
	
	
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

	--if item.uid == 3206 and player:getStorageValue(Storage.TheShatteredIsles.AccessToLagunaIsland) ~= 1 then
	--	player:teleportTo(Position(32340, 32540, 7))
		--position:sendMagicEffect(CONST_ME_TELEPORT)
	--	Position(32340, 32540, 7):sendMagicEffect(CONST_ME_TELEPORT) 
	--	return true
--	end

	player:teleportTo(targetPosition)
	position:sendMagicEffect(CONST_ME_TELEPORT)
	targetPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end