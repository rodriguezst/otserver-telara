local pos = {
	[2025] = {x = 1829, y = 267, z = 11},
	[2026] = {x = 1831, y = 267, z = 11},
	[2027] = {x = 1833, y = 267, z = 11},
	[2028] = {x = 1835, y = 267, z = 11}
}

local function doRemoveFirewalls(fwPos)
	local tile = Position(fwPos):getTile()
	if tile then
		local thing = tile:getItemById(6289)
		if thing then
			thing:remove()
		end
	end
end

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if(item.itemid == 1945) then
		doRemoveFirewalls(pos[item.uid])
		Position(pos[item.uid]):sendMagicEffect(CONST_ME_FIREAREA)
	else
		Game.createItem(6289, 1, pos[item.uid])
		Position(pos[item.uid]):sendMagicEffect(CONST_ME_FIREAREA)
	end
	item:transform(item.itemid == 1945 and 1946 or 1945)
	return true
end