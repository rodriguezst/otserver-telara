function onLogin(cid)

								
local player = Player(cid)
local addons ={	
	  --[storage] = {outfit_male, outfit_female},
     [28416] = {143, 147}, -- barbarian
	[28417] = {134, 142}, -- warrior
	[28418] = {152, 156}, -- assassin
	[28419] = {465, 466}, -- Insectoid 
	[28420] = {133, 141},  -- summoner
	[28421] = {472, 471}, -- Entrepreneur 
	[28422] = {144, 148}, -- duid
	[28423] = {278, 279}, -- brotherhood
	[28424] = {577, 578}, -- Dream Warden
	[28425] = {610, 618}, -- Glooth Engineer
	[28426] = {130, 138}, -- mage
	[28427] = {634, 635}, -- Conjurer 
	[28428] = {128, 136}, -- Citizen
	[28429] = {129, 137}, -- Hunter	
	[28430] = {131, 139}, -- Knight
	[28431] = {132, 140}, -- Noblewoman
	[28432] = {145, 149}, -- Wizard
	[28433] = {146, 150}, -- Oriental
	[28434] = {151, 155}, -- Pirate
	[28435] = {153, 157}, -- Beggar
	[28436] = {154, 158}, -- Shaman
	[28437] = {251, 252}, -- Norsewoman
	[28438] = {268, 269}, -- Nightmare
	[28439] = {273, 270}, -- jester
	[28441] = {289, 288}, -- demonhunter
	[28442] = {325, 324}, -- yalaharian
	[28444] = {335, 336}, -- warmaster
	[28445] = {327, 366}, -- wayfarer
	[28446] = {430, 431}, -- afflicted
	[28447] = {432, 433}, -- elementalist
	[28448] = {463, 464}, -- deepling
	[28449] = {512, 513}, -- crystal warlord
	[28450] = {516, 514}, -- soil guardian
	[28451] = {541, 542}, -- demon
	[28452] = {574, 575}, -- cave explorer
	[28453] = {619, 620}, -- jersey
	[28454] = {637, 636}, -- beastmaster
	[28455] = {633, 632}, -- champion
	[28456] = {577, 578}, -- dream warder
	[28457] = {665, 664}, -- chaos acolyte
	[28458] = {667, 666}, -- Death Herald
	[28459] = {684, 683}, -- Ranger
	[28460] = {695, 694}, -- Ceremonial Garb
	[28461] = {697, 696}, -- Puppeteer
	[28462] = {699, 723}, -- Spirit Caller
	[28463] = {725, 724}, -- Evoker
	[28464] = {733, 732}, -- Seaweaver
	[28465] = {746, 745}, -- Recruiter
	[28466] = {750, 749}, -- Sea Dog
	[28467] = {760, 759}, -- Royal Pumpkin
	[28468] = {846, 845}, -- Rift Warrior
	[28469] = {853, 852}, -- Winter Warden
	[28470] = {874, 873} -- Philosopher
	


	}
	
		for storage, addon in pairs(addons) do
			if player:getStorageValue(storage) > 0 then
				player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
				player:addOutfitAddon(addon[1], 3)
				player:addOutfitAddon(addon[2], 3)
				player:sendTextMessage(MESSAGE_INFO_DESCR, "You have received your full addon!")
				player:setStorageValue(storage, 0)
			end
		end
		
												
local mounts ={	
		--[storage] = mounts,
[80000] = 1, -- Widow Queen
	[80001] = 2, -- Racing Bird
	[80002] = 3, -- War Bear
	[80003] = 4, -- Black Sheep
	[80004] = 5, -- Midnight Panther
	[80005] = 6, -- Draptor
	[80006] = 7, -- Titanica
	[80007] = 8, -- Tin Lizzard
	[80008] = 9, -- Blazebringer
	[80009] = 10, -- Rapid Boar
	[80010] = 11, -- Stampor
	[80011] = 12, -- Undead Cavebear
	[80012] = 13, -- Donkey
	[80013] = 14, -- Tiger Slug
	[80014] = 15, -- Uniwheel
	[80015] = 16, -- Crystal Wolf
	[80016] = 17, -- War Horse
	[80017] = 18, -- Kingly Deer
	[80018] = 19, -- Tamed Panda
	[80019] = 20, -- Dromedary
	[80020] = 21, -- King Scorpion
	[80021] = 22, -- Rented Horse
	[80022] = 23, -- Armoured War Horse
	[80023] = 24, -- Shadow Draptor
	[80024] = 25, -- Rented Horse
	[80025] = 26, -- Rented Horse
	[80026] = 27, -- Ladybug
	[80027] = 28, -- Manta
	[80028] = 29, -- Ironblight
	[80029] = 30, -- Magma Crawler
	[80030] = 31, -- Dragonling
	[80031] = 32, -- Gnarlhound
	[80032] = 33, -- Crimson Ray
	[80033] = 34, -- Steelbeak
	[80034] = 35, -- Water Buffalo
	[80035] = 36, -- Tombstinger
	[80036] = 37, -- Platesaurian
	[80037] = 38, -- Ursagrodon
	[80038] = 39, -- The Hellgrip
	[80039] = 40, -- Noble Lion
	[80040] = 41, -- Desert King
	[80041] = 42, -- Shock Head
	[80042] = 43, -- Walker
	[80043] = 44, -- Azudocus
	[80044] = 45, -- Carpacosaurus
	[80045] = 46, -- Death Crawler
	[80046] = 47, -- Flamesteed
	[80047] = 48, -- Jade Lion
	[80048] = 49, -- Jade Pincer
	[80049] = 50, -- Nethersteed
    [80050] = 51, -- Tempest
	[80051] = 52, -- Winter King
	[80052] = 53, -- Doombringer
	[80053] = 54, -- Woodland Prince
	[80054] = 55, -- Hailtorm Fury
	[80055] = 56, -- Siegebreaker
	[80056] = 57, -- Poisonbane
	[80057] = 58, -- Blackpelt
	[80058] = 59, -- Golden Dragonfly
	[80059] = 60, -- Steel Bee
	[80060] = 61, -- Copper Fly
    [80061] = 62, -- Tundra Rambler
	[80062] = 63, -- Highland Yak
	[80063] = 64, -- Glacier Vagabond
	[80064] = 65, -- Glooth Glider
	[80065] = 66, -- Shadow Hart
	[80066] = 67, -- Black Stag
	[80067] = 68, -- Emperor Deer
	[80068] = 69, -- Flying Divan
	[80069] = 70, -- Magic Carpet
	[80070] = 71, -- Floating Kashmir
	[80071] = 72, -- Ringtail Waccoon
	[80072] = 73, -- Night Waccoon
	[80073] = 74, -- Emerald Waccoon
	[80074] = 75, -- Flitterkatzen
	[80075] = 76, -- Venompaw
	[80076] = 77, -- Batcat
	[80077] = 78, -- Sea Devil
	[80078] = 79, -- Coralripper
	[80079] = 80, -- Plumfish
	[80080] = 81, -- Gorongra
	[80081] = 82, -- Noctungra
	[80082] = 83, -- Silverneck
	[80083] = 84, -- Slagsnare
	[80084] = 85, -- Nightstinger
	[80085] = 86, -- Razorcreep
	[80086] = 87, -- Rift Runner
	[80087] = 88, -- Dominous Draptor
	[80088] = 89, -- Nightdweller
	[80089] = 90, -- Frostflare
	[80090] = 91, -- Cinderhoof
	[80091] = 92, -- Moldpincer
	[80092] = 93, -- Bloodcurl
	[80093] = 94, -- Leafscuttler
	[80094] = 95, -- Sparkion
	[80095] = 96, -- Swamp Nnapper
	[80096] = 97, -- Mould Shell
	[80097] = 98, -- Reed Lurker
	[80098] = 99, -- Neon Sparkid
	[80099] = 100 -- Vortexion

	
	}
		
		for storage, mount in pairs(mounts) do
			if player:getStorageValue(storage) > 0 then
				player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
				player:addMount(mount)
				player:sendTextMessage(MESSAGE_INFO_DESCR, "You have received your mount!")
				player:setStorageValue(storage, 0)
			end
		end	
	return true
end