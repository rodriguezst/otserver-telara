local config = {
	[28810] = Position(1836, 238, 9),
	[28811] = Position(1837, 254, 9),
	[28812] = Position(1842, 244, 9),
	[28813] = Position(1845, 241, 9),
	[28814] = Position(1854, 240, 9),
	[28815] = Position(1825, 242, 9),
	[28816] = Position(1838, 251, 9),
	[28817] = Position(1853, 230, 9),
	[28818] = Position(1855, 241, 9),
	[28819] = Position(1854, 223, 9),
	[28820] = Position(1841, 247, 9),
	[28821] = Position(1859, 254, 9),
	[28822] = Position(1839, 257, 9),
	[28823] = Position(1845, 221, 9),
	[28824] = Position(1852, 257, 9),
	[28825] = Position(1853, 238, 9),
	[28826] = Position(1840, 257, 9),
	[28827] = Position(1859, 251, 9),
	[28828] = Position(1825, 248, 9),
	[28829] = Position(1856, 230, 9),
	[28830] = Position(1859, 235, 9),
	[28831] = Position(1853, 255, 9),
	[28832] = Position(1853, 254, 9),
	[28833] = Position(1853, 252, 9),
	[28834] = Position(1853, 253, 9)
}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local targetPosition = config[item.actionid]
	if not targetPosition then
		return true
	end

	player:teleportTo(targetPosition)
	return true
end