local portals = {
	[9250] = {position = Position(808, 1380, 7), message = 'Slrrp!'}, -- Zugorosh
	[9251] = {position = Position(776, 1380, 7), message = 'Slrrp!'}, -- Ushuriel
	[9252] = {position = Position(744, 1380, 7), message = 'Slrrp!'}, -- The Noxius Spawn
	[9253] = {position = Position(712, 1380, 7), message = 'Slrrp!'}, -- Massacre
	[9254] = {position = Position(680, 1380, 7), message = 'Slrrp!'}, -- Annihilon
 	[9255] = {position = Position(808, 1350, 7), message = 'Slrrp!'}, -- The Welter
	[9256] = {position = Position(776, 1350, 7), message = 'Slrrp!'}, -- Zulazza the Corruptor
	[9257] = {position = Position(744, 1350, 7), message = 'Slrrp!'}, -- Tanjis
	[9258] = {position = Position(712, 1350, 7), message = 'Slrrp!'}, -- Ojubus
	[9259] = {position = Position(808, 1320, 7), message = 'Slrrp!'}, -- Jaul
	[9260] = {position = Position(776, 1320, 7), message = 'Slrrp!'}, -- Morgaroth
	[9261] = {position = Position(744, 1320, 7), message = 'Slrrp!'}, -- Orshabaal
	[9262] = {position = Position(712, 1320, 7), message = 'Slrrp!'}, -- Ferumbras
	[9263] = {position = Position(680, 1320, 7), message = 'Slrrp!'}, -- Ghazbaran
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