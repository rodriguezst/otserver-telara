function onLogin(cid)
    local player = Player(cid)

    local loginStr = 'Welcome to ' .. configManager.getString(configKeys.SERVER_NAME) .. '!'
    if player:getLastLoginSaved() <= 0 then
        loginStr = loginStr .. ' Please choose your outfit.'
        player:sendTutorial(1)
    else
        if loginStr ~= '' then
            player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
        end

        loginStr = string.format('Your last visit was on %s.', os.date('%a %b %d %X %Y', player:getLastLoginSaved()))
        db.query("UPDATE `players` SET `cast` = 0 WHERE `id` = " .. getPlayerGUID(cid) .. ";")
    end
    player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)

	-- Stamina
	nextUseStaminaTime[player.uid] = 0
	
-- Promotion
	local vocation = player:getVocation()
	local promotion = vocation:getPromotion()
	local value = player:getStorageValue(STORAGEVALUE_PROMOTION)
	if not promotion and value ~= 1 then
		player:setStorageValue(STORAGEVALUE_PROMOTION, 1)
	elseif value == 1 then
		player:setVocation(promotion)
	end

	-- Events
		player:registerEvent("PlayerDeath")
player:registerEvent("Tasks")
player:registerEvent("killingInTheNameOfQuestKills")
player:registerEvent("inquisitionQuestBosses")
player:registerEvent("inquisitionQuestUngreez")
player:registerEvent("IconMap")
player:registerEvent("Vermush")
player:registerEvent("city")
player:registerEvent("Recompensavoc")
player:registerEvent("hunt")
player:registerEvent("SvargrondArenaKill")
player:registerEvent("Pythius")
player:registerEvent("Ortheus")
player:registerEvent("BlessProtect")
player:registerEvent("Shang")
player:registerEvent("BeastEnergyElemental")
player:registerEvent("BeastFireElemental")
player:registerEvent("DropLoot")

	return true
end
