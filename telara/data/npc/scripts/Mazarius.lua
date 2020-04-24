 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end
 

local function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	if not npcHandler:isFocused(cid) then
		return false
	end

		if msgcontains(msg, "pass") then
		npcHandler:say("To enter this seal, you need to make a sacrifice of {25 demonic essences}.", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "demonic essence") or msgcontains(msg, "essences") or msgcontains(msg, "essence") or msgcontains(msg, "demonic essences") then
		if player:getStorageValue(60087) < 1 then
			npcHandler:say("Are you sure you want to sacrifice your essences so that you can pass here?", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say("You already have access to this seal.", cid)
			npcHandler.topic[cid] = 0
		end
		elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 2 then
			if (player:getStorageValue(60087) < 1 and player:removeItem(6500, 25)) then
				npcHandler:say("Excellente! Now you can pass in this seal.", cid)
				player:setStorageValue(60087, 1)
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("You do not have the necessary essences, put them together, and come back when you have them.", cid)
				npcHandler.topic[cid] = 0
			end
			end
			elseif msgcontains(msg, "no") then
			if npcHandler.topic[cid] >= 1 then
			npcHandler:say("It's a good choice, get out of here.", cid)
			end
			return true
			end
			end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())