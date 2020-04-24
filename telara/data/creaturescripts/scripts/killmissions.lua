 
local config = {
     ['rat'] = {amount = 20, storage = 21900, startstorage = 45551, startvalue = 2},
     ['rotworm'] = {amount = 26, storage = 21901, startstorage = 45551, startvalue = 2},
     ['dragon lord'] = {amount = 25, storage = 21902, startstorage = 45551, startvalue = 4}
}
function onKill(player, target)
     local player, target = Player(player), Creature(target) -- for TFS 1.0, delete this line if you use 1.1
     local monster = config[target:getName():lower()]
     if target:isPlayer() or not monster or target:getMaster() then
         return true
     end
     local stor = player:getStorageValue(monster.storage)+1
     if stor < monster.amount and player:getStorageValue(monster.startstorage) >= monster.startvalue then
         player:setStorageValue(monster.storage, stor)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, 'Task message: '..(stor +1)..' of '..monster.amount..' '..target:getName()..'s killed.')
     end
     if (stor +1) == monster.amount then
         player:sendTextMessage(MESSAGE_INFO_DESCR, 'Congratulations, you have killed '..(stor +1)..' '..target:getName()..'s and completed the '..target:getName()..'s mission.')
         player:setStorageValue(monster.storage, stor +1)
     end
     return true
end