function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local stonePosition = Position(1847, 215, 10)
	local stoneItem, leverItem = Tile(stonePosition):getItemById(1304), Tile(Position(1848, 201, 10)):getItemById(1946)
	if not stoneItem and leverItem then
		Game.createItem(1304, 1, stonePosition)
		leverItem:transform(1945)
		player:say('You hear a rumbling from far away.', TALKTYPE_MONSTER_SAY, false, player)
	end

	return true
end