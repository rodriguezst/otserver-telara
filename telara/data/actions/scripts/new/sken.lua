-----------Config-----------
local message = "You have found some pure energy."
----------End Config---------

function onUse(cid, item, frompos, item2, topos)
    if getPlayerStorageValue(cid,60012) == -1 then
        doPlayerAddItem(cid, 8306, 1)
        doPlayerSendTextMessage(cid,25,message)
        doSendMagicEffect(frompos, 12)
        setPlayerStorageValue(cid,60012,1)
doTeleportThing(cid,{x=877, y=1126, z=10})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)

    elseif getPlayerStorageValue(cid,60012) == 1 then
                doPlayerSendTextMessage(cid,25,"The chest is empty.")
doTeleportThing(cid,{x=877, y=1126, z=10})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
        end
end
