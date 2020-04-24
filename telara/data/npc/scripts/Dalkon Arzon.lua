local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

-- Travel
local function addTravelKeyword(keyword, cost, destination)
	local travelKeyword = keywordHandler:addKeyword({keyword}, StdModule.say, {npcHandler = npcHandler, text = 'Do you seek a trip to ' .. keyword:titleCase() .. ' for ' .. cost .. ' gold coins?', cost = cost, discount = 'postman'})
		travelKeyword:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, cost = cost, discount = 'postman', destination = destination})
		travelKeyword:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, text = 'We would like to serve you some time.', reset = true})
end

addTravelKeyword('zao', 435, Position(1441, 620, 7))
addTravelKeyword('razach', 400, Position(1431, 1168, 7))

keywordHandler:addKeyword({'trip'}, StdModule.say, {npcHandler = npcHandler, text = 'You want trip to {Zao} or {Razach}?'})


npcHandler:setMessage(MESSAGE_GREET, "Before zzomeone will zee uzz... I arrange {trip} to you.")

npcHandler:addModule(FocusModule:new())

