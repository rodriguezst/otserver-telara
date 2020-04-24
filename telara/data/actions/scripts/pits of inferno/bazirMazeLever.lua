function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local portal = Tile(Position(1814, 277, 13)):getItemById(1387)
	if not portal then
		local item = Game.createItem(1387, 1, Position(1814, 277, 13))
		if item:isTeleport() then
			item:setDestination(Position(1801, 333, 15))
		end
	else
		portal:remove()
	end
	item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end