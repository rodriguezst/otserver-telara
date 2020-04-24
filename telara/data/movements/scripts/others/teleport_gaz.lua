function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if player == nil then
		return false
	end

	local monster = Creature("Gaz'Haragoth")
	if monster then
		player:teleportTo(monster:getPosition())
	else
		player:teleportTo(fromPosition)
	end

	return true
end