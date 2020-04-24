local config = {
	{fromPos = Position(566, 923, 7), toPos = Position(572, 929, 7), townId = 2},
	{fromPos = Position(562, 625, 7), toPos = Position(567, 632, 7), townId = 4},
	{fromPos = Position(743, 865, 6), toPos = Position(751, 875, 6), townId = 6},
	{fromPos = Position(1176, 794, 7), toPos = Position(1183, 800, 7), townId = 8},
	{fromPos = Position(1490, 1512, 6), toPos = Position(1497, 1500, 6), townId = 12},
	{fromPos = Position(377, 269, 6), toPos = Position(379, 271, 6), townId = 13},
	{fromPos = Position(210, 1264, 9), toPos = Position(223, 1279, 9), townId = 14}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local playerPos, isInTemple, temple, townId = player:getPosition(), false
	for i = 1, #config do
		temple = config[i]
		if isInRange(playerPos, temple.fromPos, temple.toPos) then
			if Tile(playerPos):hasFlag(TILESTATE_PROTECTIONZONE) then
				isInTemple, townId = true, temple.townId
				break
			end
		end
	end

	if not isInTemple then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'Try to move more to the center of a temple to use the spiritual energy for a teleport.')
		return true
	end

	player:setStorageValue(Storage.AdventurersGuild.Stone, townId)
	playerPos:sendMagicEffect(CONST_ME_TELEPORT)

	local destination = Position(521, 1115, 6)
	player:teleportTo(destination)
	destination:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end