function onSay(player, words, param)
	player:sendTextMessage(4, "Informations:"
					.. " Experience: x" .. Game.getExperienceStage(player:getLevel())
					.. " | Skill: x" .. configManager.getNumber(configKeys.RATE_SKILL)
					.. " | Magic: x" .. configManager.getNumber(configKeys.RATE_MAGIC)
					.. " | Loot: x" .. configManager.getNumber(configKeys.RATE_LOOT))
	return false
end