local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local voices = {
	{ text = 'Add one fresh dead rat and stir it well... ' },
	{ text = 'Argh, if I only had a pan!' },
	{ text = 'Bread, cheese, ham and meat! All fresh!' },
	{ text = 'Buying fresh dead rats!' },
	{ text = 'Buying many types of food and ingredients, too!' },
	{ text = 'Hmm, hmm, now which ingredients do I need...' },
	{ text = 'Need food? I have plenty for sale!' }
}
npcHandler:addModule(VoiceModule:new(voices))

npcHandler:setMessage(MESSAGE_WALKAWAY, 'HOW RUDE!')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Bye.')
npcHandler:setMessage(MESSAGE_SENDTRADE, 'Sure.')
npcHandler:setMessage(MESSAGE_GREET, 'Howdy |PLAYERNAME|. I\'m a farmer and cook, maybe I can interest you in a {trade} with food? You can also ask me for general {hints} about the game.')

npcHandler:addModule(FocusModule:new())
