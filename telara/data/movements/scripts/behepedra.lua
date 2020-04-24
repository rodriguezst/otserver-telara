local idpedra = 1304 -- ID da pedra
local pos = {x=848, y=280, z=11, stackpos=1}  -- Coordenada da pedra
local msg_remover = "The stone was removed, if you leave the position it will be added again."  -- Mensagem ao remover a pedra
local msg_repor = "The stone was added."  -- Mensagem ao repor a pedra

function onStepIn(cid, item, position, item2, fromPosition)
    local check = getTileItemById(pos, idpedra).uid
    if check > 0 then
        doRemoveItem(check, 1)
        doCreatureSay(cid, msg_remover, TALKTYPE_ORANGE_1)
        return true
    else
        doPlayerSendCancel(cid,TALKTYPE_ORANGE_1, msg_remover)
    end
return true
end

function onStepOut(cid, item, position, item2, fromPosition)
    local check = getTileItemById(pos, idpedra).uid
    if check < 1 then
        doCreateItem(idpedra, 1, pos)

        return true
    end
return true
end