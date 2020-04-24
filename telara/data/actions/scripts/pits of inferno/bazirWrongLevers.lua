function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 1945 then
		player:teleportTo(Position(1804, 260, 15))
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		item:transform(1946)
 	end
 	return true
end