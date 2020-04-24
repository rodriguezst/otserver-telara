local choose = {}
 
function onStepIn(player, item, position, fromPosition)
local cid = player:getId()
 
    local player = Player(cid)
    local pos = player:getPosition()
 
    if not player then
        return true
    end
 
    if getPlayerStorageValue(cid, 6661) == 1 then
    return sendCatacombWindow(cid)
    end
 
    return true
end
 