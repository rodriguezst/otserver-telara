local bridgePosition = Position(1849, 243, 11)
local relocatePosition = Position(1850, 244, 11)
local dirtIds = {4808, 4810}

function onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return true
	end

	local tile = Tile(bridgePosition)
	local lavaItem = tile:getItemById(598)
	if lavaItem then
		lavaItem:transform(1284)

		local dirtItem
		for i = 1, #dirtIds do
			dirtItem = tile:getItemById(dirtIds[i])
			if dirtItem then
				dirtItem:remove()
			end
		end
	end
	return true
end

function onStepOut(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return true
	end

	local tile = Tile(bridgePosition)
	local bridgeItem = tile:getItemById(1284)
	if bridgeItem then
		tile:relocateTo(relocatePosition)
		bridgeItem:transform(598)

		for i = 1, #dirtIds do
			Game.createItem(dirtIds[i], 1, bridgePosition)
		end
	end
	return true
end