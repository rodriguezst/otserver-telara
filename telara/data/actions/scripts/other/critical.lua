function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getCriticalLevel() < CRITICAL.LEVEL_MAX then
		item:remove(1)
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		player:setCriticalLevel(player:getCriticalLevel() + 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Você aumentou sua skill de critical para [" .. player:getCriticalLevel() .. "/" .. CRITICAL.LEVEL_MAX .. "].")
	elseif player:getCriticalLevel() >= CRITICAL.LEVEL_MAX then
		player:sendTextMessage(MESSAGE_STATUS_WARNING, "Você alcancou o máximo de seu CRITICAL Skill.\nParabéns!!!!")
		return false
    end
	return true
end