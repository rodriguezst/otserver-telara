local config ={
    pos = {x=514, y=815, z=7},
    bars = 910,
    time = 60
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
        doCreatureSay(cid, "You opened the stone, have 60 seconds.", TALKTYPE_ORANGE_1)
		
        
		
    elseif item.itemid == 1946 then
        if getTileItemById(config.pos, config.bars).uid > 0 then
		item:transform(1945)
        else
            doCreatureSay(cid, "It seems the lever has been already used.", TALKTYPE_ORANGE_1)
        end     
    end
    return true
end



