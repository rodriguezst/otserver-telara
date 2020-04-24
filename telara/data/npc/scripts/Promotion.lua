 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

--[[ Promotion
local promoteKeyword = keywordHandler:addKeyword({'promot'}, StdModule.say, {npcHandler = npcHandler, text = '{Log out and log in} to be promoted. No need to buy, it is automatic at level 20.'})
	promoteKeyword:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, level = 20, cost = 20000})
	promoteKeyword:addChildKeyword({''}, StdModule.say, {npcHandler = npcHandler, text = 'Ok, whatever.', reset = true})
]]--
	 
local node1 = keywordHandler:addKeyword({'promot'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can promote you for 20000 gold coins. Do you want me to promote you?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 20000, level = 20, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})

-- Basic
keywordHandler:addKeyword({'eremo'}, StdModule.say, {npcHandler = npcHandler, text = 'It is said that he lives on a small island near Verona. Maybe the people there know more about him.'})

npcHandler:setMessage(MESSAGE_GREET, 'I greet thee, my loyal subject |PLAYERNAME|.')
npcHandler:setMessage(MESSAGE_FAREWELL, 'Good bye, |PLAYERNAME|!')
npcHandler:setMessage(MESSAGE_WALKAWAY, 'How rude!')

local focusModule = FocusModule:new()
focusModule:addGreetMessage('hail king')
focusModule:addGreetMessage('salutations king')
npcHandler:addModule(focusModule)