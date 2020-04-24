local config = {
	requiredLevel = 80,
	daily = false,
	centerDemonRoomPosition = Position(918, 926, 12),
	playerPositions = {
		Position(877, 1128, 12)
	},
	newPositions = {
		Position(872, 1130, 13)
	},
	demonPositions = {
		Position(876, 1129, 13)
	}
}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1946 then
		local storePlayers, playerTile = {}

		for i = 1, #config.playerPositions do
			playerTile = Tile(config.playerPositions[i]):getTopCreature()
			if not playerTile or not playerTile:isPlayer() then
				return true
			end

			if playerTile:getLevel() < config.requiredLevel then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need level ".. config.requiredLevel .." or higher.")
				return true
			end

			storePlayers[#storePlayers + 1] = playerTile
		end

		local specs, spec = Game.getSpectators(config.centerDemonRoomPosition, false, false, 3, 3, 2, 2)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				return true
			end

			spec:remove()
		end

		for i = 1, #config.demonPositions do
			Game.createMonster("Beast Energy Elemental", config.demonPositions[i])
		end

		local players
		for i = 1, #storePlayers do
			players = storePlayers[i]
			config.playerPositions[i]:sendMagicEffect(CONST_ME_POFF)
			players:teleportTo(config.newPositions[i])
			config.newPositions[i]:sendMagicEffect(CONST_ME_ENERGYAREA)
			players:setDirection(DIRECTION_EAST)
		end
	elseif item.itemid == 1945 then
		if config.daily then
			player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_NOTPOSSIBLE))
			return true
		end
	end

	item:transform(item.itemid == 1946 and 1945 or 1946)
	return true
end
