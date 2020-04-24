local amuletId = 2197
local storage = 1000
local delay = 0.7 -- seconds

function Player:onMoveItem(item, count, fromPosition, toPosition)
    if item:getId() == amuletId then
        if toPosition.y == CONST_SLOT_NECKLACE then
            if os.time() > self:getStorageValue(storage) then
                self:setStorageValue(storage, os.time() + delay)
            else
                self:sendCancelMessage("Sorry, not possible.")
                return false
            end
        end
    end
    return true
end