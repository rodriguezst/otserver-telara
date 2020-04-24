local config ={
    pos = {x=1332, y=1195, z=13},
    bars = 6289,
    time = 900
}

local function Remove(fromPosition, item)
    Game.createItem(config.bars, 1, config.pos)
end

function onStepIn(cid, item, fromPosition, itemEx, toPosition)
    if  item.itemid == 11062 then
        doRemoveItem(getTileItemById(config.pos, config.bars).uid)
		addEvent(Remove, config.time * 1000, fromPosition)
        item:transform(11063)
		doCreatureSay(cid, "The fire wall was successfully removed", TALKTYPE_ORANGE_1)    
        elseif item.itemid == 11063 then
            if getTileItemById(config.pos, config.bars).uid > 0 then
            item:transform(11062)
        end 
    end
    return true
end