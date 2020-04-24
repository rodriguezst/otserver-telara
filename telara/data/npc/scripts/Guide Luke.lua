local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = {
	{ text = 'Free escort to the depot for newcomers!' },
	{ text = 'Hello, is this your first visit to Verona? I can show you around a little.' },
	{ text = 'Need some help finding your way through Verona? Let me assist you.' },
	{ text = 'Talk to me if you need directions.' }
}

npcHandler:addModule(VoiceModule:new(voices))

  

local configMarks = {
	{mark = "Tool's Shop", position = Position(534, 915, 7), markId = MAPMARK_SHOVEL, description = "Tool's Shop"},
	{mark = "Rune's Shop", position = Position(569, 937, 7), markId = MAPMARK_BAG, description = "Eryn's Rune Shop"},
	{mark = "Bank and Postman", position = Position(535, 914, 6), markId = MAPMARK_DOLLAR, description = "Bank and Postman."},
	{mark = "Depot", position = Position(543, 926, 7), markId = MAPMARK_LOCK, description = "Verona Depot's."},
	{mark = "Postman", position = Position(547, 920, 5), markId = MAPMARK_GREENSOUTH, description = "Postman."},
	{mark = "The Church", position = Position(557, 926, 5), markId = MAPMARK_FLAG, description = "Promotion's priest."},	
	{mark = "Furniture Store", position = Position(556, 937, 7), markId = MAPMARK_BAG, description = "Lola's Furniture Store"},
	{mark = "Temple", position = Position(569, 926, 7), markId = MAPMARK_TEMPLE, description = "Verona's Temple."},
	{mark = "The Ship's", position = Position(547, 874, 7), markId = MAPMARK_FLAG, description = "Premium and Free boat."},
	{mark = "Helen Paladin's shop", position = Position(564, 900, 7), markId = MAPMARK_SWORD, description = "Helen Paladin's shop."},
	{mark = "Rashi shop", position = Position(531, 937, 7), markId = MAPMARK_SWORD, description = "Rashi shop."},
	{mark = "Noob shop", position = Position(523, 910, 7), markId = MAPMARK_SWORD, description = "Noob shop."},
	{mark = "Trainers", position = Position(572, 926, 7), markId = MAPMARK_EXCLAMATION, description = "Teleport to Trainers."},
	{mark = "Grizly Ad", position = Position(570, 911, 7), markId = MAPMARK_KISS, description = "Task."}
}

--	1 	(MAPMARK_TICK)			
--	2	(MAPMARK_QUESTION)
--	3	(MAPMARK_EXCLAMATION)
--	4	(MAPMARK_STAR)
--	5	(MAPMARK_CROSS)				 fila de cima
--	6	(MAPMARK_TEMPLE)
--	7	(MAPMARK_KISS)
--	8	(MAPMARK_REDNORTH)		
--	9	(MAPMARK_REDEAST)		
--	10	(MAPMARK_GREENNORTH)		

--	11	(MAPMARK_SHOVEL)		
--	12	(MAPMARK_SWORD)			
--	13	(MAPMARK_FLAG)			
--	14	(MAPMARK_LOCK)		
--	15	(MAPMARK_BAG)				 fila de baixo
--	16	(MAPMARK_SKULL)		
--	17	(MAPMARK_DOLLAR)
--	18	(MAPMARK_REDSOUTH)
--	19	(MAPMARK_REDWEST)
--	20	(MAPMARK_GREENSOUTH)


local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	local player = Player(cid)
	if isInArray({"map", "marks"}, msg) then
		npcHandler:say("Would you like me to mark locations like - for example - the depot, bank and shops on your map?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 1 then
		npcHandler:say("Here you go.", cid)
		local mark
		for i = 1, #configMarks do
			mark = configMarks[i]
			player:addMapMark(mark.position, mark.markId, mark.description)
		end
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, "no") and npcHandler.topic[cid] >= 1 then
		npcHandler:say("Well, nothing wrong about exploring the town on your own. Let me know if you need something!", cid)
		npcHandler.topic[cid] = 0
	end
	return true
end

keywordHandler:addKeyword({'information'}, StdModule.say, {npcHandler = npcHandler, text = 'I can tell you all about the {town}, its {temple}, the {bank}, {shops}, {spell trainers} and the {depot}, as well as about the {world status}.'})
keywordHandler:addKeyword({'temple'}, StdModule.say, {npcHandler = npcHandler, text = 'The temple is in the centre of Thais. Walk east from the harbour and pass by the {depot} until you reach the infamous crossroads, then turn south.'})
keywordHandler:addKeyword({'bank'}, StdModule.say, {npcHandler = npcHandler, text = 'We have two bankers, Suzy and Naji. Naji is right in the depot. For Suzi, exit the {depot} to the west and walk south-west. Don\'t forget that I can {mark} important locations on your map.'})
keywordHandler:addKeyword({'shops'}, StdModule.say, {npcHandler = npcHandler, text = 'You can buy {weapons}, {armor}, {tools}, {gems}, {magical} equipment, {furniture} and {food} here.'})
keywordHandler:addKeyword({'depot'}, StdModule.say, {npcHandler = npcHandler, text = 'The depot is a place where you can safely store your belongings. You are also protected against attacks there. I {escort} newcomers there.'})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m a guide, overworked and underpaid. I can mark important locations on your map and give you some information about the town and the world status.'})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, text = 'Thais is the oldest settlement in Tibia. You can hear its history whisper when walking through the streets. Beware of criminals, but else it\'s a fine city.'})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, text = 'I\'m Luke. No jokes, please, I heard them all!'})

npcHandler:setMessage(MESSAGE_GREET, "Hello there, |PLAYERNAME| and welcome to Thais! Would you like some {information} and a {map} guide?")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye and enjoy your stay in Thais, |PLAYERNAME|.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
