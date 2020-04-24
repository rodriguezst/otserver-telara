local config = {
    monster_name = "Deathstrike",
    monster_position = Position(1881, 1830, 13),
    storage = 6025,
    ex_time = 15*60
}

function onUse(player, item, frompos, item2, topos)
    if not player:getPlayer() then
        return true
    end
    
    if player:getStorageValue(config.storage) >= os.time() then
        player:sendTextMessage(MESSAGE_INFO_DESCR, "You can only use in "..string.diff(player:getStorageValue(config.storage) - os.time()))
    else
		item:transform(item.itemid == 9826 and 9825 or 9826)
        player:setStorageValue(config.storage, os.time() + config.ex_time)
        Game.createMonster(config.monster_name, config.monster_position)
    end
    return true
end