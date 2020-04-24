function onModalWindow(player, modalWindowId, buttonId, choiceId)
	player:unregisterEvent("janelaHunts")
	if (modalWindowId == 1000) then
		if (buttonId == 100) then
			local tele_pos = CONFIG_TPS_JANELA[JANELA_TP_ACTION][choiceId].pos
			player:teleportTo(tele_pos)
			local pos_t = Position(tele_pos)
			pos_t:sendMagicEffect(CONST_ME_MAGIC_BLUE)
		end
	end
	return true
end