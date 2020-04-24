local rewards = {
	[55052] = 8851,
	[55053] = 8854,
	[55054] = 8918,
	[55055] = 8930,
	[55056] = 8924,
	[55057] = 8928,
	[55058] = 8888,
	[55059] = 8881,
	[55060] = 8890
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	local player = Player(cid)
	if player:getStorageValue(300) < 1 then
		player:setStorageValue(300, 1)
		player:setStorageValue(200, 25)
		player:setStorageValue(12117, 5) -- The Inquisition Questlog- "Mission 7: The Shadow Nexus"
		player:addItem(rewards[item.uid], 1)
		player:addOutfitAddon(288, 3)
		player:addOutfitAddon(289, 3)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found " .. ItemType(rewards[item.uid]):getName() .. ".")
		--player:addAchievement('Master of the Nexus')
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end