function onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local target = Player(param)
	if not target then
		player:sendCancelMessage('Player not found.')
		return false
	end

	if target:getAccountType() > player:getAccountType() then
		player:sendCancelMessage('You can not get info about this player.')
		return false
	end

	local targetIp = target:getIp()
	player:sendTextMessage(4, 'Name: ' .. target:getName())
	player:sendTextMessage(4, 'Access: ' .. (target:getGroup():getAccess() and '1' or '0'))
	player:sendTextMessage(4, 'Level: ' .. target:getLevel())
	player:sendTextMessage(4, 'Magic Level: ' .. target:getMagicLevel())
	player:sendTextMessage(4, 'Speed: ' .. target:getSpeed())
	player:sendTextMessage(4, 'Position: ' .. string.format('(%0.5d / %0.5d / %0.3d)', target:getPosition().x, target:getPosition().y, target:getPosition().z))
	player:sendTextMessage(4, 'IP: ' .. Game.convertIpToString(targetIp))

	local players = {}
	for _, targetPlayer in ipairs(Game.getPlayers()) do
		if targetPlayer:getIp() == targetIp and targetPlayer ~= target then
			players[#players + 1] = targetPlayer:getName() .. " [" .. targetPlayer:getLevel() .. "]"
		end
	end

	if #players > 0 then
		player:sendTextMessage(4, "Other players on same IP: " .. table.concat(players, ", ") .. ".")
	end
	return false
end
