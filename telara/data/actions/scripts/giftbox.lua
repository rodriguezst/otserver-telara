 
local prize = {
    [1] = {chance = 25, id = 2798, amount = 1 },
    [2] = {chance = 23, id = 25377, amount = 1 },
    [3] = {chance = 22, id = 12544, amount = 1 },
    [4] = {chance = 38, id = ITEM_CRYSTAL_COIN, amount = 1 },
    [5] = {chance = 40, id = ITEM_PLATINUM_COIN, amount = 1 },
   	[6] = {chance = 43, id = ITEM_PLATINUM_COIN, amount = 1 },
}
 
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
 
    for i = 1,#prize do local number = math.random() * 100
    if prize[i].chance>100-number then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:addItem(prize[i].id, prize[i].amount)
        item:remove()
        break
    end
    end
    return true
end