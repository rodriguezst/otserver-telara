-----------Config-----------
local message = "You have found Skull Staff"
----------End Config---------

function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to collect rewards from the quests.")
else
    if getPlayerStorageValue(cid,40009) == -1 then
        doPlayerAddItem(cid, 2534, 1)
        doPlayerSendTextMessage(cid,25,message)
        doSendMagicEffect(frompos, 12)
        setPlayerStorageValue(cid,40009,1)

    elseif getPlayerStorageValue(cid,40009) == 1 then
                doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE,"The bookcase is empty.")
        end
end
end