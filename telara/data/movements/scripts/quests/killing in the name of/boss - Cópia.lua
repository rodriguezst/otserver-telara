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
	[3232] = {bossName = 'deathbine', storage = 35002, playerPosition = Position(32715, 32736, 8), bossPosition = Position(32714, 32713, 8), centerPosition = Position(32716, 32724, 8), rangeX = 9, rangeY = 13, flamePosition = Position(32726, 32727, 8)},
	[3233] = {bossName = 'the bloodtusk', storage = 35003, playerPosition = Position(32102, 31124, 2), bossPosition = Position(32102, 31134, 2), centerPosition = Position(32101, 31129, 2), rangeX = 5, rangeY = 6, flamePosition = Position(32093, 31130, 2)},
	[3234] = {bossName = 'shardhead', storage = 35004, playerPosition = Position(32150, 31137, 3), bossPosition = Position(32159, 31132, 3), centerPosition = Position(32155, 31136, 3), rangeX = 5, rangeY = 7, flamePosition = Position(32149, 31137, 3)},
	[3235] = {bossName = 'esmeralda', storage = 35005, playerPosition = Position(32759, 31252, 9), bossPosition = Position(32759, 31258, 9), centerPosition = Position(32759, 31254, 9), rangeX = 4, rangeY = 4, flamePosition = Position(32758, 31248, 9)},
	[3236] = {bossName = 'fleshcrawler', storage = 35006, playerPosition = Position(33100, 32785, 11), bossPosition = Position(33121, 32797, 11), centerPosition = Position(33112, 32789, 11), rangeX = 15, rangeY = 13, flamePosition = Position(33106, 32775, 11)},
	[3237] = {bossName = 'ribstride', storage = 35007, playerPosition = Position(33012, 32813, 13), bossPosition = Position(33013, 32801, 13), centerPosition = Position(33012, 32805, 13), rangeX = 10, rangeY = 9, flamePosition = Position(33018, 32814, 13)},
	[3238] = {bossName = 'bloodweb', storage = 35008, playerPosition = Position(1360, 534, 8), bossPosition = Position(1364, 524, 8), centerPosition = Position(32023, 31033, 8), rangeX = 11, rangeY = 11, flamePosition = Position(32010, 31031, 8)},
	[3239] = {bossName = 'thul', storage = 35009, playerPosition = Position(339, 722, 9), bossPosition = Position(346, 724, 9), centerPosition = Position(344, 722, 9), rangeX = 6, rangeY = 6, flamePosition = Position(344, 722, 9)},
	[3240] = {bossName = 'the old widow', storage = 35010, playerPosition = Position(1093, 1213, 10), bossPosition = Position(1186, 1213, 10), centerPosition = Position(32801, 32276, 8), rangeX = 5, rangeY = 5, flamePosition = Position(32808, 32283, 8)},
	[3241] = {bossName = 'hemming', storage = 35011, playerPosition = Position(32999, 31452, 8), bossPosition = Position(33013, 31441, 8), centerPosition = Position(33006, 31445, 8), rangeX = 9, rangeY = 7, flamePosition = Position(33005, 31437, 8)},
	[3242] = {bossName = 'tormentor', storage = 35012, playerPosition = Position(1787, 532, 8), bossPosition = Position(1800, 539, 8), centerPosition = Position(32051, 31264, 11), rangeX = 11, rangeY = 14, flamePosition = Position(32051, 31249, 11)},
	[3243] = {bossName = 'flameborn', storage = 35013, playerPosition = Position(1131, 1268, 9), bossPosition = Position(1140, 1260, 9), centerPosition = Position(32944, 31060, 8), rangeX = 11, rangeY = 10, flamePosition = Position(32818, 31026, 7)},
	[3244] = {bossName = 'fazzrah', storage = 35014, playerPosition = Position(1308, 611, 8), bossPosition = Position(1308, 606, 8), centerPosition = Position(33003, 31177, 7), rangeX = 14, rangeY = 6, flamePosition = Position(33007, 31171, 7)},
	[3245] = {bossName = 'tromphonyte', storage = 35015, playerPosition = Position(789, 863, 8), bossPosition = Position(774, 859, 8), centerPosition = Position(33113, 31188, 8), rangeX = 11, rangeY = 18, flamePosition = Position(33109, 31168, 8)},
	[3246] = {bossName = 'sulphur scuttler', storage = 35016, playerPosition = Position(1233, 1268, 10), bossPosition = Position(1241, 1256, 10), centerPosition = Position(33088, 31012, 8), rangeX = 11, rangeY = 11, flamePosition = Position(0, 0, 0)},
	[3247] = {bossName = 'bruise payne', storage = 35017, playerPosition = Position(33237, 31006, 2), bossPosition = Position(33266, 31016, 2), centerPosition = Position(33251, 31016, 2), rangeX = 22, rangeY = 11, flamePosition = Position(33260, 31003, 2)},
	[3248] = {bossName = 'the many', storage = 35018, playerPosition = Position(664, 998, 8), bossPosition = Position(664, 996, 8), centerPosition = Position(32921, 32898, 8), rangeX = 5, rangeY = 6, flamePosition = Position(32921, 32890, 8)},
	[3249] = {bossName = 'the noxious spawn', storage = 35019, playerPosition = Position(1123, 572, 9), bossPosition = Position(1123, 579, 9), centerPosition = Position(32843, 32670, 11), rangeX = 5, rangeY = 5, flamePosition = Position(0, 0, 0)},
	[3250] = {bossName = 'gorgo', storage = 35020, playerPosition = Position(1119, 433, 9), bossPosition = Position(1119, 419, 9), centerPosition = Position(32759, 32440, 11), rangeX = 9, rangeY = 10, flamePosition = Position(32768, 32440, 11)},
	[3251] = {bossName = 'stonecracker', storage = 35021, playerPosition = Position(798, 283, 11), bossPosition = Position(798, 293, 11), centerPosition = Position(33259, 31670, 15), rangeX = 5, rangeY = 7, flamePosition = Position(33259, 31689, 15)},
	[3252] = {bossName = 'leviathan', storage = 35022, playerPosition = Position(1996, 657, 8), bossPosition = Position(1985, 658, 8), centerPosition = Position(31909, 31072, 10), rangeX = 8, rangeY = 7, flamePosition = Position(31918, 31071, 10)},
	[3253] = {bossName = 'kerberos', storage = 35023, playerPosition = Position(780, 509, 15), bossPosition = Position(773, 492, 15), centerPosition = Position(32041, 32569, 15), rangeX = 11, rangeY = 13, flamePosition = Position(32030, 32555, 15)},
	[3254] = {bossName = 'ethershreck', storage = 35024, playerPosition = Position(766, 793, 10), bossPosition = Position(762, 780, 10), centerPosition = Position(33088, 31012, 8), rangeX = 11, rangeY = 11, flamePosition = Position(33076, 31007, 8)},
	[3255] = {bossName = 'paiz the pauperizer', storage = 35025, playerPosition = Position(1354, 1186, 4), bossPosition = Position(1362, 1186, 4), centerPosition = Position(33076, 31110, 1), rangeX = 8, rangeY = 6, flamePosition = Position(33076, 31110, 1)},
	[3256] = {bossName = 'bretzecutioner', storage = 35026, playerPosition = Position(1568, 591, 8), bossPosition = Position(1574, 580, 8), centerPosition = Position(31973, 31177, 10), rangeX = 15, rangeY = 10, flamePosition = Position(31973, 31166, 10)},
	[3257] = {bossName = 'zanakeph', storage = 35027, playerPosition = Position(1466, 1244, 10), bossPosition = Position(1468, 1256, 10), centerPosition = Position(1396, 1251, 7), rangeX = 13, rangeY = 10, flamePosition = Position(33070, 31039, 12)},
	[3258] = {bossName = 'demodras', storage = Storage.KillingInTheNameOf.DemodrasTeleport, playerPosition = Position(801, 1054, 8), bossPosition = Position(800, 1063, 8), centerPosition = Position(32887, 32583, 4), rangeX = 6, rangeY = 5, flamePosition = Position(33076, 31029, 12)},
	[3259] = {bossName = 'tiquandas revenge', storage = Storage.KillingInTheNameOf.TiquandasRevengeTeleport, playerPosition = Position(1222, 678, 5), bossPosition = Position(1217, 684, 5), centerPosition = Position(32748, 32293, 10), rangeX = 8, rangeY = 7, flamePosition = Position(33076, 31029, 11)},
	[17521] = {bossName = 'necropharus', storage = 17521, playerPosition = Position(916, 912, 10), bossPosition = Position(916, 904, 10), centerPosition = Position(33028, 32424, 12), rangeX = 6, rangeY = 5, flamePosition = Position(33070, 31035, 12)},
	[17522] = {bossName = 'the horned fox', storage = 17522, playerPosition = Position(1334, 944, 8), bossPosition = Position(1335, 955, 8), centerPosition = Position(32450, 31400, 9), rangeX = 5, rangeY = 8, flamePosition = Position(33070, 31029, 12)}
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