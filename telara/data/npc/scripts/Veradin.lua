local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
	local player = Player(cid)
    local mounts =
    {
		["azudocus"] = {tokens = 775, mountId = 44},
        ["carpacosaurus"] = {tokens = 775, mountId = 45},
        ["platesaurian"] = {tokens = 775, mountId = 37},
        ["armoured war horse"] = {tokens = 425, mountId = 23},
        ["shadow draptor"] = {tokens = 425, mountId = 24},
        ["crimson ray"] = {tokens = 525, mountId = 33},
        ["steelbeak"] = {tokens = 525, mountId = 34},
		["dragonling"] = {tokens = 775, mountId = 31},
		["crystal wolf"] = {tokens = 425, mountId = 16},
		["black sheep"] = {tokens = 425, mountId = 4},
        ["donkey"] = {tokens = 425, mountId = 13},
        ["midnight panther"] = {tokens = 525, mountId = 5},
        ["rapid boar"] = {tokens = 525, mountId = 10},
		["uniwheel"] = {tokens = 775, mountId = 15},
		["vortexion"] = {tokens = 800, mountId = 99},

    }
	
	local outfits =
    {
        ["entrepreneur"] = {tokens = 775, outfitMale = 472, outfitFemale = 471},
        ["recruiter"] = {tokens = 525, outfitMale = 746, outfitFemale = 745},
		["jersey"] = {tokens = 425, outfitMale = 619, outfitFemale = 620},
    }
	
	mounts[msg] = mounts[msg:lower()]
	outfits[msg] = outfits[msg:lower()]

    if(not npcHandler:isFocused(cid)) then
		return false
    end
	
	if msgcontains(msg, 'balance') then
       npcHandler:say("You have {"..player:getTokens().." Crown Tokens}.", cid)
        return true
    end

	if msgcontains(msg, 'mounts') then
		npcHandler:say("Mounts available at the moment {Azudocus}, {Carpacosaurus}, {Platesaurian}, {Armoured War Horse}, {Crimson Ray}, {Dragonling}, {Crystal Wolf}, {Black Sheep}, {Donkey}, {Midnight Panther}, {Rapid Boar}, {Uniwheel}, {Vortexion}, and {Steelbeak}.", cid)
	elseif msgcontains(msg, 'outfits') then
		npcHandler:say("Outfits available at the moment {Entrepreneur}, {Recruiter} and {Jersey}.", cid)
	elseif not mounts[msg] and not outfits[msg] then
		npcHandler:say("Sorry, choose another option as a reward.", cid)
		return true
	end
	
	if mounts[msg] then
		if player:hasMount(mounts[msg].mountId) then
			npcHandler:say("You already own this mount.", cid)
			return true
		end
		if player:getTokens() >= mounts[msg].tokens then
			npcHandler:say("You were rewarded with the mount {"..msg.."} for "..mounts[msg].tokens.." Crown Tokens", cid)
			player:removeTokens(mounts[msg].tokens)
			player:addMount(mounts[msg].mountId)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		else
			npcHandler:say("You need to {"..mounts[msg].tokens.." Crown Tokens} to receive this mount.", cid)
		end
	elseif outfits[msg] then
		if player:hasOutfit(outfits[msg].outfitMale, 3) or player:hasOutfit(outfits[msg].outfitFemale, 3) then
			npcHandler:say("You already own this outfit.", cid)
			return true
		end
		if player:getTokens() >= outfits[msg].tokens then
			npcHandler:say("You were rewarded with the outfit {"..msg.."} for complete "..outfits[msg].tokens.." Crown Tokens", cid)
			player:removeTokens(outfits[msg].tokens)
			player:addOutfitAddon(outfits[msg].outfitMale, 3)
			player:addOutfitAddon(outfits[msg].outfitFemale, 3)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		else
			npcHandler:say("You need to {"..outfits[msg].tokens.." Crown Tokens} to receive this Outfit.", cid)
		end
	end
    return true
end

keywordHandler:addKeyword({'crown tokens'}, StdModule.say, {npcHandler = npcHandler, text = "Crown Tokens are a kind of tokens that you can exchange for rewards, with each level you pick up counting from the 20 you will automatically receive 5 Crown Tokens, to check how many you already have, say {balance} or {trade} to exchange for some reward."})
keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, text = "To exchange and receive your reward choose what you want: {outfits} or {mounts}."})

npcHandler:setMessage(MESSAGE_GREET, "Welcome |PLAYERNAME|. I can offer rewards in exchange for {Crown Tokens}.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye and enjoy your stay in Thoria, |PLAYERNAME|.")

npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())