local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local voices = {
	{ text = 'Only quality steel and wood used for my weapons!' },
	{ text = 'Buy your weapons here!' },
	{ text = 'Selling and buying all sorts of weapons, come and have a look!' },
	{ text = 'Give those monsters a good whipping with my weapons!' }
}
npcHandler:addModule(VoiceModule:new(voices))

npcHandler:setMessage(MESSAGE_WALKAWAY, 'Um yeah, good day.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Farewell, I hope you were satisfied with our service.')
npcHandler:setMessage(MESSAGE_SENDTRADE, 'Of course, just browse through my wares.')
npcHandler:setMessage(MESSAGE_GREET, 'Hello, hello, |PLAYERNAME|! Please come in, look, and buy! If you like to see my offers, ask me for a {trade}!')

npcHandler:addModule(FocusModule:new())
