function onUse(cid, item, fromPosition, itemEx, toPosition)
	
	local player, days = Player(cid), 7 -- quantidade de dias premium

	if(player:getPremiumDays() < 7) then
		player:setStorageValue(998899, 1)
		player:addPremiumDays(days)
		player:sendTextMessage(MESSAGE_INFO_DESCR, 'You have been credited with' .. days .. ' days of Premium Account.')
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
		Item(item.uid):remove(1)
	else			
		player:sendCancelMessage('You can not buy more than 7 days of Premium Account.')
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	end
	
	return true
end