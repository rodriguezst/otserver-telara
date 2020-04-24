-- Should Obujos spawn as in real tibia?
local spawnByDay = true
local spawnDay = 'Wednesday'
local spawnPosition = Position(193, 1215, 11)

function onStartup()
	if spawnByDay then
		if os.date('%A') == spawnDay then
			Game.createMonster('Obujos', spawnPosition, false, true)
		end
	else
		Game.createMonster('Obujos', spawnPosition, false, true)
	end

	return true
end