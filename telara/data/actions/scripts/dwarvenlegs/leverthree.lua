local config ={
    pos = {x=1360, y=1326, z=13},
    bars = 9532,
    time = 2700
}

local function Remove(fromPosition, item)
    Game.createItem(config.bars, 1, config.pos)
    doTransformItem(9827)
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
    if  item.itemid == 9827 then
        doRemoveItem(getTileItemById(config.pos, config.bars).uid)
		addEvent(Remove, config.time * 1000, fromPosition)
		item:transform(9828)
		doCreatureSay(cid, "You opened the gate, have 45 minutes.", TALKTYPE_ORANGE_1)
		
		
        
		
    elseif item.itemid == 9828 then
        if getTileItemById(config.pos, config.bars).uid > 0 then
		item:transform(9827)
        else
			doCreatureSay(cid, "It seems the lever has been already used.", TALKTYPE_ORANGE_1)
        end       
    end
    return true
end