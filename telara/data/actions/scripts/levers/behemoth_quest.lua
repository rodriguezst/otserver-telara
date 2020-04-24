local wall = {
    Position(1638, 1383, 15),
    Position(1639, 1383, 15)
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item.itemid == 1946 then
        return false
    end

    local thing
    for i = 1, #wall do
        thing = Tile(wall[i]):getItemById(1304)
        if thing then
            thing:remove()
        end
    end

    item:transform(1946)
    return true
end