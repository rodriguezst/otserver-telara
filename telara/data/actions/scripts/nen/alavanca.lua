local config ={
    pos = {x=893, y=135, z=9},
    bars = 1547,
    time = 30
}

local function Remove(fromPosition, item)
    Game.createItem(config.bars, 1, config.pos)
    doTransformItem(1945)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if  item.itemid == 1945 then
        doRemoveItem(getTileItemById(config.pos, config.bars).uid)
		addEvent(Remove, config.time * 1000, fromPosition)
		item:transform(1946)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You opened the fence, have 30 seconds.")
		
        
		
    elseif item.itemid == 1946 then
        if getTileItemById(config.pos, config.bars).uid > 0 then
		item:transform(1945)
        else
            doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "It seems the lever has been already used.")
        end       
    end
    return true
end



