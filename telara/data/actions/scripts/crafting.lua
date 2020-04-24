local config = {
-- Window Config
	mainTitleMsg = "Crafting System", -- Main window title
	mainMsg = "Welcome to the crafting system. Please choose a vocation to begin.", -- Main window message

	craftTitle = "Crafting System: ", -- Title of the crafting screen after player picks of vocation
	craftMsg = "Here is a list of all items that can be crafted for the ", -- Message on the crafting screen after player picks of vocation
-- End Window Config

-- Player Notifications Config
	needItems = "You do not have all the required items to make ", -- This is the message the player recieves if he does not have all required items

-- Crafting Config
	system = {
	[1] = {vocation = "Sorceres and Druids", -- This is the category can be anything.
			items = {
				[1] = {item = "Focus Cape", -- item name (THIS MUST BE EXACT OR IT WILL NOT WORK!)
						itemID = 8871, -- item to be made
						reqItems = { -- items and the amounts in order to craft.
								[1] = {item = 2187, count = 3}, -- Wand Of Inferno
								[2] = {item = 2463, count = 1}, -- Plate Armor
								[3] = {item = 21400, count = 5}, -- Crafting Token
							},
						},
					
				[2] = {item = "Robe of The Underworld",
						itemID = 8890,		
						reqItems = {
								[1] = {item = 8871, count = 1}, -- Focus Cape
								[2] = {item = 8903, count = 1}, -- spellbook of lost souls
								[3] = {item = 22541, count = 5}, -- pool of chitinous glue
								[4] = {item = 10563, count = 20}, -- book of prayers
								[5] = {item = 11237, count = 20}, -- book of necromantic rituals
								[6] = {item = 21400, count = 20}, -- Crafting Token
							},
						},					
				
				[3] = {item = "Royal Scale Robe",
						itemID = 12643,			
						reqItems = {
							    [1] = {item = 21400, count = 30}, -- Crafit Tokens
								[2] = {item = 10553, count = 100}, -- Magician Hat
								[3] = {item = 8890, count = 1}, -- RObe of the underworld
								[4] = {item = 5911, count = 100}, -- Red Piece of cloth
						},
					},
					
				[4] = {item = "Spellbook of Lost Souls",
						itemID = 8903,				
						reqItems = {
							    [1] = {item = 21400, count = 10}, -- Crafit Tokens
								[2] = {item = 8902, count = 1}, -- spellbook of mind control
								[3] = {item = 10582, count = 5}, -- wyrm scale
								[4] = {item = 5944, count = 25}, -- soul orb
						},
					},
					
				[5] = {item = "Snake God's Wristguard",
						itemID = 12647,				
						reqItems = {
							    [1] = {item = 21400, count = 25}, -- Crafting Token
								[2] = {item = 7894, count = 1}, -- Magma legs
								[3] = {item = 2158, count = 1}, -- Blue gem
								[4] = {item = 10553, count = 20}, -- Fiery Heart
						},
					},
					
				[6] = {item = "Oriental Shoes",
						itemID = 24637,			
						reqItems = {
							    [1] = {item = 21400, count = 25}, -- Crafting Token
								[2] = {item = 7891, count = 1}, -- Magma Boots
								[3] = {item = 13757, count = 20}, -- Coal
								[4] = {item = 18420, count = 20}, -- red crystal fragments
						},
					},
				},
			},
					
		[2] = {vocation = "Royal Paladin", 
				items = {
					[1] = {item = "The Ironworker",
							itemID = 8853,
							reqItems = {
								[1] = {item = 21400, count = 60}, -- Crafting Token
								[2] = {item = 2455, count = 1}, -- Crossbow
								[3] = {item = 5904, count = 30}, -- Magic Sulphur
								[4] = {item = 18427, count = 20}, -- Pulverized Ore
								[5] = {item = 22396, count = 10}, -- Cluster of Solace
							},
						},
						
					[2] = {item = "Zaoan Helmet",
							itemID = 11302,		
							reqItems = {
								[1] = {item = 21400, count = 35}, -- Silver Tokens
								[2] = {item = 5880, count = 100}, -- Iron Ore
								[3] = {item = 5954, count = 5}, -- Demon Horn
								[4] = {item = 2497, count = 1}, -- Crusader Helmet
							},
						},						
					
					[3] = {item = "Divine Armor",
							itemID = 8885,			
							reqItems = {
								[1] = {item = 21400, count = 40}, -- Silver Tokens
								[2] = {item = 5912, count = 100}, -- Blue Cloth
								[3] = {item = 2472, count = 1}, -- Demon Horn
							},
						},
						
					[4] = {item = "Golden Legs",
							itemID = 2470,				
							reqItems = {
								[1] = {item = 21400, count = 35}, -- Silver Tokens
								[4] = {item = 5905, count = 3}, -- Vampire Dust
							},
						},
					},
				},
		
		[3] = {vocation = "Elite Knight", 
				items = {
					[1] = {item = "Berserker",
							itemID = 7403,
							reqItems = {
								[1] = {item = 21400, count = 50}, -- Silver Tokens
								[2] = {item = 2376, count = 1}, -- Sword
								[3] = {item = 5887, count = 20}, -- Piece of royal steel
								[4] = {item = 18427, count = 20}, -- Pulverized ore
								[5] = {item = 22396, count = 5}, -- Cluster of Solace
							},
						},
						
					[2] = {item = "Death Gaze",
							itemID = 25414,		
							reqItems = {
								[1] = {item = 21400, count = 30}, -- Silver Tokens
								[2] = {item = 2520, count = 5}, -- Demon Shield
								[3] = {item = 5889, count = 20}, -- piece of draconian steel
							},
						},						
					
					[3] = {item = "Zaoan Helmet",
							itemID = 11302,		
							reqItems = {
								[1] = {item = 21400, count = 35}, -- Silver Tokens
								[2] = {item = 5880, count = 100}, -- Iron Ore
								[3] = {item = 5954, count = 5}, -- Demon Horn
								[4] = {item = 2497, count = 1}, -- Crusader Helmet
							},
						},	
						
					[4] = {item = "Skullcracker Armor",
							itemID = 8889,				
							reqItems = {
								[1] = {item = 21400, count = 40}, -- Silver Tokens
								[2] = {item = 2463, count = 1}, -- plate armor
								[3] = {item = 5911, count = 10}, -- Red piece of cloth
							},
						},
				
					[5] = {item = "Golden Legs",
							itemID = 2470,				
							reqItems = {
								[1] = {item = 21400, count = 35}, -- Silver Tokens
								[4] = {item = 5905, count = 3}, -- Vampire Dust
							},
						},	
					},
				},
			},
		}

function onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    player:sendMainCraftWindow(config)
    return true
end