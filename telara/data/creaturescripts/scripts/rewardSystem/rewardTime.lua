local items = {
    [1] = {
        itemid = 2160,
        count = 1,
    },
    [2] = {
        itemid = 2160,
        count = 2
    }
}

local events = {}

local function addReward(cid, rewardId)
    if not isPlayer(cid) then
        return
    end
    local item = items[rewardId or #items]
    doPlayerAddItem(cid, item.itemid, item.count)
    events[cid] = addEvent(addReward, 60 * 60 * 1000, cid, rewardId + 1)
end

function onLogin(cid)
    events[cid] = addEvent(addReward, 60 * 60 * 1000, cid, 1)
    return true
end

function onLogout(cid)
    if events[cid] then
        stopEvent(events[cid])
        events[cid] = nil
    end
    return true
end