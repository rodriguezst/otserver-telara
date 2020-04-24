local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local voices = {
	{ text = 'Feeling lost, my child? Ask me for hints or help!' },
	{ text = 'Come to me if you need healing!' },
	{ text = 'Welcome to the temple of Rookgaard!' },
	{ text = 'Don\'t despair! Help is near!' }
}
npcHandler:addModule(VoiceModule:new(voices))

-- Greeting and Farewell
keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text = 'Hello, |PLAYERNAME|! You are looking really bad. Let me heal your wounds. It\'s my job after all.'},
	function(player) return player:getHealth() < 65 or player:getCondition(CONDITION_POISON) ~= nil end,
	function(player)
		local health = player:getHealth()
		if health < 65 then player:addHealth(65 - health) end
		player:removeCondition(CONDITION_POISON)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	end
)
keywordHandler:addAliasKeyword({'hello'})

keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text = 'Hello, |PLAYERNAME|! I\'ll {heal} you if you are injured or poisoned. Feel free to ask me for {help} or general {hints}.'}, function(player) return player:getSex() == PLAYERSEX_FEMALE end)
keywordHandler:addAliasKeyword({'hello'})

keywordHandler:addFarewellKeyword({'bye'}, {npcHandler = npcHandler, text = 'Farewell, |PLAYERNAME|!'})
keywordHandler:addAliasKeyword({'farewell'})


keywordHandler:addKeyword({'adventure'}, StdModule.say, {npcHandler = npcHandler, text = 'I can see a bright future for you... you will soon embark on a very big adventure and explore the world of {Tibia} - maybe even influence history!'})
keywordHandler:addAliasKeyword({'explore'})

keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You are poisoned. I will help you.'},
	function(player) return player:getCondition(CONDITION_POISON) ~= nil end,
	function(player)
		local health = player:getHealth()
		if health < 65 then player:addHealth(65 - health) end
		player:removeCondition(CONDITION_POISON)
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_RED)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'Let me heal your wounds.'},
	function(player) return player:getHealth() < 185 end,
	function(player)
		local health = player:getHealth()
		if health < 185 then player:addHealth(185 - health) end
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You aren\'t looking really bad, |PLAYERNAME|. I can only help in cases of real emergencies. Raise your health simply by eating food.'})

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Well, bye then.')
npcHandler:addModule(FocusModule:new())
