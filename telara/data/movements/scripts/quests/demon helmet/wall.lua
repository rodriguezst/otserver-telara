local positions = {
	Position(811, 1080, 11),
	Position(813, 1080, 11)
}

local wallPositions = {
	Position(774, 1111, 13)
}

function onStepIn(creature, item, position, fromPosition)
	for i = 1, #positions do
		local creature = Tile(positions[i]):getTopCreature()
		if not creature or not creature:isPlayer() then
			return true
		end
	end

	for i = 1, #wallPositions do
		local wallItem = Tile(wallPositions[i]):getItemById(1498)
		if wallItem then
			wallItem:remove()
			addEvent(Game.createItem, 5 * 60 * 1000, 1498, 1, wallPositions[i])
		end
	end
	return true
end