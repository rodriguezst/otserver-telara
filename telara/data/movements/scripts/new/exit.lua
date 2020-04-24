function onStepIn(cid, item, position, fromPosition)
local uId = 60113
    if(item.uid == uId) then
            doTeleportThing(cid, {x=929, y=827, z=6})
            
doCreatureSay(cid, "Good bye!", TALKTYPE_ORANGE_1, getCreaturePosition(cid))
doSendMagicEffect(getCreaturePosition(cid), 14)       
        end 
end
