local config = {
	{storageKey = 10028, teleportPosition = Position(971, 972, 5)}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	for i = 1, #config do
		local table = config[i]
		if player:getStorageValue(table.storageKey) >= 1 then
			player:teleportTo(table.teleportPosition)
			table.teleportPosition:sendMagicEffect(CONST_ME_TELEPORT)
			player:setStorageValue(table.storageKey, 0)
			return true
		end
	end

	player:teleportTo(player:getTown():getTemplePosition())
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
