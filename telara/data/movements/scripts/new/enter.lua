function onStepIn(cid, item, position, fromPosition)
local uId = 60040
local message = "Hello "..getPlayerName(cid)..", thanks for your work. Enjoy some time off!"
local message2 = "Sorry "..getPlayerName(cid)..", but you are not an employee."
    if(item.uid == uId) and getPlayerGroupId(cid) >= 3 then
            doTeleportThing(cid, {x=929, y=823, z=6})
            doCreatureSay(cid, message, TALKTYPE_ORANGE_2, getCreaturePosition(cid))
doSendMagicEffect(getCreaturePosition(cid), 14)
        else
             doCreatureSay(cid, message2, TALKTYPE_ORANGE_2, getCreaturePosition(cid))
doSendMagicEffect(getCreaturePosition(cid), 13)        
        end 
end