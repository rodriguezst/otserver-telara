local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Travel
local function addTravelKeyword(keyword, cost, destination)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = ' Are you sure you want to travel to ' .. keyword:titleCase() .. ' for ' .. cost .. ' gold coins?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = true, cost = cost, discount = 'postman', destination = destination})
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('roshamuz', 275, Position(1154, 374, 7))

keywordHandler:addKeyword({'travel'}, StdModule.say, {npcHandler = npcHandler, text = ' I can bring you to a remote and rather dangerous island called {Roshamuz}.'})


npcHandler:setMessage(MESSAGE_GREET, "Welcome on board, |PLAYERNAME|. I do not recommend you {travel} on this boat.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye. It was a good decision not to travel.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye then.")

npcHandler:addModule(FocusModule:new())
