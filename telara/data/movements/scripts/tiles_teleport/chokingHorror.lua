local config = {
    storage = 60087, -- storage the same in 2scripts
    position = Position(825, 548, 13) -- teleport to pos
}
 
function onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
 
    local targetPosition = (item.actionid)
    if not targetPosition then
        return true
    end
 
    if player:getStorageValue(config.storage) < 1 then
        player:teleportTo(fromPosition)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, 'You don\'t have access to this area.')
        return true
    end
        player:teleportTo(config.position)
        player:getPosition():sendMagicEffect(18)
    return true
end