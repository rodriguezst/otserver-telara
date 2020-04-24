local config = {
	[9033] = {flamePosition = Position(963, 875, 15), toPosition = Position(959, 884, 15)}
}

function onAddItem(moveitem, tileitem, position)
	local targetCoalBasin = config[tileitem.actionid]
	if not targetCoalBasin then
		return true
	end

	if moveitem.itemid ~= 9916 then -- dead body nightstalker
		position:sendMagicEffect(CONST_ME_POFF)
		return true
	end

	moveitem:remove()
	position:sendMagicEffect(CONST_ME_HITBYFIRE)

	Tile(targetCoalBasin.flamePosition):relocateTo(targetCoalBasin.toPosition)
	targetCoalBasin.toPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end