local increasing = {[416] = 417, [426] = 425, [446] = 447, [3216] = 3217}
local decreasing = {[417] = 416, [425] = 426, [447] = 446, [3217] = 3216}

function onStepIn(creature, item, position, fromPosition)
	if not increasing[item.itemid] then
		return false
	end

	local player = creature:getPlayer()
	if not player or player:isInGhostMode() then
		return true
	end

	item:transform(increasing[item.itemid])

	if item.actionid >= 1000 then
		if player:getLevel() < item.actionid - 1000 then
			player:teleportTo(fromPosition, false)
			position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The tile seems to be protected against unwanted intruders.")
		end
		return true
	end

	if item.actionid ~= 0 and player:getStorageValue(item.actionid) <= 0 then
		player:teleportTo(fromPosition, false)
		position:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The tile seems to be protected against unwanted intruders.")
		return true
	end

	return true
end

function onStepOut(creature, item, position, fromPosition)
	if not decreasing[item.itemid] then
		return false
	end

	if creature:isPlayer() and creature:isInGhostMode() then
		return true
	end

	item:transform(decreasing[item.itemid])
	return true
end


