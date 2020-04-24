local config = {
    [9244] = Position(825, 545, 12)
}

function onStepIn(cid, item, position, fromPosition)
    local player = Player(cid)
    if not player then
        return true
    end

    local targetPosition = config[item.actionid]
    if not targetPosition then
        return true
    end

    player:teleportTo(targetPosition)
    targetPosition:sendMagicEffect(18)
    return true
end