function onEquip(cid, item, slot) 
 doSendMagicEffect(getCreaturePosition(cid), 14)
           say_events[getPlayerGUID(cid)] = addEvent(SayText, time * 1000, cid)
                        doPlayerSetNoMove(cid, false)
           doPlayerSendTextMessage(cid,MESSAGE_STATUS_WARNING,"Effects are on.")
         else
           doPlayerSendTextMessage(cid,MESSAGE_STATUS_WARNING,"Effects are already on.")
        end
 return TRUE
end