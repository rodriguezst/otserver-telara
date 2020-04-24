local effects = {
	{position = Position(1024, 1019, 6), text = '[Trainers]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1026, 1017, 6), text = '[Teleport Room]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1015, 968, 5), text = '[Hunts]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1011, 973, 5), text = '[Quests]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1013, 975, 5), text = '[Templo]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1013, 975, 5), text = '[Templo]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(911, 727, 4), text = '[Templo]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1017, 975, 5), text = '[Boss Room]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1011, 714, 5), text = '[Telara Hunts]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(953, 724, 4), text = '[Telara Hunts]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1013, 714, 5), text = '[Darenia Hunts]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(915, 724, 4), text = '[Darenia Hunts]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1034, 1017, 6), text = '[Npcs]', effect = CONST_ME_GROUNDSHAKER},
	{position = Position(1024, 1022, 6), text = '[Rotworm]', effect = CONST_ME_TUTORIALARROW},
	{position = Position(1024, 1022, 6), text = '', effect = CONST_ME_TUTORIALSQUARE},

}

function onThink(interval)
	for i = 1, #effects do
		local settings = effects[i]
		local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
		if #spectators > 0 then
			if settings.text then
				for i = 1, #spectators do
					spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
				end
			end
			
			if settings.effect then
				settings.position:sendMagicEffect(settings.effect)
			end
		end
	end
	return true
end