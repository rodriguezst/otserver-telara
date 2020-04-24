local beds  = {
	{{1754, 1755}, {1760, 1761}},  -- blue bed
	{{1756, 1757}, {1758, 1759}},  -- cot bed
	{{7811, 7812}, {7813, 7814}}, -- green bed
	{{7819, 7820}, {7821, 7822}}, -- yellow bed
	{{7815, 7816}, {7817, 7818}}, -- red bed
	{{20197, 20198}, {20199, 20200}} -- canopy bed
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local skill = beds[item:getId()]
	if not player:isPremium() then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need a Premium Account.")
		return true
	end

	if player:isPzLocked() then
		return false
	end
end