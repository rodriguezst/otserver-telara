local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'It is little hot in here, is not it?'} }
npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	if not npcHandler:isFocused(cid) then
		return false
	end

		if msgcontains(msg, "mission") then
		if player:getStorageValue(70045) < 1 then
			npcHandler:say("Huummm, I see you're interested in doing my mission, but I can only grant it after you complete the firewalker boots quest. This mountain is too hot to walk with your feet with any boot.", cid)
			npcHandler.topic[cid] = 0
		elseif player:getStorageValue(70045) == 1 then
			npcHandler:say("Well, yes I can give you a mission to go to descend to the bottom of this mountain, but beware that there will be great challenges. I need you to collect {50 nails} for me, so I'll help you.", cid)
		npcHandler.topic[cid] = 1
	end
	elseif msgcontains(msg, "nails") then
		if player:getStorageValue(60095) < 1 then
			npcHandler:say("Do you have 50 nails to offer me?", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say("You have completed my mission.", cid)
			npcHandler.topic[cid] = 0
		end
		elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 2 then
			if (player:getStorageValue(60095) < 1 and player:removeItem(8309, 50)) then
				npcHandler:say("Thanks for nails, now its passage is released, but be very careful, go with caution.", cid)
				player:setStorageValue(60095, 1)
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("You do not have the necessary nails, come back when you have.", cid)
				npcHandler.topic[cid] = 0
			end
			end
			elseif msgcontains(msg, "no") then
			if npcHandler.topic[cid] >= 1 then
			npcHandler:say("You should try, I know you have a treasure hidden beneath these mountains.", cid)
			end
			return true
			end
			end
		

keywordHandler:addKeyword({'treasure'}, StdModule.say, {npcHandler = npcHandler, text = "Well, I do not know where exactly, but I know that my brother while building the cave inside the mountain, left his trousers as a reward. But only the brave should try to find it."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, text = "To go down to the bottom of the mountain you must collect me 50 nails and then click on the coloured stone on the right."})
keywordHandler:addKeyword({'dwarven legs'}, StdModule.say, {npcHandler = npcHandler, text = "Huum, maybe it's one of the dwarves's rarest pants, could it be the pants that my brother left as a reward, who knows?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, what are you doing here? It's a little hot, right?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Until one day who knows |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Until one day who knows young explorer...")
npcHandler:addModule(FocusModule:new())