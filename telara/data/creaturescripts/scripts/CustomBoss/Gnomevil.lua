function onDeath(monster, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)    
    -- ID do item que será removido e criado
    local item_id = 1543
    -- Posição do item que será removido e criado
    local pos_item = Position(1870, 1839, 13)
    local check_pos_item = Tile(pos_item):getItemById(item_id)
    local monster_name = "Gnomevil"
    -- Tempo para criar o item que foi removido
    local time = 15*60*1000 -- 10 segundos..
    
    if monster:getName() == monster_name then
        if check_pos_item then
            check_pos_item:remove()
            pos_item:sendMagicEffect(3)
            monster:say("O BOSS foi morto. A passagem foi aberta e fechará em 10 segundos.", TALKTYPE_ORANGE_1)    

            addEvent(function()
                Game.createItem(item_id, 1, pos_item)
            end, time)
        end
    end
    return true
end