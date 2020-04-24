function onUse(cid, item, frompos, item2, topos)

local storage = 49339 -- coloque o storage aqui


if getPlayerStorageValue(cid, storage) > 0 then
pos = {x = 1424, y = 1161, z = 14}
doTeleportThing(cid,pos)
doSendMagicEffect(topos, 3)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "The door seems to be sealed against unwanted intruders.")
end

return TRUE
end
