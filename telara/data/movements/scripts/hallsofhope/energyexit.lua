function onStepIn(creature, item, position, fromPosition)

    local player = creature:getPlayer()
	local storageQuest = 10138

	if player:getStorageValue(storageQuest) >= 0 then
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
			player:teleportTo({x = 833, y = 876, z = 7})
    end
    return true
end