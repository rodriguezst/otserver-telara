local config = {
    token = 5, -- Quantidade de tokens que o player irá receber
    chance = 5, -- Porcentagem de chance que o player terá em dropar os tokens (deixei com 5%)
}

local function addToken(c, m)
    db.query("UPDATE `accounts` SET `tokens` = `tokens` + " .. config.token .. " WHERE `id` = '" .. c:getAccountId() .. "';")
    c:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, string.format('Congratulations! %s dropped %d crown tokens!', m:getName(), config.token))  
end


function onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified)
    if (creature:isPlayer()) then return true end
    if (config.chance >= math.random(1,100)) then
        local vr = creature:getMaster()
        if (killer:isPlayer() and not vr) then
            addToken(killer, creature)
        end
    end
    return true
end