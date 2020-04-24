local freeBlessMaxLevel = 60

function onLogin(cid)
    local player = Player(cid)
    if player:getLevel() <= freeBlessMaxLevel then
        for i = 1, 8 do
            if not player:hasBlessing(i) then
                player:addBlessing(i, 1)
            end
        end

        player:sendTextMessage(MESSAGE_EVENT_ADVANCE,'You received adventurers blessings for you to be level less than ' .. freeBlessMaxLevel .. '!')
    end
    return true
end