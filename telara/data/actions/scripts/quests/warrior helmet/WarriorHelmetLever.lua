local t = {
	Position(960, 905, 11), -- stone position
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		local tile = t[1]:getTile()
		if tile then
			local stone = tile:getItemById(9119)
			if stone then
			t[1]:sendMagicEffect(7)
				stone:remove()
			end
		end

	elseif item.itemid == 1946 then
		Game.createItem(9119, 1, t[1])
		t[1]:sendMagicEffect(CONST_ME_POFF)
	end
	return item:transform(item.itemid == 1945 and 1946 or 1945)
end
