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


addTravelKeyword('eremo island', 500, Position(341, 854, 7))
addTravelKeyword('nissey', 45, Position(1468, 1520, 6))
addTravelKeyword('bluffgard', 95, Position(580, 611, 6))
addTravelKeyword('niflheim', 95, Position(423, 311,6))
addTravelKeyword('salazart', 65, Position(1146, 771, 6))
addTravelKeyword('feldarin', 110, Position(454, 785, 6))
addTravelKeyword('gray island', 135, Position(182, 1310, 7))

keywordHandler:addKeyword({'sail'}, StdModule.say, {npcHandler = npcHandler, text = 'I can bring you to {Nissey}, {Bluffgard}, {Niflheim}, {Salazart}, {Feldarin}, {Gray Island} or {Eremo Island}.'})


npcHandler:setMessage(MESSAGE_GREET, "Welcome on board, |PLAYERNAME|. Where can I {sail} you today? Note, to buy your amulet of loss, you need to travel to the {Eremo Island}.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye. Recommend us if you were satisfied with our service.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye then.")

npcHandler:addModule(FocusModule:new())
