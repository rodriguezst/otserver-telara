function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.actionid == 24877 then
		player:teleportTo(Position(1488, 1883, 10))
		return true
	end
	if not player:getItemById(26406, true) then
		return false
	end
	if player:getStorageValue(Storage.ForgottenKnowledge.SilverKey) < 1 or not player:getItemById(26401, true) then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You don\'t have the fitting key.')
		return true
	end
	player:teleportTo(Position(1469, 1950, 11))
	return true
end
