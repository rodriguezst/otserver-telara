local config = {
	requiredLevel = 100,
	daily = false,
	centerDemonRoomPosition = Position(782, 1094, 13),
	playerPositions = {
		Position(678, 1593, 8),
		Position(678, 1594, 8),
		Position(678, 1595, 8),
		Position(678, 1596, 8)
	},
	newPositions = {
		Position(575, 1580, 8),
		Position(574, 1580, 8),
		Position(573, 1580, 8),
		Position(572, 1580, 8)
	},
	demonPositions = {
		Position(672, 1578, 8),
		Position(674, 1578, 8),
		Position(673, 1582, 8),
		Position(675, 1582, 8),
		Position(676, 1580, 8),
		Position(677, 1580, 8)
	}
}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
   if item.itemid == 1946 then
       local storePlayers, playerTile = {}
 
       for i = 1, #config.playerPositions do
           playerTile = Tile(config.playerPositions[i]):getTopCreature()
           if not playerTile or not playerTile:isPlayer() then
               player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need 4 players.")
               return true
           end
 
           if playerTile:getLevel() < config.requiredLevel then
               player:sendTextMessage(MESSAGE_STATUS_SMALL, "All the players need to be level ".. config.requiredLevel .." or higher.")
               return true
           end
 
           storePlayers[#storePlayers + 1] = playerTile
       end
 
       if #Game.getSpectators(config.centerDemonRoomPosition, false, true, 3, 3, 2, 2) > 0 then
           player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
           return true
       end
 
       local specs, spec = Game.getSpectators(config.centerDemonRoomPosition, false, false, 3, 3, 2, 2)
       for i = 1, #specs do
           spec = specs[i]
           if spec:isMonster() then
               spec:remove()
           end
       end
 
       for i = 1, #config.demonPositions do
           Game.createMonster("Demon", config.demonPositions[i])
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
