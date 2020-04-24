local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local voices = {
	{ text = 'Are you injured or poisoned? Get your potions here! All natural, no artificial ingredients!' },
	{ text = 'Hey you, over there! Let\'s have a little chat, shall we?' },
	{ text = 'Oh, just in case you are looking for the marketplace and dungeons, just follow the path to the east.' },
	{ text = 'Anyone got some cookies for me?' },
	{ text = 'Do you need help? Just ask me about anything you\'d like to know!' },
	{ text = 'I\'m buying all of your blueberries for my famous blueberry juice!' }
}
npcHandler:addModule(VoiceModule:new(voices))

-- Basic Keywords
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, text = 'Just ask me for a {trade} to see what I buy from you. If you want to sell {blueberries}, ask me about them separately.'})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, text = 'Just ask me for a {trade} to see my offers. If you want to sell {blueberries}, ask me about them separately.'})
keywordHandler:addAliasKeyword({'wares'})
keywordHandler:addAliasKeyword({'offer'})
keywordHandler:addAliasKeyword({'buy'})

keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, text = 'How can I help you? If you like to buy something, just ask me for a {trade}.'})
keywordHandler:addAliasKeyword({'information'})

npcHandler:setMessage(MESSAGE_WALKAWAY, 'May Crunor bless you!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Take care, |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_SENDTRADE, 'Of course, just browse through my offers. If you buy a potion, don\'t forget that there\'s a {deposit} of 5 gold on the empty flask.')
npcHandler:setMessage(MESSAGE_GREET, 'Welcome, |PLAYERNAME|! You look a little stressed today. If you like to view my offers of potions, just ask me for a {trade}. In case you\'re looking for the marketplace and dungeons, just follow the path to the east!')

npcHandler:addModule(FocusModule:new())
