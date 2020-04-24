function onUse(cid, item, frompos, item2, topos)

    if getPlayerStorageValue(cid,60004) == 1 and getPlayerStorageValue(cid,60030) == -1 and getPlayerStorageValue(cid,60031) == -1 then
        doPlayerAddItem(cid, 8883, 1)
        doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have found a windborn colossus armor.")
        doSendMagicEffect(frompos, 11)
        setPlayerStorageValue(cid,60030,1)
doTeleportThing(cid,{x=877, y=1134, z=11})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)

elseif getPlayerStorageValue(cid,60003) == 1 and getPlayerStorageValue(cid,60030) == -1 and getPlayerStorageValue(cid,60031) == -1 then
doPlayerAddItem(cid, 8867, 1)
        doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"You have found a dragon robe.")
        doSendMagicEffect(frompos, 11)
        setPlayerStorageValue(cid,60031,1)
doTeleportThing(cid,{x=877, y=1134, z=11})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)

    elseif getPlayerStorageValue(cid,60030) == 1 or getPlayerStorageValue(cid,60031) == 1 then
                doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,"The chest is empty.")
doTeleportThing(cid,{x=877, y=1134, z=11})
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
        end
end