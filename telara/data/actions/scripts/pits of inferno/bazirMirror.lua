local config = {
	[39511] = {
		fromPosition = Position(1791, 403, 14),
		toPosition = Position(1791, 402, 14)
	},
	[39512] = {
		teleportPlayer = true,
		fromPosition = Position(1791, 402, 14),
		toPosition = Position(1791, 403, 14)
	}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local useItem = config[item.actionid]
	if not useItem then
		return true
	end

	if useItem.teleportPlayer then
		player:teleportTo(Position(1763, 403, 13))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:say('Beauty has to be rewarded! Muahahaha!', TALKTYPE_MONSTER_SAY)
	end

	local tapestry = Tile(useItem.fromPosition):getItemById(6434)
	if tapestry then
		tapestry:moveTo(useItem.toPosition)
	end
	return true
end