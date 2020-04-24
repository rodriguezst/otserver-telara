local config ={
    pos = {x=906, y=133, z=9},
    itemid = 1547,
    time = 60
}

local function Remove(fromPosition)
    Game.createItem(config.itemid, 1, config.pos)
    doTransformItem(getTileItemById(fromPosition, 1946).uid, 1945)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if item.itemid == 1945 then
        doRemoveItem(getTileItemById(config.pos, config.itemid).uid)
        addEvent(Remove, config.time * 1000, fromPosition)
        doTransformItem(item.uid, 1946)
    elseif item.itemid == 1946 then
        if getTileItemById(config.pos, config.itemid).uid > 0 then
            doTransformItem(item.uid, 1945)
        else
            doPlayerSendCancel(cid, "It seems the lever has been already used.")
        end       
    end
    return true
end