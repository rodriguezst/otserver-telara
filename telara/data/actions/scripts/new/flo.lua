-----------Config-----------
local message = "You have get an potion of youngess!"
----------End Config---------

function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to collect rewards from the quests.")
else
    if getPlayerStorageValue(cid,60244) == -1 then
        doPlayerAddItem(cid, 9996, 1)
        doPlayerSendTextMessage(cid,25,message)
        doSendMagicEffect(frompos, 12)
        setPlayerStorageValue(cid,60244,1)

    elseif getPlayerStorageValue(cid,60244) == 1 then
                doPlayerSendTextMessage(cid,25,"You can only use the flower once.")
        end
end
end