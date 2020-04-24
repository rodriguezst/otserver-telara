-- Collecting items and monster missions by Limos (Modified by Xagul to support both monsters and items in the same task)
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid)  npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)  npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()  npcHandler:onThink() end
 
local missions = {
   [1] = {
     items = {
       {id = 5890, count = 12},
       {id = 3976, count = 50}
     },
    monsters = {
       {name = "Chickens", count = 20, storage = 21905}
     },
     message = "Great, for your first mission you need to...",
     level = 25, -- minimum level voor this mission
     rewarditems = {
       {id = 2160, count = 1},
       {id = 2152, count = 1}
     },
     rewardexp = 15000
   },
   [2] = {
     monsters = {
       {name = "Rats", count = 20, storage = 21900},
       {name = "Rotworms", count = 26, storage = 21901}
     },
     message = "Thanks, for your next mission...",
     level = 30,
     rewarditems = {
       {id = 2160, count = 5}
     },
     rewardexp = 40000
   },
   [3] = {
     items = {
       {id = 5920, count = 45},
       {id = 5877, count = 22}
     },
     message = "Awesome, now...",
     level = 50,
     rewarditems = {
       {id = 2160, count = 15}
     },
     rewardexp = 100000
   },
   [4] = {
     monsters = {
       {name = "Dragon Lords", count = 25, storage = 21902}
     },
     message = "Good job, now...",
     level = 70,
     rewarditems = {
       {id = 2160, count = 25}
     },
     rewardexp = 200000
   },
   [5] = {
     items = {
       {id = 5906, count = 35},
       {id = 5882, count = 42},
       {id = 4850, count = 1}
     },
     message = "Good, now for your final mission!",
     level = 100,
     rewarditems = {
       {id = 2160, count = 50}
     },
     rewardexp = 450000
   }
}
 
local storage = 45551
 
local function getItemsMonstersFromTable(imtable, imtype)
     local text = ""
     for v = 1, #imtable do
         local ret = ", "
         if v == 1 then
             ret = ""
         elseif v == #imtable then
             ret = " and "
         end
         text = text .. ret
         count = imtable[v].count
         if imtable[v].id then
             info = ItemType(imtable[v].id)
             text = text .. (count > 1 and count or info:getArticle()).." "..(count > 1 and info:getPluralName() or info:getName())
         else
             text = text .. count .." "..imtable[v].name
         end
     end
 
    if(text ~= "") then
        text = ((imtype == "monsters" and "Kill: ") or "Collect: ") .. text
    end
     return text
end
 
function creatureSayCallback(cid, type, msg)
     if not npcHandler:isFocused(cid) then
         return false
     end
 
     local player = Player(cid)
     local x = missions[player:getStorageValue(storage)]
 
     if msgcontains(msg, 'mission') or msgcontains(msg, 'quest') then
         if player:getStorageValue(storage) == -1 then
             selfSay("I have several missions for you, do you accept the challenge?", cid)
             npcHandler.topic[cid] = 1
         elseif x then
             if player:getLevel() >= x.level then
                local missionstr = ""
              if(x.monsters) then
                   missionstr = getItemsMonstersFromTable(x.monsters, "monsters")
                end
                if(x.items) then
                   missionstr = missionstr .. ((missionstr ~= "" and "\n") or "") .. getItemsMonstersFromTable(x.items, "items")
                end
                 selfSay("Did you complete my task?\n".. missionstr, cid)
                 npcHandler.topic[cid] = 1
             else
                 selfSay("The mission I gave you is for level "..x.level..", come back later.", cid)
             end
         else
             selfSay("You already did all the missions, great job though.", cid)
             npcHandler:releaseFocus(cid)
         end
     elseif msgcontains(msg, 'yes') and npcHandler.topic[cid] == 1 then
         if player:getStorageValue(storage) == -1 then
             player:setStorageValue(storage, 1)
             local x = missions[player:getStorageValue(storage)]
       
            local missionstr = ""
            if(x.monsters) then
                missionstr = getItemsMonstersFromTable(x.monsters, "monsters")
            end
            if(x.items) then
                missionstr = missionstr .. ((missionstr ~= "" and "\n") or "") .. getItemsMonstersFromTable(x.items, "items")
            end
             selfSay(x.message.."\n".. missionstr ..".", cid)
         elseif x then
             local imtable = x.items or x.monsters
             local amount = 0
       
            local failed = false
            local failstr = ""
            -- Check Monsters
            for i, monster in ipairs(x.monsters) do
                local mstorage = player:getStorageValue(monster.storage)
                if(mstorage < 0) then
                   mstorage = 0
                end
         
                if(#x.monsters > 1 and i == #x.monsters) then
                    failstr = failstr .." and "
                elseif(i ~= 1) then
                    failstr = failstr ..", "
                else
                    failstr = "Sorry, you are still missing some things...\nYou have killed: "
                end
                failstr = failstr .. mstorage .."/".. monster.count .." ".. monster.name
         
               if(mstorage < monster.count) then
                    failed = true
                end
            end
       
            -- Check Items
            for i, item in ipairs(x.items) do
                local icount = player:getItemCount(item.id)        
         
                if(#x.items > 1 and i == #x.items) then
                    failstr = failstr .." and "
                elseif(i ~= 1) then
                    failstr = failstr ..", "
                elseif(failstr == "") then
                    failstr = "Sorry, you are still missing some things...\nYou have collected: "
                else
                    failstr = failstr .."\nYou have collected: "
                end
         
                local itemInfo = ItemType(item.id)
                failstr = failstr .. ((icount > item.count and item.count) or icount) .."/".. (item.count > 1 and item.count or itemInfo:getArticle()).." "..(item.count > 1 and itemInfo:getPluralName() or itemInfo:getName())
         
                if(icount < item.count) then
                    failed = true
               end
            end
       
            if(failed) then
               selfSay(failstr, cid)
            else
               if x.items then
                     for it = 1, #x.items do
                         player:removeItem(x.items[it].id, x.items[it].count)
                     end
                 end
                 if x.rewarditems then
                     for r = 1, #x.rewarditems do
                         player:addItem(x.rewarditems[r].id, x.rewarditems[r].count)
                     end
                     player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You received "..getItemsMonstersFromTable(x.rewarditems)..".")
                 end
                 if x.rewardexp then
                     player:addExperience(x.rewardexp)
                     player:sendTextMessage(MESSAGE_EVENT_DEFAULT, "You received "..x.rewardexp.." experience.")
                 end
                 player:setStorageValue(storage, player:getStorageValue(storage) + 1)
                 local x = missions[player:getStorageValue(storage)]
                 if x then              
                    local missionstr = ""
                      if(x.monsters) then
                        missionstr = getItemsMonstersFromTable(x.monsters, "monsters")
                    end
                    if(x.items) then
                        missionstr = missionstr .. ((missionstr ~= "" and "\n") or "") .. getItemsMonstersFromTable(x.items, "items")
                    end
                     selfSay(x.message.."\n".. missionstr ..".", cid)
                 else
                     selfSay("Well done! You did a great job on all your missions.", cid)
                 end
            end
         end
         npcHandler.topic[cid] = 0
     elseif msgcontains(msg, 'no') and npcHandler.topic[cid] == 1 then
         selfSay("Oh well, I guess not then.", cid)
         npcHandler.topic[cid] = 0
     end
     return true
end
 
npcHandler:setMessage(MESSAGE_FAREWELL, "Bye!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye, have a nice day!")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())