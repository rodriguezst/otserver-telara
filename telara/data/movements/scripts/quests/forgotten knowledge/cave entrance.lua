
function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end
	local pos = item:getPosition()
	if pos.z == 5 then
		player:teleportTo(Position(2033, 1961, 8))
	elseif  pos.z == 8 then
		player:teleportTo(Position(1258, 1936, 5))
	end
	player:setDirection(SOUTH)
	return true
end
