local config = {
	requiredLevel = 1,
	daily = false,
	CheckPlayerInside = Position(1070, 1834, 7),
	playerPositions = {
		Position(1033, 1041, 7)
		--Position(1048, 1801, 7),
		--Position(1048, 1802, 7),
		--Position(1048, 1803, 7)
	},
	
	
	LeverPosPOFF = {
		Position(1035, 1039, 7)
	},
	PlayerPos1POFF = {
		Position(1035, 1040, 7)
	},
	PlayerPos2POFF = {
		Position(1035, 1041, 7)
	},
	PlayerPos3POFF = {
		Position(1035, 1042, 7)
	},
	PlayerPos4POFF = {
		Position(1035, 1043, 7)
	},
	
	
	
	newPositions = {
		Position(1046, 1796, 7)
		--Position(1047, 1796, 7),
		--Position(1048, 1796, 7),
		--Position(1049, 1796, 7)
	},
	
	{fromPosition = Position(1033, 1041, 7), toPosition = Position(1046, 1796, 7), vocationId = 1},
	--{fromPosition = Position(1035, 1041, 7), toPosition = Position(1047, 1796, 7), vocationId = 2},
	--{fromPosition = Position(1035, 1042, 7), toPosition = Position(1048, 1796, 7), vocationId = 3},
	--{fromPosition = Position(1035, 1043, 7), toPosition = Position(1049, 1796, 7), vocationId = 4},
	
	
	blood = {
		Position(1047, 1794, 7), 
        Position(1052, 1787, 7),
        Position(1059, 1779, 7),
        Position(1064, 1788, 7),
		Position(1076, 1790, 7),
		Position(1083, 1796, 7),
		Position(1096, 1797, 7),
		Position(1082, 1802, 7),
		Position(1097, 1805, 7),
		Position(1089, 1821, 7),
		Position(1074, 1803, 7),
		Position(1078, 1810, 7),
        Position(1089, 1812, 7),
		Position(1074, 1817, 7),
		Position(1092, 1819, 7),
		Position(1095, 1825, 7),
		Position(1077, 1823, 7),
		Position(1106, 1833, 7),
		Position(1104, 1840, 7),
		Position(1094, 1833, 7),
		Position(1088, 1836, 7), 
        Position(1087, 1842, 7),
        Position(1059, 1779, 7),
        Position(1081, 1832, 7),
		Position(1069, 1835, 7),
		Position(1084, 1847, 7),
		Position(1077, 1848, 7),
		Position(1068, 1842, 7),
		Position(1097, 1805, 7),
		Position(1062, 1837, 7),
		Position(1069, 1851, 7),
		Position(1072, 1856, 7),
        Position(1065, 1863, 7),
		Position(1062, 1868, 7),
		Position(1060, 1875, 7),
		Position(1050, 1865, 7),
		Position(1041, 1865, 7),
		Position(1033, 1864, 7),
		Position(1024, 1851, 7),
		Position(1020, 1842, 7),
		Position(1035, 1847, 7),
		Position(1037, 1838, 7),
		Position(1029, 1833, 7),
        Position(1039, 1832, 7),
		Position(1048, 1831, 7),
		Position(1053, 1835, 7),
		Position(1056, 1844, 7)
    },

    glooth = {
		Position(1050, 1790, 7), 
        Position(1063, 1784, 7),
        Position(1077, 1792, 7),
        Position(1068, 1799, 7),
		Position(1089, 1795, 7),
		Position(1083, 1801, 7),
		Position(1077, 1806, 7),
		Position(1090, 1810, 7),
		Position(1091, 1819, 7),
		Position(1057, 1821, 7),
		Position(1095, 1827, 7),
		Position(1073, 1831, 7),
        Position(1092, 1834, 7),
		Position(1106, 1833, 7),
		Position(1086, 1843, 7),
		Position(1077, 1847, 7),
		Position(1064, 1837, 7),
		Position(1073, 1856, 7),
		Position(1056, 1845, 7),
		Position(1063, 1863, 7),
		Position(1062, 1874, 7), 
        Position(1054, 1866, 7),
        Position(1043, 1876, 7),
        Position(1046, 1868, 7),
		Position(1034, 1867, 7),
		Position(1038, 1860, 7),
		Position(1024, 1858, 7),
		Position(1045, 1852, 7),
		Position(1055, 1845, 7),
		Position(1053, 1834, 7),
		Position(1069, 1851, 7),
		Position(1041, 1832, 7),
        Position(1027, 1833, 7),
		Position(1018, 1843, 7)
    },
	
    empowered = {
		Position(1058, 1779, 7), 
        Position(1064, 1778, 7),
        Position(1066, 1791, 7),
        Position(1073, 1790, 7),
		Position(1068, 1803, 7),
		Position(1102, 1808, 7),
		Position(1094, 1806, 7),
		Position(1078, 1809, 7),
		Position(1090, 1816, 7),
		Position(1070, 1819, 7),
		Position(1079, 1829, 7),
		Position(1088, 1836, 7),
        Position(1104, 1840, 7),
		Position(1086, 1848, 7),
		Position(1069, 1860, 7),
		Position(1068, 1851, 7),
		Position(1058, 1877, 7),
		Position(1050, 1863, 7),
		Position(1055, 1856, 7),
		Position(1046, 1857, 7),
		Position(1037, 1852, 7), 
        Position(1023, 1854, 7),
        Position(1030, 1848, 7),
        Position(1061, 1842, 7),
		Position(1054, 1840, 7),
		Position(1037, 1834, 7),
		Position(1022, 1833, 7)
    },
}


function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1946 then
		local storePlayers, playerTile = {}

		

		
		
		for i = 1, #config.playerPositions do
			playerTile = Tile(config.playerPositions[i]):getTopCreature()
			if not playerTile or not playerTile:isPlayer() then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need 4 players.")
				config.LeverPosPOFF[i]:sendMagicEffect(CONST_ME_POFF)
				return true
			end

			if playerTile:getLevel() < config.requiredLevel then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "All the players need to be level ".. config.requiredLevel .." or higher.")
				config.LeverPosPOFF[i]:sendMagicEffect(CONST_ME_POFF)
				return true
			end
			
			
		local playerTile = Tile(config[i].fromPosition):getTopCreature()
			if not playerTile or not playerTile:isPlayer() then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need one player of each vocation for this quest.")
				config.LeverPosPOFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos1POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos2POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos3POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos4POFF[i]:sendMagicEffect(CONST_ME_POFF)
			
				return true
			end

		local vocationId = playerTile:getVocation():getBase():getId()
			if vocationId ~= config[i].vocationId then
				player:sendTextMessage(MESSAGE_STATUS_SMALL, "You need a sorcerer, druid, paladin and knight on this order.")
				config.LeverPosPOFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos1POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos2POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos3POFF[i]:sendMagicEffect(CONST_ME_POFF)
				config.PlayerPos4POFF[i]:sendMagicEffect(CONST_ME_POFF)
			
				return true
			end
			
			
			storePlayers[#storePlayers + 1] = playerTile
		end

       if #Game.getSpectators(config.CheckPlayerInside, false, true, 65, 65, 65, 65) > 0 then
           player:sendTextMessage(MESSAGE_STATUS_SMALL, "A team is already inside the quest room.")
           return true
       end
 
       local specs, spec = Game.getSpectators(config.CheckPlayerInside, false, false, 65, 65, 65, 65)
       for i = 1, #specs do
           spec = specs[i]
           if spec:isMonster() then
               spec:remove()
           end
       end		


		for i = 1, #config.blood do
			Game.createMonster("Blood Swamp", config.blood[i])
		end

		for i = 1, #config.glooth do
			Game.createMonster("Glooth Swamp", config.glooth[i])
		end
		
		for i = 1, #config.empowered do
			Game.createMonster("Empowered Swamp", config.empowered[i])
		end

		local players
		for i = 1, #storePlayers do
			players = storePlayers[i]
			config.playerPositions[i]:sendMagicEffect(CONST_ME_POFF)
			players:teleportTo(config.newPositions[i])
			config.newPositions[i]:sendMagicEffect(CONST_ME_ENERGYAREA)
			players:setDirection(DIRECTION_NORTH)
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
