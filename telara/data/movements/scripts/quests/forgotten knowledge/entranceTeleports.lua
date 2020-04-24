local destination = {
	[27715] = {newPos = Position(1404, 1920, 8), effect = CONST_ME_MORTAREA},
	[27716] = {newPos = Position(827, 873, 7), effect = CONST_ME_MORTAREA},
	[27719] = {newPos = Position(1601, 1902, 8), effect = CONST_ME_PURPLEENERGY},
	[27720] = {newPos = Position(829, 873, 7), effect = CONST_ME_PURPLEENERGY},
	[27717] = {newPos = Position(1159, 1973, 7), effect = CONST_ME_SMALLPLANTS},
	[27718] = {newPos = Position(831, 873, 7), effect = CONST_ME_SMALLPLANTS},
	[27721] = {newPos = Position(1265, 1953, 7), effect = CONST_ME_FIREAREA},
	[27722] = {newPos = Position(833, 873, 7), effect = CONST_ME_FIREAREA},
	[27725] = {newPos = Position(2064, 1608, 8), effect = CONST_ME_ICEATTACK},
	[27726] = {newPos = Position(835, 873, 7), effect = CONST_ME_ICEATTACK},
	[27723] = {newPos = Position(1595, 1767, 9), effect = CONST_ME_YELLOWENERGY},
	[27724] = {newPos = Position(837, 873, 7), effect = CONST_ME_YELLOWENERGY},
	[11796] = {newPos = Position(1721, 1929, 8), effect = CONST_ME_ENERGYHIT},
	[11798] = {newPos = Position(833, 876, 7), effect = CONST_ME_ENERGYHIT}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.itemid]
	if not teleport then
		return
	end

	position:sendMagicEffect(teleport.effect)
	player:teleportTo(teleport.newPos)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

