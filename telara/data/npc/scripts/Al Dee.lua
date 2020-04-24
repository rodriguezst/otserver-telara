local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = {
	{ text = 'Are you looking for the best trades? Come to my shop!' },
	{ text = 'Feeling lost? You can always ask me about general hints!' },
	{ text = 'Tools and general equipment at Al Dee\'s!' },
	{ text = 'Don\'t head for adventure without a rope and torches! Buy your supplies here!' }
}
npcHandler:addModule(VoiceModule:new(voices))

-- Basic Keywords
keywordHandler:addKeyword({'hint'}, StdModule.rookgaardHints, {npcHandler = npcHandler})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, text = 'Just ask me for a {trade} to see what I buy from you.'})
keywordHandler:addKeyword({'stuff'}, StdModule.say, {npcHandler = npcHandler, text = 'Just ask me for a {trade} to see my offers.'})
keywordHandler:addAliasKeyword({'wares'})
keywordHandler:addAliasKeyword({'offer'})
keywordHandler:addAliasKeyword({'buy'})

keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, text = 'If you need general {equipment}, just ask me for a {trade}.'})
keywordHandler:addAliasKeyword({'information'})

keywordHandler:addKeyword({'equip'}, StdModule.say, {npcHandler = npcHandler, text = 'As an adventurer, you should always have at least a {backpack}, a {rope}, a {shovel}, a {weapon}, an {armor} and a {shield}.'})
keywordHandler:addAliasKeyword({'tools'})

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Bye, bye.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Bye, bye |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_SENDTRADE, 'Take a look in the trade window to your left.')
npcHandler:setMessage(MESSAGE_GREET, {
	'Hello, hello, |PLAYERNAME|! Please come in, look, and buy! I\'m a specialist for all sorts of {tools}. Just ask me for a {trade} to see my offers! You can also ask me for general {hints} about the game. ...',
	'You can also ask me about each {citizen} of the isle.'
})

npcHandler:addModule(FocusModule:new())
