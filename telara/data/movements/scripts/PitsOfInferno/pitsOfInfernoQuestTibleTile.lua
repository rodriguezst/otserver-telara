local destinations = {
	[2000] = Position(1789, 266, 10),
	[2001] = Position(1789, 261, 10)
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:getItemCount(1970) < 1 then
		player:teleportTo(fromPosition)
		return true
	end

	player:teleportTo(destinations[item.uid])
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end
