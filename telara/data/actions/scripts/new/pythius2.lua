function onUse(cid, item, frompos, item2, topos)

local storage = 49337 -- coloque o storage aqui


if getPlayerStorageValue(cid, storage) > 0 then
pos = {x = 1248, y = 739, z = 14}
doTeleportThing(cid,pos)
doSendMagicEffect(topos, 10)
else
doPlayerSendTextMessage(cid, 22, "Você não tem acesso para entrar aqui!")
end

return TRUE
end


