function onUse(cid, item, frompos, item2, topos)

local storage = 60100 -- coloque o storage aqui


if getPlayerStorageValue(cid, storage) > 0 then
doCreatureSay(cid, "Calm donw man! Let's go.", TALKTYPE_ORANGE_1)
else
doPlayerSendTextMessage(cid, 22, "The door seems to be sealed against unwanted intruders.")
end

return true
end



