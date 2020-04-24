local config = {
	[9401] = 1,
	[9402] = 2,
	[9403] = 3,
	[9404] = 4,
	[9405] = 5,
	[9406] = 6,
	[9407] = 7,
	[9408] = 8,
	[9409] = 9,
	[9410] = 10,
	[9411] = 14,
	[9412] = 12,
	[9413] = 13
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local townId = config[item.uid]
	if not townId then
		return true
	end

	local town = Town(townId)
	if not town then
		return true
	end

--	if town:getId() == 12 and player:getStorageValue(Storage.BarbarianTest.Questline) < 8 then
--		player:sendTextMessage(MESSAGE_STATUS_WARNING, 'You first need to absolve the Barbarian Test Quest to become citizen!')
--		player:teleportTo(town:getTemplePosition())
--		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
--		return true
--	end

	player:setTown(town)
	player:teleportTo(town:getTemplePosition())
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You are now a citizen of ' .. town:getName() .. '.')
	return true
end
