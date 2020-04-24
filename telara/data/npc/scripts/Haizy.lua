local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if isInArray({"shards", "icicle"}, msg) then
		npcHandler:say('Do you want to trade 10 Shards for a Icicle?', cid)
		npcHandler.topic[cid] = 1
	elseif isInArray({"job", "items", "trade"}, msg) then
		npcHandler:say('I can trade Shards for an Icicle but you should use it carefully.', cid)
		npcHandler.topic[cid] = 0	
	elseif msgcontains(msg,'yes') and npcHandler.topic[cid] <= 4 and npcHandler.topic[cid] >= 1 then
		local trade = {
				{ NeedItem = 7290, Ncount = 10, GiveItem = 4848, Gcount = 1}  -- Shards
		}
		if player:getItemCount(trade[npcHandler.topic[cid]].NeedItem) >= trade[npcHandler.topic[cid]].Ncount then
			player:removeItem(trade[npcHandler.topic[cid]].NeedItem, trade[npcHandler.topic[cid]].Ncount)
			player:addItem(trade[npcHandler.topic[cid]].GiveItem, trade[npcHandler.topic[cid]].Gcount)
			return npcHandler:say('Here you are.', cid)
		else
			npcHandler:say('Sorry but you don\'t have the item.', cid)
		end
	elseif msgcontains(msg,'no') then
		npcHandler:say('Ok then.', cid)
		npcHandler.topic[cid] = 0
		npcHandler:releaseFocus(cid)
		npcHandler:resetNpc(cid)
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Maaaagic, |PLAYERNAME|. How can I help you?")
npcHandler:setMessage(MESSAGE_FAREWELL, "See you later!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "See you later, |PLAYERNAME|.")

keywordHandler:addKeyword({'catacomb'}, StdModule.say, {npcHandler = npcHandler, text = "What I can speak of the catacomb to a mere mortal as you are, do not get in there at all, is a demoniac place where I was able to imprison demons with my magic."})

npcHandler:setCallback(CALLBACK_ONTRADEREQUEST, onTradeRequest)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
