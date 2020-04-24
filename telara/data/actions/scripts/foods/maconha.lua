local FOODS = {

	[5953] = {25, "WOOOOOOOOT! *_* I believe, I can fly!"}, -- MACONHA

}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local food = FOODS[item.itemid]
    if food == nil then
        return false
    end

    local condition = player:getCondition(CONDITION_REGENERATION,  CONDITIONID_DEFAULT)
    if condition and math.floor(condition:getTicks() / 1000 + food[1]) >= 1200 then
        player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are full.")
    else
        player:feed(food[1] * 12)
        player:say(food[2], TALKTYPE_MONSTER_SAY)
        item:remove(1)
    end
    return true
end