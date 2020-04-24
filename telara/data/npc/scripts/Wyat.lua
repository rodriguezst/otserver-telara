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

		if msgcontains(msg, "enter") then
		if player:getStorageValue(12118) < 1 then
			npcHandler:say("You need to complete the inquisition so you can talk to me.", cid)
			npcHandler.topic[cid] = 0
		elseif player:getStorageValue(12118) == 1 then
			npcHandler:say("I do not advise you to go in there, you may regret it, it is a place where the strongest creatures abound. But if you want to come in, I need you to do me a {favour}.", cid)
			npcHandler.topic[cid] = 1
		end
	elseif msgcontains(msg, "mission") or msgcontains(msg, "favour") then
		if player:getStorageValue(60200) < 1 then
			npcHandler:say("The favour consists of a old parchment that I need to release access to the underworld, but I left it in the libraries of the necromancers in salazart, I need you to pick it up and swallow me.", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say("You are already allowed to enter the underworld.", cid)
			npcHandler.topic[cid] = 0
		end
		elseif msgcontains(msg, "parchment") or msgcontains(msg, "old parchment") then
				if npcHandler.topic[cid] == 2 then
			npcHandler:say("Huum, congratulations. You got the parchment, but still, I'll ask for the last time, are you sure you want to enter the underworld?", cid)
			npcHandler.topic[cid] = 3
		elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 3 then
			if (player:getStorageValue(60200) < 1 and player:removeItem(23784, 1)) then
				npcHandler:say("Okay, you made your choice, your access was released.", cid)
				player:setStorageValue(60200, 1)
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("You do not own the old parchment.", cid)
				npcHandler.topic[cid] = 0
			end
			end
			elseif msgcontains(msg, "no") then
			if npcHandler.topic[cid] >= 1 then
			npcHandler:say("Wise! beautiful choice, stay away from the underworld is the best thing to do.", cid)
			end
			return true
			end
			end
			end
		


keywordHandler:addKeyword({'underworld'}, StdModule.say, {npcHandler = npcHandler, text = "Terrible creatures inhabit an underworld where no human was able to reach except me!"})
keywordHandler:addKeyword({'guardian'}, StdModule.say, {npcHandler = npcHandler, text = "We can say that yes, I am a guardian of the underworld. Only I have the power to get in and out of there."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Huuum... dear visitor. What are you looking for here?")
npcHandler:setMessage(MESSAGE_FAREWELL, "We will meet again, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Yes, flee from death. But know it shall be always one step behind you.")
npcHandler:addModule(FocusModule:new())