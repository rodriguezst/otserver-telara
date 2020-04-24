-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = true
protectionLevel = 0
pzLocked = 60 * 1000
removeChargesFromRunes = false
removeChargesFromPotions = true
removeWeaponAmmunition = false
removeWeaponCharges = true
timeToDecreaseFrags = 3 * 60 * 60 * 1000
whiteSkullTime = 8 * 60 * 1000
stairJumpExhaustion = 2 * 1000
experienceByKillingPlayers = false
expFromPlayersLevelRange = 75
killsToRedSkull = 8
killsToBlackSkull = 16

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
ip = "127.0.0.1"
bindOnlyGlobalAddress = false
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 500
motd = "Welcome to The Telara Online!"
onePlayerOnlinePerAccount = true
allowClones = false
serverName = "Telara Online"
statusTimeout = 5 * 1000
replaceKickOnLogin = true
maxPacketsPerSecond = 25

-- Version Manual
clientVersionMin = 1100
clientVersionMax = 1157
clientVersionStr = "11.57"

-- Depot Limit
freeDepotLimit = 2000
premiumDepotLimit = 10000
depotBoxes = 17

-- GameStore
gamestoreByModules = true

-- Casting System 
enableLiveCasting = false
liveCastPort = 7173

-- Expert Pvp Config
expertPvp = false

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 3000
houseRentPeriod = "month"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "world"
mapAuthor = "Telara"

-- Market
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = true
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "otdb"
mysqlUser = "otserver"
mysqlPass = "otserver"
mysqlDatabase = "otserver"
mysqlPort = 3306
mysqlSock = ""
passwordType = "sha1"

-- Misc.
allowChangeOutfit = true
freePremium = true
kickIdlePlayerAfterMinutes = 15
idleWarningTime = 10 * 60 * 1000
idleKickTime = 15 * 60 * 1000
maxMessageBuffer = 4
emoteSpells = false
classicEquipmentSlots = false
allowWalkthrough = true
coinPacketSize = 1
coinImagesURL = "http://127.0.0.1/images/store/"
classicAttackSpeed = false

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 100
rateSkill = 15
rateLoot = 6
rateMagic = 10
rateSpawn = 1

-- Monster rates
rateMonsterHealth = 1.0
rateMonsterAttack = 1.0
rateMonsterDefense = 1.0

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = true

-- Scripts
warnUnsafeScripts = true
convertUnsafeScripts = true

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process
-- priority, valid values are: "normal", "above-normal", "high"
defaultPriority = "high"
startupDatabaseOptimization = true

-- Status server information
ownerName = "Telara"
ownerEmail = ""
url = "http://hub.docker.com"
location = "Docker"