local destination = {
	[24878] = {newPos = Position(1449, 1945, 11), backPos = Position(1460, 1951, 11)},
	[24879] = {newPos = Position(1256, 1904, 10), backPos = Position(1274, 1905, 10)}, 
	[24880] = {newPos = Position(1925, 2064, 10), backPos = Position(1943, 2046, 10)},
	[24882] = {newPos = Position(2162, 1670, 12), backPos = Position(2175, 1663, 12)}, 
	[24884] = {newPos = Position(32019, 32851, 14), backPos = Position(32035, 32859, 14)}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end

	local teleport = destination[item.uid]
	if not teleport then
		return
	end
	if player:getExhaustion(teleport.storage) <= 0 then
		if item.uid == 24882 then
			if player:getStorageValue(Storage.ForgottenKnowledge.BabyDragon) < 1 then
				player:teleportTo(teleport.backPos)
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You not have permission to use this teleport!")
				player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
				return true
			end
		end
		position:sendMagicEffect(CONST_ME_TELEPORT)
		player:teleportTo(teleport.newPos)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	else
		player:teleportTo(teleport.backPos)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have to wait to challange this enemy again!")
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end
	return true
end
