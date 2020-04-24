 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = { {text = 'Uhhhhhh....'} }
npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
	if not npcHandler:isFocused(cid) then
		return false
	end

		if msgcontains(msg, "mission") then
		npcHandler:say("If you want to pass the door, you must bring me a very precious {key} belonging to Xayabuz.", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "key") then
		if player:getStorageValue(60086) < 1 then
			npcHandler:say("Are you prepared to receive my authorization, even though this will mean that your death as well as a part of your soul will forever belong to me, my dear?", cid)
			npcHandler.topic[cid] = 2
		else
			npcHandler:say("You have already received my authorization. You should know better then ask for it.", cid)
			npcHandler.topic[cid] = 0
		end
		elseif msgcontains(msg, "yes") then
		if npcHandler.topic[cid] == 2 then
			if (player:getStorageValue(60086) < 1 and player:removeItem(8978, 1)) then
				npcHandler:say("Yessss, I can sense you have passed the seal of sacrifice.", cid)
				player:setStorageValue(60086, 1)
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("You have not yet passed the seal of sacrifice. Come back to me when you get the key.", cid)
				npcHandler.topic[cid] = 0
			end
			end
			elseif msgcontains(msg, "no") then
			if npcHandler.topic[cid] >= 1 then
			npcHandler:say("Then try to be better prepared next time we meet.", cid)
			end
			return true
			end
			end
		


keywordHandler:addKeyword({'stay'}, StdModule.say, {npcHandler = npcHandler, text = "It's my curse to be the eternal {guardian} of this ancient place."})
keywordHandler:addKeyword({'guardian'}, StdModule.say, {npcHandler = npcHandler, text = "I'm the {guardian} of the final seal. The seal to open the last door before ... but perhaps it's better to see it with your own eyes."})
keywordHandler:addKeyword({'xayabuz'}, StdModule.say, {npcHandler = npcHandler, text = "Xayabuz died and took his key with him, I need her to make the sacrificial. Only then will you be allowed to enter the last door."})
keywordHandler:addKeyword({'race'}, StdModule.say, {npcHandler = npcHandler, text = "The race that built this edifice came to this place from the stars. They ran from an enemy even more horrible than themselves. But they carried the {seed} of their own destruction in them."})
keywordHandler:addKeyword({'seed'}, StdModule.say, {npcHandler = npcHandler, text = "This ancient race was annihilated by its own doings, that's all I know. Aeons have passed since then, but the sheer presence of this {complex} is still defiling and desecrating this area."})
keywordHandler:addKeyword({'complex'}, StdModule.say, {npcHandler = npcHandler, text = "Its constructors were too strange for you or even me to understand. We don't know what this ... thing they built was supposed to be good for. I feel a constant twisting and binding of souls, though, that is probably only a side-effect."})
keywordHandler:addKeyword({'banshee'}, StdModule.say, {npcHandler = npcHandler, text = "They are my maidens. They give me comfort in my eternal watch over the last seal."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Be greeted, dear visitor. Come and {stay} ... a while.")
npcHandler:setMessage(MESSAGE_FAREWELL, "We will meet again, |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Yes, flee from death. But know it shall be always one step behind you.")
npcHandler:addModule(FocusModule:new())
