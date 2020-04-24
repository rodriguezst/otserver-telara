local config = {
exhausttime = 1*30*30, -- time
exhauststorage = 2300
}
rift = {posBack = {x = 968, y = 1000, z = 7}, storages = {player = 3514, playerTime = 3515}, creatures = {}, monstersLeft = 0}
local modal = {id = 1254, title = 'Select a level', message = 'Each level will have a higher difficulty'}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
    player:registerEvent("RiftsModal")
    if rift.monstersLeft > 0 then
        return player:sendTextMessage(MESSAGE_STATUS_SMALL, "Someone is using the rift already.")
    end

 if player:getStorageValue(config.exhauststorage) > os.time() then
local time = player:getStorageValue(config.exhauststorage) - os.time()
local hours, minutes, seconds = math.floor (time / 3600), math.floor ((time - ((math.floor (time / 3600)) * 3600))/ 60), time - ((math.floor (time/60)) * 60)
if time >= 3600 then
text = hours.." "..(hours == 1 and "hour" or "hours")..", "..minutes.." "..(minutes == 1 and "minute" or "minutes").." and "..seconds.." "..(seconds == 1 and "second" or "seconds")
elseif time >= 60 then
text = minutes.." "..(minutes == 1 and "minute" or "minutes").." and "..seconds.." "..(seconds == 1 and "second" or "seconds")
else
text = seconds.." "..(seconds == 1 and "second" or "seconds")
end
doSendMagicEffect(pos, CONST_ME_POFF)
player:sendTextMessage(MESSAGE_INFO_DESCR, "You need to wait "..text.." before you can get a reward again.")
return true
end

    local window = ModalWindow(modal.id, modal.title, modal.message)
    window:addButton(100, "Enter")
    window:addButton(101, "Cancel")
    for i = 1, 10 do
        local choice = window:addChoice(i, "Level " .. i)
    end
    window:setDefaultEnterButton(100)
    window:setDefaultEscapeButton(101)
   	window:sendToPlayer(player)
   	player:setStorageValue(config.exhauststorage, os.time() + 1*30*30)
   return true
end
 