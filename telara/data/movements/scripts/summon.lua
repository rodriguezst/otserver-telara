local config = {	
	MonsterEast1 = {
		Position(954, 885, 15), 
        Position(954, 887, 15),
        Position(954, 889, 15),
        Position(954, 891, 15),
		Position(954, 893, 15),
		Position(954, 895, 15)
    },	
	MonsterWest1 = {
		Position(962, 885, 15), 
        Position(962, 887, 15),
        Position(962, 889, 15),
        Position(962, 891, 15),
		Position(962, 893, 15),
		Position(962, 895, 15)
    },

	
	
	MonsterEast2 = {
		Position(954, 897, 15),
		Position(954, 899, 15),
		Position(954, 901, 15),
		Position(954, 903, 15),
		Position(954, 905, 15)
    },		
	MonsterWest2 = {
		Position(962, 897, 15),
		Position(962, 899, 15),
		Position(962, 901, 15),
		Position(962, 903, 15),
		Position(962, 905, 15)
    },

	
	MonsterEast3 = {
		Position(954, 907, 15),
        Position(954, 909, 15),
		Position(954, 911, 15),
		Position(954, 913, 15),
		Position(954, 915, 15)
    },	
	MonsterWest3 = {
		Position(962, 907, 15),
        Position(962, 909, 15),
		Position(962, 911, 15),
		Position(962, 913, 15),
		Position(962, 915, 15)
    },
	
	effectEnergy = CONST_ME_ENERGY,
	effectFire = CONST_ME_FIRE,
	effectPoison = CONST_ME_EARTH
}

function onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
	
	
if item.actionid == 13005 then
	if player:getStorageValue(13005) < 1 then
			for i = 1, #config.MonsterWest1 do
				Game.createMonster("Minotaur Archer", config.MonsterWest1[i])
			end
			for i = 1, #config.MonsterEast1 do
				Game.createMonster("Minotaur Archer", config.MonsterEast1[i])
			end
		player:setStorageValue(13005, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You pass on a trap!! Some archers appears! Be aware.')
		doSendMagicEffect(config.MonsterWest1, config.effectEnergy, cid)
		doSendMagicEffect(config.MonsterEast1, config.effectEnergy, cid)
	end
	return true
end
	
if item.actionid == 13006 then
		if	player:getStorageValue(13006) < 1 then
			for i = 1, #config.MonsterWest2 do
				Game.createMonster("Fire Elemental", config.MonsterWest2[i])
			end
			for i = 1, #config.MonsterEast2 do
				Game.createMonster("Fire Elemental", config.MonsterEast2[i])
			end
		player:setStorageValue(13006, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You pass on a trap!! Some Fire elementas appeats! Be aware.')
		doSendMagicEffect(config.MonsterWest2, config.effectFire, cid)
		doSendMagicEffect(config.MonsterEast2, config.effectFire, cid)
	end	
	return true
end	
if item.actionid == 13007 then
		if player:getStorageValue(13007) < 1 then
			for i = 1, #config.MonsterWest3 do
				Game.createMonster("Fire Elemental", config.MonsterWest3[i])
			end
			for i = 1, #config.MonsterEast3 do
				Game.createMonster("Fire Elemental", config.MonsterEast3[i])
			end
		player:setStorageValue(13007, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You pass on a trap!! More Fire elementals come! Be aware.')
		doSendMagicEffect(config.MonsterWest3, config.effectFire, cid)
		doSendMagicEffect(config.MonsterEast3, config.effectFire, cid)
	end
	return true
end
end


	

		
		
	




