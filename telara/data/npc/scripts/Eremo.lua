local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Healing
local function addHealKeyword(text, condition, effect)
	keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = text},
		function(player) return player:getCondition(condition) ~= nil end,
		function(player)
			player:removeCondition(condition)
			player:getPosition():sendMagicEffect(effect)
		end
	)
end

addHealKeyword('You are burning. Let me quench those flames.', CONDITION_FIRE, CONST_ME_MAGIC_GREEN)
addHealKeyword('You are poisoned. Let me soothe your pain.', CONDITION_POISON, CONST_ME_MAGIC_RED)
addHealKeyword('You are electrified, my child. Let me help you to stop trembling.', CONDITION_ENERGY, CONST_ME_MAGIC_GREEN)

keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You are hurt, my child. I will heal your wounds.'},
	function(player) return player:getHealth() < 40 end,
	function(player)
		local health = player:getHealth()
		if health < 40 then player:addHealth(40 - health) end
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	end
)
keywordHandler:addKeyword({'heal'}, StdModule.say, {npcHandler = npcHandler, text = 'You aren\'t looking that bad. Sorry, I can\'t help you.'})

-- Teleport back
local teleportKeyword = keywordHandler:addKeyword({'verona'}, StdModule.say, {npcHandler = npcHandler, text = 'Should I teleport you back to Verona?'})
	teleportKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, text = 'Here you go!', premium = false, destination = Position(561, 864, 6)})
	teleportKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'Maybe later.', ungreet = true})

keywordHandler:addAliasKeyword({'back'})
keywordHandler:addAliasKeyword({'passage'})
keywordHandler:addAliasKeyword({'verona'})

-- Basic
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'I am Eremo, an old man who has seen many things.'})

npcHandler:setMessage(MESSAGE_GREET, 'Welcome to my little garden, adventurer |PLAYERNAME|! To go back you can say {Verona}.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'It was a pleasure to help you, |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'It was a pleasure to help you, |PLAYERNAME|.')

npcHandler:addModule(FocusModule:new())
