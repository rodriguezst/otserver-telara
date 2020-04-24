-- Moving Boat by Limos
 
local config = {
   endborders = {9570, 9569},
   speed = 300,
   ignorefirstborders = 3
}
 
local fight = createConditionObject(CONDITION_INFIGHT)
setConditionParam(fight, CONDITION_PARAM_TICKS, -1)
 
local function comparePos(poss, pos)
     return pos.x == poss.x and pos.y == poss.y
end
 
local n, s = 0, 0
 
local function getRightPos(poss, last)
 
     ps = {
         {x = poss.x, y = poss.y - 1, z = poss.z},
         {x = poss.x + 1, y = poss.y, z = poss.z},
         {x = poss.x, y = poss.y + 1, z = poss.z},
         {x = poss.x - 1, y = poss.y, z = poss.z}
     }
     for _, pos in pairs(ps) do
         if getTileItemById(pos, 4820).uid > 0 then
             if not comparePos(last, pos) then
                 p = pos
                 return p
             end
         else
             for b = 1, #config.endborders do
                 if getTileItemById(pos, config.endborders[b]).uid > 0 and s > config.ignorefirstborders then
                     n = n + 1
                     p = pos
                     return p
                 end
             end
         end
     end
end
 
local function doTravel(cid, poss, last)
 
     getRightPos(poss, last)
     travel = p.x > poss.x and "east" or (p.y < poss.y and "north" or (p.y > poss.y and "south" or (p.x < poss.x and "west" or "false")))
     if n > 1 then
         p = poss
     end
     if travel == "false" then
        if getCreatureCondition(cid, CONDITION_INFIGHT) then
             doRemoveCondition(cid, CONDITION_INFIGHT)
         end
         n = 0
         s = 0
         return false
     end
 
     local des = {
         ["north"] = {cPos = {{x = p.x, y = p.y - 1, z = p.z}, p, {x = p.x, y = p.y + 1, z = p.z}}, dir = 0, boat = {3587, 3589, 3591}},
         ["east"] = {cPos = {{x = p.x + 1, y = p.y, z = p.z}, p, {x = p.x - 1, y = p.y, z = p.z}}, dir = 1, boat = {3596, 3594, 3592}},
         ["south"] = {cPos = {{x = p.x, y = p.y + 1, z = p.z}, p, {x = p.x, y = p.y - 1, z = p.z}}, dir = 2, boat = {3591, 3589, 3587}},
         ["west"] = {cPos = {{x = p.x - 1, y = p.y, z = p.z}, p, {x = p.x + 1, y = p.y, z = p.z}}, dir = 3, boat = {3592, 3594, 3596}}
     }
 
     local x = des[travel]
     if x then
         for x = p.x - 2, p.x + 2 do
             for y = p.y - 2, p.y + 2 do
                 pos = {x = x, y = y, z = p.z}
                 for id = 3587, 3596 do
                     if getTileItemById(pos, id).uid > 0 then
                         doRemoveItem(getTileItemById(pos, id).uid, 1)
                     end
                 end
             end
         end
         for c = 1, #x.boat do
             its = Game.createItem(x.boat[c], 1, x.cPos[c])
             if n > 0 and c == 2 then
                 doSetItemActionId(its, 6901)
             end
         end
         doTeleportThing(cid, x.cPos[2], false)
         doCreatureSetLookDir(cid, x.dir)
         if n > 1 then
             if getCreatureCondition(cid, CONDITION_INFIGHT) then
                 doRemoveCondition(cid, CONDITION_INFIGHT)
             end
             n = 0
             s = 0
             return false
         end
         s = s + 1
     end
     return addEvent(doTravel, config.speed, cid, p, poss)
end
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
 
     if getCreatureCondition(cid, CONDITION_INFIGHT) then
         return doPlayerSendCancel(cid, "You can't travel when you're in a fight.")
     end
     doTeleportThing(cid, toPosition)
     doAddCondition(cid, fight)
     doTravel(cid, getPlayerPosition(cid), getPlayerPosition(cid))
     return true
end