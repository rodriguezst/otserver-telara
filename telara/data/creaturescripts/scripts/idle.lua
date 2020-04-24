function onThink(player)
    local time = player:getIdleTime() / 1000

    if(time >= 10) then
        player:remove()
    end
    
    print('Seconds: ' .. time .. ' Player: ' .. (player and player:getName() or 'Has logout'))
    return true
end