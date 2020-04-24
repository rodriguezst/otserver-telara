local config ={
    tppos = {x=1471, y=1317, z=8},
    time = 15
}

local function revertStone(position)
	local stoneItem = Tile(position):getItemById(1304)
	if stoneItem then
		stoneItem:transform(1355)
	end
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	    if item.itemid == 1304 then
            doCreatureSay(cid, "You need to wait 15 seconds to use again.", TALKTYPE_ORANGE_1)
    elseif  item.itemid == 1355 then
        if getPlayerStorageValue(cid, 60095) == -1 then
            doCreatureSay(cid, "You don't know how to use this yet.", TALKTYPE_ORANGE_1)
        elseif getPlayerStorageValue(cid, 60095) == 1 then
            doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
            doTeleportThing(cid,config.tppos)
            doSendMagicEffect({x=1488, y=1328, z=9}, 16)
            item:transform(1304)
            addEvent(revertStone, config.time * 1000, toPosition)      
        end       
    end
    return true
end