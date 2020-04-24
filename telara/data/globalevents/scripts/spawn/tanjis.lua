-- Should tanjis spawn as in real tibia?
local spawnByDay = true
local spawnDay = 'Monday'
local spawnPosition = Position(414, 1192, 11)

function onStartup()
	if spawnByDay then
		if os.date('%A') == spawnDay then
			Game.createMonster('tanjis', spawnPosition, false, true)
		end
	else
		Game.createMonster('tanjis', spawnPosition, false, true)
	end

	return true
end