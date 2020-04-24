local portals = {

	--Intiri
	[9213] = {position = Position(1571, 606, 2), vocation = 2, storage = 10028}, --ice
	[9214] = {position = Position(694, 950, 3), vocation = 2, storage = 10028}, --earth
	[9215] = {position = Position(936, 812, 14), vocation = 1, storage = 10028}, --fire
	[9216] = {position = Position(778, 986, 4), vocation = 1, storage = 10028} --electric
	
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portal = portals[item.uid]
	if not portal or player:getVocation():getBase():getId() ~= portal.vocation or player:getLevel() < 30 then
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		player:say('Only ' .. (portal.vocation == 1 and 'Sorcerers' or 'Druids') .. ' of level 30 or higher may enter this portal.', TALKTYPE_MONSTER_SAY)
		return true
	end

	player:teleportTo(portal.position)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:setStorageValue(portal.storage, 1)
	return true
end