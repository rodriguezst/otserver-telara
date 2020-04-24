local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
 
	if(msgcontains(msg, "inquisitor")) then
		npcHandler:say("The churches of the gods entrusted me with the enormous and responsible task to lead the inquisition. I leave the field work to inquisitors who I recruit from fitting people that cross my way.", cid)
	elseif(msgcontains(msg, "join")) then
		if(player:getStorageValue(200) < 1) then
			npcHandler:say("Do you want to join the inquisition?", cid)
			npcHandler.topic[cid] = 2
		end
	elseif(msgcontains(msg, "mission") or msgcontains(msg, "report")) then
		if(player:getStorageValue(200) == 1) then
			npcHandler:say("Let's see if you are worthy. Take an inquisitor's field guide from the box in the back room. ...", cid)
			npcHandler:say("Follow the instructions in the guide to talk to the guards that protect the walls and gates of the city and test their loyalty. Then report to me about your {mission}.", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 2)
			player:setStorageValue(12110, 2) -- The Inquisition Questlog- "Ask for Mission"
			player:setStorageValue(12111, 1) -- The Inquisition Questlog- "Mission 1: Interrogation"
		elseif(player:getStorageValue(200) == 2) then
			npcHandler:say("Your current mission is to investigate the reliability of certain guards. Are you done with that mission?", cid)
			npcHandler.topic[cid] = 3
		elseif(player:getStorageValue(200) == 3) then
			npcHandler:say("You've handled heretics, witches, vampires and ghosts. Now be prepared to face the most evil creatures we are fighting - demons. Your new task is extremely simple, though far from easy. ...", cid)
			npcHandler:say("Go and slay demonic creatures wherever you find them. Bring me {20 of their essences} as a proof of your accomplishments.", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 4)
			player:setStorageValue(12115, 1) -- The Inquisition Questlog- "Mission 5: Essential Gathering"
		elseif(player:getStorageValue(200) == 4) then
			if(player:getItemCount(6500) >= 20) then
				npcHandler:say("You're indeed a dedicated protector of the true believers. Don't stop now. Kill as many of these creatures as you can. ...", cid)
				npcHandler:say("I also have a reward for your great efforts. Talk to me about your {demon hunter outfit} anytime from now on. Afterwards, let's talk about the next mission that's awaiting you.", cid)
				player:setStorageValue(200, 5)
				player:setStorageValue(12115, 2) -- The Inquisition Questlog- "Mission 5: Essential Gathering"
				player:removeItem(6500, 20)
				player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			else
				npcHandler:say("You need 20 of them.", cid)
			end
			npcHandler.topic[cid] = 0
		elseif(player:getStorageValue(200) == 6) then
			npcHandler:say("Destroy the shadow nexus using this vial of holy water and kill all demon lords.", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 7)
			player:setStorageValue(12117, 1) -- The Inquisition Questlog- "Mission 7: The Shadow Nexus"
			player:setStorageValue(12118, 1) -- The Inquisition Enter.
			player:addItem(7494, 1)
		elseif(player:getStorageValue(200) == 7 or player:getStorageValue(200) == 8) then
			npcHandler:say("Your current mission is to destroy the shadow nexus in the Demon Forge. Are you done with that mission?", cid)
			npcHandler.topic[cid] = 6
		end
	elseif(msgcontains(msg, "yes")) then
		if(npcHandler.topic[cid] == 2) then
			npcHandler:say("So be it. Now you are a member of the inquisition. You might ask me for a {mission} to raise in my esteem.", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 1)
			player:setStorageValue(12110, 1) -- The Inquisition Questlog- "Ask for Mission"
		elseif(npcHandler.topic[cid] == 3) then
			if(player:getStorageValue(201) == 1 and player:getStorageValue(202) == 1 and player:getStorageValue(203) == 1 and player:getStorageValue(204) == 1 and player:getStorageValue(205) == 1) then
				npcHandler:say("Indeed, this is exactly what my other sources told me. Of course I knew the outcome of this investigation in advance. This was just a test. ...", cid) 
				npcHandler:say("Well, now that you've proven yourself as useful, you can ask me for another mission. Let's see if you can handle some field duty, too.", cid)
				npcHandler.topic[cid] = 0
				player:setStorageValue(200, 3)
				player:setStorageValue(12111, 7) -- The Inquisition Questlog- "Mission 1: Interrogation"
			else
				npcHandler:say("You haven't done your mission yet.", cid)
				npcHandler.topic[cid] = 0
			end
		elseif(npcHandler.topic[cid] == 6) then
			if (player:getStorageValue(200) == 8) then
				npcHandler:say("Incredible! You're a true defender of faith! I grant you the title of a High Inquisitor for your noble deeds. From now on you can obtain the blessing of the inquisition which makes the pilgrimage of ashes obsolete ...", cid)
				npcHandler:say("The blessing of the inquisition will bestow upon you all available blessings for the price of 60000 gold. Also, don't forget to ask me about your {outfit} to receive the final addon as demon hunter.", cid)
				player:setStorageValue(200, 9)
				player:setStorageValue(12117, 3) -- The Inquisition Questlog- "Mission 7: The Shadow Nexus"
				player:addAchievement('High Inquisitor')
				npcHandler.topic[cid] = 0
			else
				npcHandler:say("Come back when you have destroyed the shadow nexus.", cid)
			end
			npcHandler.topic[cid] = 0
		end
	elseif(msgcontains(msg, "no")) then
		if(npcHandler.topic[cid] > 0) then
			npcHandler:say("Then no.", cid)
			npcHandler.topic[cid] = 0
		end
	elseif(msgcontains(msg, "outfit")) then
		if(player:getStorageValue(200) == 5) then
			npcHandler:say("Here is your demon hunter outfit. You deserve it. Unlock more addons by completing more missions. ", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 6)
			player:setStorageValue(12115, 3) -- The Inquisition Questlog- "Mission 5: Essential Gathering"
			player:addOutfit(288, 0)
			player:addOutfit(289, 0)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		elseif(player:getStorageValue(200) == 7) then
			npcHandler:say("Here is the addon for your demon hunter outfit. Congratulations! ", cid)
			npcHandler.topic[cid] = 0
			player:setStorageValue(200, 10)
			player:setStorageValue(12117, 4) -- The Inquisition Questlog- "Mission 7: The Shadow Nexus"
			player:addOutfitAddon(288, 3)
			player:addOutfitAddon(289, 3)
			player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
			player:addAchievement('Demonbane')
		end
	elseif msgcontains(msg, 'name') then
		npcHandler:say('I\'m Henricus, the Lord Inquisitor.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'job') then
		npcHandler:say('By edict of the churches I\'m the Lord Inquisitor.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'beliver') then
		npcHandler:say('Belive on the gods and they will show you the path.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'inquisitor') then
		npcHandler:say('The churches of the gods entrusted me with the enormous and responsible task to lead the inquisition. I leave the field work to inquisitors who I recruit from fitting people that cross my way.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'church') then
		npcHandler:say('The churches of the gods united to fight heresy and dark magic. They are the shield of the true believers, while the inquisition is the sword that fights all enemies of virtuousness.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'gods') then
		npcHandler:say('We owe to the gods of good our creation and continuing existence. If it weren\'t for them, we would surely fall prey to the minions of the vile and dark gods.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'dark') then
		npcHandler:say('The dark powers are always present. If a human shows only the slightest weakness, they try to corrupt him and to lure him into their service. ...', cid)
		npcHandler:say('We must be constantly aware of evil that comes in many disguises.', cid, 3000)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'king') then
		npcHandler:say('The Thorian kings are crowned by a representative of the churches. This means they reign in the name of the gods of good and are part of the godly plan for humanity. ...', cid)
		npcHandler:say('As nominal head of the church of Banor, the kings aren\'t only worldly but also spiritual authorities. ...', cid, 4000)
		npcHandler:say('The kings fund the inquisition and sometimes provide manpower in matters of utmost importance. The inquisition, in return, protects the realm from heretics and individuals that aim to undermine the holy reign of the kings.', cid, 7000)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'banor') then
		npcHandler:say('In the past, the order of Banor was the only order of knighthood in existence. In the course of time,  the order concentrated more and more on spiritual matters rather than on worldly ones. ...', cid)
		npcHandler:say('Nowadays, the order of Banor sanctions new orders and offers spiritual guidance to the fighters of good.', cid, 4000)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'fardos') then
		npcHandler:say('The priests of Fardos are often mystics who have secluded themselves from worldly matters. Others provide guidance and healing to people in need in the temples.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'uman') then
		npcHandler:say('The church of Uman oversees the education of the masses as well as the doings of the sorcerer and druid guilds. It decides which lines of research are in accordance with the will of Uman and which are not. ...', cid, 2000)
		npcHandler:say('Concerned, the inquisition watches the attempts of these guilds to become more and more independent and to make own decisions. ...', cid, 4000)
		npcHandler:say('Unfortunately, the sorcerer guild has become dangerously influential and so the hands of our priests are tied due to political matters ...', cid, 7000)
		npcHandler:say('The druids lately claim that they are serving Crunor\'s will and not Uman\'s. Such heresy could only become possible with the independence of Carlin from the Thorian kingdom. ...', cid, 10000)
		npcHandler:say('The spiritual centre of the druids switched to Carlin where they have much influence and cannot be supervised by the inquisition.', cid, 13500)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'crunor') then
		npcHandler:say('The church of Crunor works closely together with the druid guild. This makes a cooperation sometimes difficult.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'zathroth') then
		npcHandler:say('We can see his evil influence almost everywhere. Keep your eyes open or the dark one will lead you on the wrong way and destroy you.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'fafnar') then
		npcHandler:say('Fafnar is mostly worshipped by the peasants and farmers in rural areas. ...', cid)
		npcHandler:say('The inquisition has a close eye on these activities. Simply people tend to mix local superstitions with the teachings of the gods. This again may lead to heretical subcults.', cid, 2500)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'demon') then
		npcHandler:say('Demons exist in many different shapes and levels of power. In general, they are servants of the dark gods and command great powers of destruction.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'bluffgard') then
		npcHandler:say('Bluffgard illustrates perfectly why the inquisition is needed and why we need more funds and manpower. ...', cid)
		npcHandler:say('Our agents were on their way to investigate certain occurrences there when some faithless knights fled to some unholy ruins. ...', cid, 3000)
		npcHandler:say('We were unable to wipe them out and the local order of knighthood was of little help. ...', cid, 6000)
		npcHandler:say('It\'s almost sure that something dangerous is going on there, so we have to continue our efforts.', cid, 9000)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'druid') then
		npcHandler:say('The druids here still follow the old rules. Sadly, the druids of Carlin have left the right path in the last years.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'sorcerer') then
		npcHandler:say('Those who wield great power have to resist great temptations. We have the burden to eliminate all those who give in to the temptations.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'knight') then
		npcHandler:say('Nowadays, most knights seem to have forgotten the noble cause to which all knights were bound in the past. Only a few have remained pious, serve the gods and follow their teachings.', cid)
		npcHandler.topic[cid] = 0
	elseif msgcontains(msg, 'paladin') then
		npcHandler:say('It\'s a shame that only a few paladins still use their abilities to further the cause of the gods of good. Too many paladins have become selfish and greedy.', cid)
		npcHandler.topic[cid] = 0
	end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Greetings, fellow {believer} |PLAYERNAME|!")
npcHandler:setMessage(MESSAGE_FAREWELL, "Always be on guard, |PLAYERNAME|!")
npcHandler:setMessage(MESSAGE_WALKAWAY, "This ungraceful haste is most suspicious!") 
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
