local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


function onCreatureAppear(cid)                          npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)                       npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)                  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                                      npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
local player = Player(cid)

if (not npcHandler:isFocused(cid)) then
return false
end

if isInArray({"silk", "spoon"}, msg:lower()) then
        npcHandler:say('Do you want to trade 10 spider silk for one spoon?', cid)
        npcHandler.topic[cid] = 1 
elseif isInArray({"warrior Sweat", "warrior helmet"}, msg:lower()) then
        npcHandler:say('Do you want to trade 4 Warrior Helmet for Warrior Sweat?', cid)
        npcHandler.topic[cid] = 2 
elseif isInArray({"fighting Spirit", "royal helmet"}, msg:lower()) then
        npcHandler:say('Do you want to trade 2 Royal Helmet for Fighting Spirit?', cid)       
        npcHandler.topic[cid] = 3
elseif isInArray({"magic sulphur", "fire sword"}, msg:lower()) then
        npcHandler:say('Do you want to trade 3 Fire Sword for Magic Sulphur?', cid) 
        npcHandler.topic[cid] = 4
elseif isInArray({"job", "items"}, msg:lower()) then
        npcHandler:say('I trade Enchanted Chicken Wing for Boots of Haste, Warrior Sweat for 4 Warrior Helmets, Fighting Spirit for 2 Royal Helmet Magic Sulphur for 3 Fire Swords', cid)
npcHandler.topic[cid] = 0
 
elseif msgcontains(msg,'yes') and npcHandler.topic[cid] <= 4 and npcHandler.topic[cid] >= 1 then
 
local trade = {
{NeedItem = 5879, Ncount = 10, GiveItem = 5886, Gcount = 1}, -- Spoon
}
 
        if player:getItemCount(trade[npcHandler.topic[cid]].NeedItem) >= trade[npcHandler.topic[cid]].Ncount then
player:removeItem(trade[npcHandler.topic[cid]].NeedItem, trade[npcHandler.topic[cid]].Ncount)
player:addItem(trade[npcHandler.topic[cid]].GiveItem, trade[npcHandler.topic[cid]].Gcount)
return npcHandler:say(msg,'Here you are')
        else
            npcHandler:say('Sorry but you don\'t have the item', player)
        end
 
elseif msgcontains(msg,'no') and (npcHandler.topic[cid] >= 1 and npcHandler.topic[cid] <= 5) then
npcHandler:say(msg,'Ok then', player)
npcHandler.topic[cid] = 0
npcHandler:releaseFocus(cid)
end
return true
end
 
local function onTradeRequest(cid)
TradeRequest(cid, npcHandler, getTable(), BlueDjinn, 4)
end
 
npcHandler:setCallback(CALLBACK_ONTRADEREQUEST, onTradeRequest)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())