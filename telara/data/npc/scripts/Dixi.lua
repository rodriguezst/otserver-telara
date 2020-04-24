local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local voices = {
	{ text = '<clears throat> Get your armor and shields heeeeeeere! Upstairs!', yell = true },
	{ text = 'Need some help? Just ask me, I can show you around!' },
	{ text = 'Don\'t forget to protect yourself with a shield!' },
	{ text = 'Selling the finest armors on Rookgaard!' },
	{ text = 'Don\'t let these mean monsters hurt you - get better equipment now!' }
}
npcHandler:addModule(VoiceModule:new(voices))

-- Greeting and Farewell
keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text = 'Good day, Ma\'am. How may I help you, |PLAYERNAME|? If you like to see my offers, simply ask me for a trade!'}, function(player) return player:getSex() == PLAYERSEX_FEMALE end)
keywordHandler:addAliasKeyword({'hello'})
keywordHandler:addGreetKeyword({'hi'}, {npcHandler = npcHandler, text = 'Good day, Sir. How may I help you, |PLAYERNAME|? If you like to see my offers, simply ask me for a trade!'}, function(player) return player:getSex() == PLAYERSEX_FEMALE end)
keywordHandler:addAliasKeyword({'hello'})
keywordHandler:addFarewellKeyword({'bye'}, {npcHandler = npcHandler, text = 'Good bye, Ma\'am.'}, function(player) return player:getSex() == PLAYERSEX_FEMALE end)
keywordHandler:addAliasKeyword({'farewell'})
keywordHandler:addFarewellKeyword({'bye'}, {npcHandler = npcHandler, text = 'Good bye, Sir.'})
keywordHandler:addAliasKeyword({'farewell'})

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Um yeah, good day.')
npcHandler:setMessage(MESSAGE_SENDTRADE, 'Here, take a look and choose something nice for you!')

npcHandler:addModule(FocusModule:new())
