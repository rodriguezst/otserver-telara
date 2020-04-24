local storage = 60086
 
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(storage) ~= 1 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The door seems to be sealed against unwanted intruders.")
        return true
    end
 
    local itemId = item:getId()
    item:transform(itemId + 1)
    player:teleportTo(toPosition, true)
    return true
end