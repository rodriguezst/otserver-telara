local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Travel
local function addTravelKeyword(keyword, cost, destination)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a passage to ' .. keyword:titleCase() ..  ' for ' .. cost .. ' gold coins?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination})
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end


addTravelKeyword('nissey', 105, Position(1468, 1520, 6))
addTravelKeyword('verona', 65, Position(561, 864, 6))
addTravelKeyword('woundhill bay', 70, Position(766, 863,6))
addTravelKeyword('niflheim', 45, Position(423, 311,6))
addTravelKeyword('salazart', 145, Position(1146, 771, 6))
addTravelKeyword('feldarin', 120, Position(454, 785, 6))
addTravelKeyword('eneral', 55, Position(1183, 1279, 7))
addTravelKeyword('gray island', 155, Position(182, 1310, 7))

keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'I can bring you to {Nissey}, {Verona}, {Bluffgard}, {Woundhill Bay}, {Niflheim}, {Salazart}, {Feldarin}, {Eneral} or {Gray Island}.'})


npcHandler:setMessage(MESSAGE_GREET, "Welcome on board, |PLAYERNAME|. Where can I {sail} you today?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye. Recommend us if you were satisfied with our service.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye then.")

npcHandler:addModule(FocusModule:new())
