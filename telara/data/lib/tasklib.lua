-- Task System LIB
-- [14020] tem que ser o primeiro e todos os outros seguirem a ordem "anterior + 1"
tasks = { 
-- tier 0
[14020] = {mob = {"Rat", "Cave Rat"}, count = 12, level = 0, needed = 0, -- ESSA PRECISA SER A PRIMEIRA
reward = {item = {{2148, 15}, {8704, 1}} --, addon = {male = {145, 2}, female = {145, 2}} , outfit = {male = 152, female = 149}, storage = 14281, mount = 14
}},
-- tier 1
[14021] = {mob = {"Troll"}, count = 10, level = 3, needed = 0,
reward = {item = {{8704, 2}, {2649, 1}}
}},
[14022] = {mob = {"Spider", "Poison Spider"}, count = 12, level = 2, needed = 0,
reward = {item = {{2148, 25}, {8704, 3}}, experience = 50
}},
[14023] = {mob = {"Skeleton", "Skeleton Warrior", "Undead Gladitor", "Undead Mine Worker"}, count = 18, level = 6, needed = 0,
reward = {item = {{2148, 100}, {7618, 2}, {7620, 2}}
}},
[14024] = {mob = {"Rotworm", "Carrion Worm", "Rotworm Queen"}, count = 30, level = 8, needed = 0,
reward = {item = {{2152, 3}, {7618, 4}, {7620, 3}}, experience = 3500
}},
[14025] = {mob = {"Crocodile", "The Snapper"}, count = 40, level = 8, needed = 0,
reward = {item = {{2152, 3}, {7618, 3}, {7620, 2}}
}},
-- tier 2
[14026] = {mob = {"Minotaur", "Minotaur Archer", "Minotaur Guard", "Minotaur Mage"}, count = 16, level = 6, needed = 0,
reward = {item = {{2512, 1}, {7618, 2}, {7620, 2}}
}},
[14027] = {mob = {"Orc", "Orc Spearman", "Orc Shaman", "Orc Leader", "Orc Berserker", "Orc Marauder", "Orc Rider", "Orc Warlord", "Orc Warrior", "Kraknaknork"}, count = 30, level = 6, needed = 0,
reward = {item = {{2398, 1}, {7618, 2}, {7620, 2}}
}},
[14028] = {mob = {"Wasp"}, count = 20, level = 6, needed = 0,
reward = {item = {{7618, 5}, {7620, 2}}, experience = 920
}},
[14029] = {mob = {"Larva"}, count = 35, level = 8, needed = 0,
reward = {item = {{7618, 4}, {7620, 3}, {2152, 2}}, experience = 850
}},
[14030] = {mob = {"Tarantula"}, count = 60, level = 20, needed = 0,
reward = {item = {{2152, 6}}, experience = 8600
}},
[14031] = {mob = {"Ghoul"}, count = 50, level = 12, needed = 0,
reward = {item = {{2168, 1}},experience = 5270
}},
[14032] = {mob = {"Demon Skeleton"}, count = 80, level = 26, needed = 0,
reward = {experience = 18510
}},
[14033] = {mob = {"Ghost"}, count = 80, level = 30, needed = 0,
reward = {item = {{6527, 9}, {2152, 5}}, experience = 9600
}},
-- tier 3
[14034] = {mob = {"Wailing Widow"}, count = 80, level = 25, needed = 0,
reward = {item = {{13307, 1, chance = 5}, {5879, 3}}, experience = 26500
}},
[14035] = {mob = {"Scarab", "Ancient Scarab"}, count = 55, level = 12, needed = 0,
reward = {item = {{2162, 1}, {2159, 10}}
}},
[14036] = {mob = {"Dragon Hatchling", "Dragon Lord Hatchling", "Frost Dragon Hatchling"}, count = 60, level = 18, needed = 0,
reward = {item = {{7618, 5}, {7620, 5}}, experience = 4900
}},
[14037] = {mob = {"Orc Leader", "Orc Warlord"}, count = 75, level = 30, needed = 0,
reward = {item = {{6527, 6}, {2475, 1}}
}},
[14038] = {mob = {"Goblin", "Goblin Assassin", "Goblin Leader", "Goblin Scavenger"}, count = 50, level = 8, needed = 0,
reward = {item = {{2152, 4}}, experience = 5000
}},
[14039] = {mob = {"Dwarf", "Dwarf Guard", "Dwarf Miner", "Dwarf Geomancer", "Dwarf Soldier"}, count = 50, level = 8, needed = 0,
reward = {item = {{6527, 4}, {2543, 40}}, experience = 1620
}},
[14040] = {mob = {"Cyclops", "Cyclops Drone", "Cyclops Smith"}, count = 200, level = 15, needed = 0,
reward = {experience = 13900
}},
[14041] = {mob = {"Amazon"}, count = 60, level = 10, needed = 0,
reward = {item = {{7618, 10}, {7620, 6}}, experience = 6000
}},
[14042] = {mob = {"Mummy"}, count = 65, level = 28, needed = 14031,
reward = {item = {{7618, 25}, {7620, 15}, {6527, 5}},experience = 11000
}},
[14043] = {mob = {"undead monster"}, count = 100, level = 40, needed = 14032, -- banshee quest I
reward = {experience = 18000, storage = 14281
}},
[14044] = {mob = {"Spectre"}, count = 300, level = 68, needed = 0,
reward = {item = {{6527, 15}}, experience = 126000
}},
-- tier 4
[14045] = {mob = {"Giant Spider"}, count = 60, level = 32, needed = 0,
reward = {item = {{6527, 10}}, experience = 22000
}},
[14046] = {mob = {"Ancient Scarab"}, count = 90, level = 28, needed = 0,
reward = {item = {{6527, 3}, {2152, 20}}, experience = 34000
}},
[14047] = {mob = {"Stampor"}, count = 80, level = 30, needed = 0,
reward = {experience = 37000, mount = 11
}},
[14048] = {mob = {"Dragon", "Dragon Lord", "Demodras"}, count = 100, level = 20, needed = 0,
reward = {item = {{2201, 1}, {2516, 1}}, experience = 10000
}},
[14049] = {mob = {"Cyclops Smith", "Cyclops Drone"}, count = 90, level = 28, needed = 0,
reward = {item = {{7588, 10}, {2391, 1}}, experience = 22000
}},
[14050] = {mob = {"Dark Magician"}, count = 75, level = 18, needed = 0,
reward = {item = {{7620, 25}}, experience = 13875
}},
[14051] = {mob = {"Valkyrie"}, count = 70, level = 12, needed = 0,
reward = {mount = 13, experience = 7500
}},
[14052] = {mob = {"Vampire", "Vampire Bride", "Vampire Viscount"}, count = 150, level = 29, needed = 0,
reward = {item = {{2534, 1, chance = 5}, {2152, 20}}, experience = 32210
}},
[14053] = {mob = {"undead monster"}, count = 150, level = 50, needed = 0, -- banshee quest II
reward = {experience = 22000, storage = 14282
}},
[14054] = {mob = {"Phantasm"}, count = 80, level = 80, needed = 0,
reward = {item = {{6527, 7}}, experience = 148715
}},
-- tier 5
[14055] = {mob = {"Hydra", "The Many"}, count = 210, level = 60, needed = 0,
reward = {item = {{6527, 15}}, experience = 118650
}},
[14056] = {mob = {"Dragon Lord", "Demodras"}, count = 250, level = 55, needed = 0,
reward = {item = {{2414, 1}, {2492, 1, chance = 3}, {7891, 1, chance = 6}}, experience = 112500
}},
[14057] = {mob = {"Wyrm", "Elder Wyrm", "Tyrn"}, count = 200, level = 52, needed = 0,
reward = {item = {{10221, 1}}, experience = 66430
}},
[14058] = {mob = {"Behemoth"}, count = 200, level = 85, needed = 0,
reward = {item = {{2454, 1}}, experience = 269230
}},
[14059] = {mob = {"Necromancer", "Necropharus"}, count = 175, level = 38, needed = 0,
reward = {item = {{2185, 1}}, experience = 36250
}},
[14060] = {mob = {"Hero"}, count = 175, level = 42, needed = 0,
reward = {item = {{6527, 6}}, experience = 42650
}},
[14061] = {mob = {"Banshee"}, count = 200, level = 50, needed = 0,
reward = {item = {{2160, 1}}, experience = 49090
}},
[14062] = {mob = {"Vampire Viscount", "Vampire Bride"}, count = 175, level = 42, needed = 0,
reward = {item = {{6527, 12}, {2152, 40}}, experience = 55115
}},
[14063] = {mob = {"undead monster"}, count = 250, level = 60, needed = 0, -- banshee quest III
reward = {experience = 24000, storage = 14283, mount = 12
}},
-- tier 6
[14064] = {mob = {"Frost Dragon"}, count = 300, level = 80, needed = 0,
reward = {item = {{6527, 15}}, experience = 126000
}},
[14065] = {mob = {"Demon", "Orshabaal"}, count = 400, level = 120, needed = 0,
reward = {item = {{2472, 1, chance = 5}, {10305, 1}, {6527, 30}}, experience = 764100, outfit = {male = 289, female = 288}, mount = 39
}},
[14066] = {mob = {"Warlock"}, count = 280, level = 110, needed = 0,
reward = {item = {{6527, 18}, {2123, 1, chance = 3}, {2466, 1, chance = 1}, {2656, 1, chance = 15}}, experience = 450000
}},
-- tier 3 extended
[14067] = {mob = {"Elf", "Elf Scout", "Elf Arcanist"}, count = 60, level = 10, needed = 0,
reward = {item = {{2175, 1}, {7620, 10}}
}},
}

 config = { -- #tasks nao funciona, esse foi o jeito
first = 14020,
last = 14067
}

storages = {
firsttask = 14010, -- task1
secondtask = 14011, -- task2
countfirst = 14012, -- quantidade que já matou da task 1
countsecond = 14013 -- quantidade que já matou da task 2
}

function getFreeSlotTask(cid)
	if Player(cid):getStorageValue(storages.firsttask) > 0 then
		return storages.secondtask, storages.countsecond
	else
		return storages.firsttask, storages.countfirst
	end
end

function getFinishedTasks(cid)
	local self = Player(cid)
	local t1, t2 = 0, 0
	if tasks[self:getStorageValue(storages.firsttask)] or tasks[self:getStorageValue(storages.secondtask)] then
		if tasks[self:getStorageValue(storages.firsttask)] and (self:getStorageValue(storages.countfirst) >= tasks[self:getStorageValue(storages.firsttask)].count) then
			t1 = storages.firsttask
		end
		if tasks[self:getStorageValue(storages.secondtask)] and (self:getStorageValue(storages.countsecond) >= tasks[self:getStorageValue(storages.secondtask)].count) then
			t2 = storages.secondtask
		end
	end
	return t1, t2
end

function getRewards(cid, task)
	local self = Player(cid)
	local msg = "You've received for this task: "
	if tasks[self:getStorageValue(task)] then		
		for tipo, valor in pairs (tasks[self:getStorageValue(task)].reward) do 
			if tipo == "experience" then
				experience = valor --* Game.getExperienceStage(self:getLevel())
				msg = msg..experience.." of experience, "
				self:addExperience(experience)
			elseif tipo == "addon" then
				if self:getSex() == 0 then
					self:addOutfitAddon(valor.female[1], valor.female[2])				
				else
					self:addOutfitAddon(valor.male[1], valor.male[2])
				end
				msg = msg.."a new addon, "
			elseif tipo == "outfit" then
				if self:getSex() == 0 then
					self:addOutfit(valor.female)
				else
					self:addOutfit(valor.male)
				end
				msg = msg.."a new outfit, "
			elseif tipo == "storage" then
				self:setStorageValue(valor, 1)
				msg = msg.."a new mission avaiable, "
			elseif tipo == "item" then
				msg = msg.."the following itens: "
				for _, itens in ipairs (valor) do
					if itens.chance and itens.chance < math.random(1, 100) then goto continue end
					self:addItem(itens[1], itens[2])
					msg = msg..ItemType(itens[1]):getName()..", "
					::continue::
				end
			elseif tipo == "mount" then
				self:addMount(valor)
				msg = msg.."a new mount, "
			end
		end
		msg = msg.."enjoy your prize(s) and I'll wait you for the next task."
	end
return msg
end