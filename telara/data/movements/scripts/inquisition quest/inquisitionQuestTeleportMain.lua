local teleports2 = {
	[2150] = {text = "Entering Ushuriel's ward.", newPos = {x = 1898, y = 643, z = 10}}, -- to ushuriel ward
}

local teleports = {
	[2151] = {boss = true, text = "Entering the Crystal Caves.", bossStorage = 200, newPos = {x = 1903, y = 875, z = 11}, storage = 1}, -- from ushuriel ward
	[2152] = {text = "Entering the Retreat.", newPos = {x = 1756, y = 920, z = 13}}, -- from crystal caves
	[2153] = {text = "Entering the Crystal Caves.", newPos = {x = 1903, y = 875, z = 11}, storage = 1}, -- to crystal caves
	[2154] = {text = "Entering the Sunken Caves.", newPos = {x = 1902, y = 785, z = 11}}, -- to sunken caves
	[2155] = {text = "Entering the Mirror Maze of Madness.", newPos = {x = 1895, y = 863, z = 8}}, -- from sunken caves
	[2156] = {text = "Entering Zugurosh's ward.", newPos = {x = 1930, y = 642, z = 10}}, -- to zugurosh ward
	[2157] = {boss = true, text = "Entering the Blood Halls.", bossStorage = 201, newPos = {x = 1831, y = 775, z = 11}, storage = 2}, -- from zugurosh ward
	[2158] = {text = "Entering the Retreat.", newPos = {x = 1771, y = 920, z = 13}}, -- from blood halls
	[2159] = {text = "Entering the Blood Halls.", newPos = {x = 1831, y = 775, z = 11}, storage = 2}, -- to blood halls
	[2160] = {text = "Entering the Foundry.", newPos = {x = 1854, y = 747, z = 9}}, -- to foundry
	[2161] = {text = "Entering Madareth's ward.", newPos = {x = 1912, y = 680, z = 10}}, -- to madareth ward
	[2162] = {boss = true, text = "Entering the Vats.", bossStorage = 202, newPos = {x = 1890, y = 728, z = 11}, storage = 3}, -- from madareth ward
	[2163] = {text = "Entering the Retreat.", newPos = {x = 1771, y = 927, z = 13}}, -- from vats
	[2164] = {text = "Entering the Vats.", newPos = {x = 1890, y = 728, z = 11}, storage = 3}, -- to vats
	[2165] = {text = "Entering the Battlefield.", newPos = {x = 1893, y = 651, z = 11}}, -- to battlefield
	[2166] = {text = "Entering the Vats.", newPos = {x = 1970, y = 704, z = 11}}, -- from battlefield
	[2167] = {text = "Entering the Demon Forge.", newPos = {x = 1946, y = 683, z = 10}}, -- to brothers ward
	[2168] = {boss = true, text = "Entering the Arcanum.", bossStorage = 203, newPos = {x = 1967, y = 784, z = 10}, storage = 4}, -- from demon forge
	[2169] = {text = "Entering the Retreat.", newPos = {x = 1763, y = 928, z = 13}}, -- from arcanum
	[2170] = {text = "Entering the Arcanum.", newPos = {x = 1967, y = 784, z = 10}, storage = 4}, -- to arcanum
	[2171] = {text = "Entering the Soul Wells.", newPos = {x = 2054, y = 728, z = 10}}, -- to soul wells
	[2172] = {text = "Entering the Arcanum.", newPos = {x = 2041, y = 735, z = 10}}, -- from soul wells
	[2173] = {text = "Entering the Annihilon's ward.", newPos = {x = 1987, y = 642, z = 10}}, -- to annihilon ward
	[2174] = {boss = true, text = "Entering the Hive.", bossStorage = 204, newPos = {x = 398, y = 1931, z = 5}, storage = 5}, -- from annihilon ward
	[2175] = {text = "Entering the Retreat.", newPos = {x = 1756, y = 927, z = 13}}, -- from hive
	[2176] = {text = "Entering the Hive.", newPos = {x = 398, y = 1931, z = 5}, storage = 5}, -- to hive
	[2177] = {text = "Entering the Hellgorak's ward.", newPos = {x = 1992, y = 684, z = 10}}, -- to hellgorak ward
	[2178] = {boss = true, text = "Entering the Shadow Nexus.", bossStorage = 205, newPos = {x = 1831, y = 688, z = 11}, storage = 6}, -- from hellgorak ward
	[2179] = {text = "Entering the Retreat.", newPos = {x = 1759, y = 923, z = 13}}, -- from shadow nexus
	[2180] = {text = "Entering the Blood Halls.", newPos = {x = 1816, y = 752, z = 9}} -- from foundry to blood halls
}

function onStepIn(cid, item, position, lastPosition)
	if (item.uid == 2150) then
		doTeleportThing(cid, teleports2[item.uid].newPos)
		doSendMagicEffect(teleports2[item.uid].newPos, CONST_ME_TELEPORT)
		doCreatureSay(cid, teleports2[item.uid].text, TALKTYPE_ORANGE_1)
		return true	
	end
	if(teleports[item.uid].boss) then
		if(getGlobalStorageValue(teleports[item.uid].bossStorage) == 2) then
			if(getPlayerStorageValue(cid,1050) <= teleports[item.uid].storage) then
				setPlayerStorageValue(cid, 1050, teleports[item.uid].storage)
			end
			doTeleportThing(cid, teleports[item.uid].newPos)
			doSendMagicEffect(teleports[item.uid].newPos, CONST_ME_TELEPORT)
			doCreatureSay(cid, teleports[item.uid].text, TALKTYPE_ORANGE_1)
		else
			doTeleportThing(cid, {x = 436, y = 607, z = 14})
			doSendMagicEffect({x = 436, y = 607, z = 14}, CONST_ME_TELEPORT)
			doCreatureSay(cid, "Entering the Retreat.", TALKTYPE_ORANGE_1)
		end
		return true
	end
	
	if(teleports[item.uid].storage) then
		if(getPlayerStorageValue(cid, 1050) >= teleports[item.uid].storage) then
			doTeleportThing(cid, teleports[item.uid].newPos)
			doSendMagicEffect(teleports[item.uid].newPos, CONST_ME_TELEPORT)
			doCreatureSay(cid, teleports[item.uid].text, TALKTYPE_ORANGE_1)
		else
			doTeleportThing(cid, lastPosition)
			doSendMagicEffect(getCreaturePosition(cid),10)
			doCreatureSay(cid, 'You don\'t have enough energy to enter this portal', TALKTYPE_ORANGE_1)
		end
		return true
	end

	if(teleports[item.uid]) then
		doTeleportThing(cid, teleports[item.uid].newPos)
		doSendMagicEffect(teleports[item.uid].newPos, CONST_ME_TELEPORT)
		doCreatureSay(cid, teleports[item.uid].text, TALKTYPE_ORANGE_1)
		return true
	end
	return true
end
