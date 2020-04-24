local wall = {
    Position(1477, 1332, 7)
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