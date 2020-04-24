local function roomIsOccupied(centerPosition, rangeX, rangeY)
	local spectators = Game.getSpectators(centerPosition, false, true, rangeX, rangeX, rangeY, rangeY)
	if #spectators ~= 0 then
		return true
	end

	return false
end

function clearBossRoom(playerId, bossId, centerPosition, rangeX, rangeY, exitPosition)
	local spectators, spectator = Game.getSpectators(centerPosition, false, false, rangeX, rangeX, rangeY, rangeY)
	for i = 1, #spectators do
		spectator = spectators[i]
		if spectator:isPlayer() and spectator.uid == playerId then
			spectator:teleportTo(exitPosition)
			exitPosition:sendMagicEffect(CONST_ME_TELEPORT)
		end

		if spectator:isMonster() and spectator.uid == bossId then
			spectator:remove()
		end
	end
end

local bosses = {
	[3230] = {bossName = 'the snapper', storage = 35000, playerPosition = Position(32610, 32723, 8), bossPosition = Position(32617, 32732, 8), centerPosition = Position(32613, 32727, 8), rangeX = 5, rangeY = 5, flamePosition = Position(32612, 32733, 8)},
	[3231] = {bossName = 'hide', storage = 35001, playerPosition = Position(32815, 32703, 8), bossPosition = Position(32816, 32712, 8), centerPosition = Position(32816, 32707, 8), rangeX = 6, rangeY = 5, flamePosition = Position(32810, 32704, 8)},
	[3232] = {bossName = 'deathbine', storage = 35002, playerPosition = Position(616, 1556, 8), bossPosition = Position(615, 1540, 8), centerPosition = Position(617, 1545, 8), rangeX = 9, rangeY = 13, flamePosition = Position(627, 1548, 8)},
	[3233] = {bossName = 'the bloodtusk', storage = 35003, playerPosition = Position(32102, 31124, 2), bossPosition = Position(32102, 31134, 2), centerPosition = Position(32101, 31129, 2), rangeX = 5, rangeY = 6, flamePosition = Position(32093, 31130, 2)},
	[3234] = {bossName = 'shardhead', storage = 35004, playerPosition = Position(335, 305, 9), bossPosition = Position(338, 298, 9), centerPosition = Position(338, 304, 9), rangeX = 5, rangeY = 7, flamePosition = Position(332, 305, 9)},
	[3235] = {bossName = 'esmeralda', storage = 35005, playerPosition = Position(32759, 31252, 9), bossPosition = Position(32759, 31258, 9), centerPosition = Position(32759, 31254, 9), rangeX = 4, rangeY = 4, flamePosition = Position(32758, 31248, 9)},
	[3236] = {bossName = 'fleshcrawler', storage = 35006, playerPosition = Position(33100, 32785, 11), bossPosition = Position(33121, 32797, 11), centerPosition = Position(33112, 32789, 11), rangeX = 15, rangeY = 13, flamePosition = Position(33106, 32775, 11)},
	[3237] = {bossName = 'ribstride', storage = 35007, playerPosition = Position(33012, 32813, 13), bossPosition = Position(33013, 32801, 13), centerPosition = Position(33012, 32805, 13), rangeX = 10, rangeY = 9, flamePosition = Position(33018, 32814, 13)},
	[3238] = {bossName = 'bloodweb', storage = 35008, playerPosition = Position(255, 445, 8), bossPosition = Position(259, 438, 8), centerPosition = Position(179, 356, 8), rangeX = 8, rangeY = 8, flamePosition = Position(169, 356, 8)},
	[3239] = {bossName = 'thul', storage = 35009, playerPosition = Position(1515, 368, 11), bossPosition = Position(1518, 366, 11), centerPosition = Position(1518, 363, 11), rangeX = 6, rangeY = 6, flamePosition = Position(1518, 363, 11)},
	[3240] = {bossName = 'the old widow', storage = 35010, playerPosition = Position(1174, 1096, 8), bossPosition = Position(1171, 1096, 8), centerPosition = Position(1167, 1091, 8), rangeX = 8, rangeY = 8, flamePosition = Position(1167, 1091, 8)},
	[3241] = {bossName = 'hemming', storage = 35011, playerPosition = Position(32999, 31452, 8), bossPosition = Position(33013, 31441, 8), centerPosition = Position(33006, 31445, 8), rangeX = 9, rangeY = 7, flamePosition = Position(33005, 31437, 8)},
	[3242] = {bossName = 'tormentor', storage = 35012, playerPosition = Position(688, 240, 8), bossPosition = Position(701, 249, 8), centerPosition = Position(695, 246, 8), rangeX = 8, rangeY = 8, flamePosition = Position(695, 231, 8)},
	[3243] = {bossName = 'flameborn', storage = 35013, playerPosition = Position(1131, 1268, 9), bossPosition = Position(1140, 1260, 9), centerPosition = Position(1140, 1260, 9), rangeX = 11, rangeY = 10, flamePosition = Position(1140, 1260, 9)},
	[3244] = {bossName = 'fazzrah', storage = 35014, playerPosition = Position(643, 1614, 8), bossPosition = Position(643, 1610, 8), centerPosition = Position(638, 1603, 8), rangeX = 14, rangeY = 6, flamePosition = Position(638, 1603, 8)},
	[3245] = {bossName = 'tromphonyte', storage = 35015, playerPosition = Position(1392, 566, 8), bossPosition = Position(1387, 566, 8), centerPosition = Position(1382, 559, 8), rangeX = 11, rangeY = 18, flamePosition = Position(1382, 559, 8)},
	[3246] = {bossName = 'sulphur scuttler', storage = 35016, playerPosition = Position(1437, 1144, 9), bossPosition = Position(1441, 1141, 9), centerPosition = Position(1449, 1140, 9), rangeX = 11, rangeY = 11, flamePosition = Position(1449, 1140, 9)},
	[3247] = {bossName = 'bruise payne', storage = 35017, playerPosition = Position(33237, 31006, 2), bossPosition = Position(33266, 31016, 2), centerPosition = Position(33251, 31016, 2), rangeX = 22, rangeY = 11, flamePosition = Position(33260, 31003, 2)},
	[3248] = {bossName = 'the many', storage = 35018, playerPosition = Position(1268, 692, 8), bossPosition = Position(1265, 695, 8), centerPosition = Position(1263, 690, 8), rangeX = 5, rangeY = 6, flamePosition = Position(1263, 690, 8)},
	[3249] = {bossName = 'the noxious spawn', storage = 35019, playerPosition = Position(450, 1544, 10), bossPosition = Position(447, 1547, 10), centerPosition = Position(446, 1551, 10), rangeX = 5, rangeY = 5, flamePosition = Position(446, 1551, 10)},
	[3250] = {bossName = 'gorgo', storage = 35020, playerPosition = Position(408, 1365, 10), bossPosition = Position(407, 1359, 10), centerPosition = Position(399, 1357, 10), rangeX = 9, rangeY = 10, flamePosition = Position(399, 1357, 10)},
	[3251] = {bossName = 'stonecracker', storage = 35021, playerPosition = Position(1588, 1387, 15), bossPosition = Position(1591, 1389, 15), centerPosition = Position(1583, 1394, 15), rangeX = 5, rangeY = 7, flamePosition = Position(1583, 1394, 15)},
	[3252] = {bossName = 'leviathan', storage = 35022, playerPosition = Position(965, 387, 10), bossPosition = Position(961, 387, 10), centerPosition = Position(954, 381, 10), rangeX = 8, rangeY = 7, flamePosition = Position(954, 381, 10)},
	[3253] = {bossName = 'kerberos', storage = 35023, playerPosition = Position(1841, 547, 10), bossPosition = Position(1836, 539, 10), centerPosition = Position(1823, 535, 10), rangeX = 11, rangeY = 13, flamePosition = Position(1823, 535, 10)},
	[3254] = {bossName = 'ethershreck', storage = 35024, playerPosition = Position(1370, 495, 10), bossPosition = Position(1368, 485, 10), centerPosition = Position(1378, 483, 10), rangeX = 11, rangeY = 11, flamePosition = Position(1378, 483, 10)},
	[3255] = {bossName = 'paiz the pauperizer', storage = 35025, playerPosition = Position(1559, 1062, 4), bossPosition = Position(1563, 1060, 4), centerPosition = Position(1566, 1058, 4), rangeX = 8, rangeY = 6, flamePosition = Position(1566, 1058, 4)},
	[3256] = {bossName = 'bretzecutioner', storage = 35026, playerPosition = Position(469, 294, 8), bossPosition = Position(475, 286, 8), centerPosition = Position(469, 287, 8), rangeX = 15, rangeY = 10, flamePosition = Position(469, 276, 8)},
	[3257] = {bossName = 'zanakeph', storage = 35027, playerPosition = Position(1640, 1005, 12), bossPosition = Position(1637, 1010, 12), centerPosition = Position(1630, 1019, 12), rangeX = 13, rangeY = 10, flamePosition = Position(1630, 1019, 12)},
	[3258] = {bossName = 'demodras', storage = Storage.KillingInTheNameOf.DemodrasTeleport, playerPosition = Position(430, 954, 10), bossPosition = Position(422, 962, 10), centerPosition = Position(422, 962, 10), rangeX = 6, rangeY = 5, flamePosition = Position(422, 962, 10)},
	[3259] = {bossName = 'tiquandas revenge', storage = Storage.KillingInTheNameOf.TiquandasRevengeTeleport, playerPosition = Position(1222, 678, 5), bossPosition = Position(557, 1682, 5), centerPosition = Position(552, 1688, 5), rangeX = 8, rangeY = 7, flamePosition = Position(552, 1688, 5)},
	[17521] = {bossName = 'necropharus', storage = 17521, playerPosition = Position(1197, 696, 10), bossPosition = Position(1195, 692, 10), centerPosition = Position(1192, 689, 10), rangeX = 6, rangeY = 5, flamePosition = Position(1192, 689, 10)},
	[17522] = {bossName = 'the horned fox', storage = 17522, playerPosition = Position(1396, 1432, 10), bossPosition = Position(1397, 1441, 10), centerPosition = Position(1394, 1438, 10), rangeX = 8, rangeY = 8, flamePosition = Position(1394, 1438, 10)}
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local boss = bosses[item.uid]
	if not boss then
		return true
	end

	if player:getStorageValue(boss.storage) ~= 1 or roomIsOccupied(boss.centerPosition, boss.rangeX, boss.rangeY) then
		player:teleportTo(fromPosition)
		return true
	end

	player:setStorageValue(boss.storage, 0)
	player:teleportTo(boss.playerPosition)
	boss.playerPosition:sendMagicEffect(CONST_ME_TELEPORT)

	local monster = Game.createMonster(boss.bossName, boss.bossPosition)
	if not monster then
		return true
	end

	addEvent(clearBossRoom, 60 * 10 * 1000, player.uid, monster.uid, boss.centerPosition, boss.rangeX, boss.rangeY, fromPosition)
	player:say('You have ten minutes to kill and loot this boss. Otherwise you will lose that chance and will be kicked out.', TALKTYPE_MONSTER_SAY)
	return true
end