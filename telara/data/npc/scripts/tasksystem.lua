local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
dofile('data/lib/tasklib.lua')
-- OTServ event handling functions start
function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                      npcHandler:onThink() end
function onPlayerCloseChannel(cid) npcHandler:onPlayerCloseChannel(cid) end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid	
local player = Player(cid)	

if (msgcontains(msg, 'task') or msgcontains(msg, 'challenge')) then
	if not (player:getStorageValue(storages.firsttask) > 0 and player:getStorageValue(storages.secondtask) > 0) then
		npcHandler:say("Are you interested in the challenges I may have to you? Interesting...", cid)
		talkState[talkUser] = 1
	else 
		npcHandler:say("I already gave you two tasks, go finish them before you come here asking for more.", cid)
	end
elseif talkState[talkUser] == 1 and msgcontains(msg, 'yes') then
	local msg = ""
	local count = 0
	for i = config.first, config.last do
		if tasks[i] and player:getLevel() >= tasks[i].level and (tasks[i].needed == 0 or player:getStorageValue(tasks[i].needed) >= 1) and player:getStorageValue(i) < 0 then
			msg = count == 0 and msg.."{"..tasks[i].mob[1].."}" or msg..", {"..tasks[i].mob[1].."}"
			count = count + 1
		end
	end
	if count == 0 then
		npcHandler:say("Well, things are going pretty calm these days, I don't have anything in mind for you right now.", cid)
		talkState[talkUser] = 0
	elseif count == 1 then
		npcHandler:say("The only thing that's bothering me it's these damn ".. msg .."'s. If you take care of them I'll pay you well. Do you accept this challenge?", cid)
		talkState[talkUser] = 2
	else
		npcHandler:say("Well, I have problems with the following creatures: ".. msg ..". Would you help me with any of them?", cid)
		talkState[talkUser] = 3
	end
elseif talkState[talkUser] == 3 and msgcontains(msg, 'no') then
	npcHandler:say("If you can't handle any of the monsters I've just said then you better leave. This ain't a playground kid. ", cid)
	talkState[talkUser] = 0
elseif talkState[talkUser] == 3 and msgcontains(msg, 'yes') then
	local possible = {}
	for i = config.first, config.last do
		if player:getLevel() >= tasks[i].level and (tasks[i].needed == 0 or player:getStorageValue(tasks[i].needed) >= 1) and player:getStorageValue(i) < 0 then
			table.insert(possible, i)
		end
	end
	local quest = #possible >= 1 and possible[math.random(1, #possible)] or false
	if not quest then
		npcHandler:say("Something went terrible wrong, contact an admin.", cid)
	else
		npcHandler:say("Ok then, come back when you've killed {".. tasks[quest].count .. " ".. tasks[quest].mob[1].."'s}. I'll be waiting.", cid)
		local task, count = getFreeSlotTask(cid)
		player:setStorageValue(count, 0)
		player:setStorageValue(task, quest)
		player:setStorageValue(quest, 0)
	end
	talkState[talkUser] = 0	
elseif talkState[talkUser] == 3 then
	for i = config.first, config.last do
		if player:getLevel() >= tasks[i].level and (tasks[i].needed == 0 or player:getStorageValue(tasks[i].needed) >= 1) and player:getStorageValue(i) < 0 then
			if msgcontains(msg:lower(), (tasks[i].mob[1]):lower()) then				
				local task, count = getFreeSlotTask(cid)
				player:setStorageValue(count, 0)
				player:setStorageValue(task, i)
				player:setStorageValue(i, 0)
				talkState[talkUser] = 0
				return npcHandler:say("Ohh wise choice, come back when you've killed {".. tasks[i].count .." ".. tasks[i].mob[1] .."'s}. I'll be waiting.", cid)
			end
		end
	end
	npcHandler:say("That's the problem with choices, what you said doesn't match with any of the options...", cid)
elseif talkState[talkUser] == 2 and (msgcontains(msg, 'yes') or msgcontains(msg, 'ok')) then	
	local i = config.first
	local gotIt = false
	while (i <= config.last and not gotIt) do 	
		if player:getLevel() >= tasks[i].level and (tasks[i].needed == 0 or player:getStorageValue(tasks[i].needed) >= 1) and player:getStorageValue(i) < 0 then
			npcHandler:say("Ok then, come back when you've killed {".. tasks[i].count .. " ".. tasks[i].mob[1].."'s}. I'll be waiting.", cid)
			local task, count = getFreeSlotTask(cid)
			player:setStorageValue(count, 0)
			player:setStorageValue(task, i)
			player:setStorageValue(i, 0)
			gotIt = true			
		end
		i = i + 1
	end
	talkState[talkUser] = 0
elseif talkState[talkUser] == 2 and msgcontains(msg, 'no') then
	npcHandler:say("If you can't handle, then just leave.", cid)
	talkState[talkUser] = 0
elseif talkState[talkUser] == 1 and msgcontains(msg, 'no') then
	npcHandler:say("So why did you even started this conversation? Go away.", cid)
	talkState[talkUser] = 0
	---------- reward ------------
elseif msgcontains(msg, 'reward') then
	if player:getStorageValue(storages.firsttask) > 0 or player:getStorageValue(storages.secondtask) > 0 then 
		local task1, task2 = getFinishedTasks(cid)
		if task1 > 0 then
			npcHandler:say("First task\n "..getRewards(cid, task1), cid)			
			player:setStorageValue(player:getStorageValue(task1), 1)	
			player:setStorageValue(task1, -1)						
		elseif task2 > 0 then
			npcHandler:say("Second task\n "..getRewards(cid, task2), cid)			
			player:setStorageValue(player:getStorageValue(task2), 1)
			player:setStorageValue(task2, -1)				
		else
			npcHandler:say("You can't receive any reward since you didn't finish any task.", cid)			
		end
		talkState[talkUser] = 0		
	else
		npcHandler:say("Are you thinking about the rewards? You don't even started the challenge yet...", cid)
		talkState[talkUser] = 0
	end
end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())