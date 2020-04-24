local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


-- Don't forget npcHandler = npcHandler in the parameters. It is required for all StdModule functions!
local travelNode = keywordHandler:addKeyword({'verona'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to Verona?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 115, destination = {x=561, y=864, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})

local travelNode = keywordHandler:addKeyword({'nissey'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to Nissey?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 110, destination = {x = 1468, y = 1520, z = 6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})

local travelNode = keywordHandler:addKeyword({'bluffgard'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to sail to Bluffgard?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 125, destination = {x=580, y=611, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'We would like to serve you some time.'})


local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
	if msgcontains(msg, 'name') then
		selfSay("My name is Scrutinon. However, there are not many people calling my name nowadays. Not many captains even dare to land on this island. It is too close to {Quirefang}. ...", cid)
		selfSay("Most of them do not know this island by that name. Some call it Demon Horn, others the Dragon's Tooth or the Gray Beach as none of them ever came closer than a fair distance. ...", cid)
		npcHandler:say("There are drifts and storms surrounding that place that are far too dangerous to navigate through even for the most versed captains. They often sail not closer than to this island here and drop off whoever dares to explore near this dreaded coast.", cid)
	elseif msgcontains(msg, 'Quirefang') then
		selfSay("This island is cleft. Go there only prepared or you will meet your end. The surface of this forgotten rock is a barren wasteland full of hostile creatures. ...", cid)
		selfSay("Its visage is covered with holes and tunnels in which its leggy inhabitants are hiding. Its bowels filled with the strangest creatures, waiting to feast on whatever dares to disturb their hive. ...", cid)
		selfSay("And you will find no shelter in Quirefang's black depths, where the creatures of the deep are fulfilling a dark prophecy. ...", cid)
		npcHandler:say("It is impossible to reach it by ship or boat. However, there was one before you. A {visitor} who found a way to enter the island.", cid)
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())