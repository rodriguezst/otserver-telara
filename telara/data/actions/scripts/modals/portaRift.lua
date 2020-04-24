local storage = 40100
 
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:getStorageValue(storage) ~= 1 then
        player:sendCancelMessage("You may not pass here.")
        return true
    end
 
    local itemId = item:getId()
    item:transform(itemId + 1)
    player:teleportTo(toPosition, true)
    return true
end