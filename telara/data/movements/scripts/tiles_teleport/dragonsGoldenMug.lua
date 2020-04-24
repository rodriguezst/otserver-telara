function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if item.uid == 2241 then
		if player:getItemCount(2033) > 0 then
			player:teleportTo(Position(1238, 1426, 12))
			player:removeItem(2033, 1)
		else
			player:teleportTo(fromPosition)
			doAreaCombatHealth(player, COMBAT_FIREDAMAGE, fromPosition, 0, -10, -20, CONST_ME_HITBYFIRE)
		end
	end

	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end