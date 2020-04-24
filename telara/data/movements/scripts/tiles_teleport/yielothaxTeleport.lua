local portals = {
	[9245] = {position = Position(1449, 1793, 8), message = 'Slrrp!'}, --entrance
	[9246] = {position = Position(1449, 1803, 6), message = 'Slrrp!'}, --exit
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portal = portals[item.uid]
	if portal then
		player:teleportTo(portal.position)
		item:getPosition():sendMagicEffect(CONST_ME_GREEN_RINGS)
		player:say(portal.message, TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(48)
	end
	return true
end