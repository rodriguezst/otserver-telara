--Storages para usar--70011 - 70012 - 70046 para continuar..
    --UniqueID parado é 55072
    --UniqueIDS para quests, começa nos 55000 + para a quest funcionar, use o ACTIONID 2000 + UNIQUEID para pegar o BAU e os Storagevalue 70000 + --
    local config = {
        storage = 70013,
            Bp_ID = 5926, --Pirate Backpack

        storage2 = 70020,
            Presente = 1990--presente anihilator

}

function onUse(cid, item, fromPosition, itemEx, toPosition)

--quest aleatórias--

if item.uid == 55000 then -- Relocado
if getPlayerStorageValue(cid, 70000) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a old parchment.")
doPlayerAddItem(cid, 23784, 1)
setPlayerStorageValue(cid, 70000, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The bookcase is empty.")
end

elseif item.uid == 55001 then -- Relocado
if getPlayerStorageValue(cid, 70001) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a vampire shield.")
doPlayerAddItem(cid, 2534, 1)
setPlayerStorageValue(cid, 70001, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55003 then -- Relocado
if getPlayerStorageValue(cid, 70003) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a obsidian knife.")
doPlayerAddItem(cid, 5908, 1)
setPlayerStorageValue(cid, 70003, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55004 then
if getPlayerStorageValue(cid, 70004) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found the holy Tible.")
local book = doPlayerAddItem(cid, 1970, 1)
doSetItemText(book, "Banor I praise your name.\nBe with me in the battle.\nBe my shield, let me be your sword.\nI will honour the godly spark in my soul. May it flourish and grow.")
setPlayerStorageValue(cid, 70004, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55069 then -- Relocado
if getPlayerStorageValue(cid, 70042) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dwarven helmet.")
doPlayerAddItem(cid, 2502, 1)
setPlayerStorageValue(cid, 70042, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55070 then -- Relocado
if getPlayerStorageValue(cid, 70043) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a steel boots.")
doPlayerAddItem(cid, 2645, 1)
setPlayerStorageValue(cid, 70043, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55071 then
if getPlayerStorageValue(cid, 70044) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a Yol's bow.")
doPlayerAddItem(cid, 8856, 1)
setPlayerStorageValue(cid, 70044, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55072 then
if getPlayerStorageValue(cid, 70045) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a firewalker boots.")
doPlayerAddItem(cid, 9933, 1)
setPlayerStorageValue(cid, 70045, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--quest aleatórias end--

--pits of inferno--

elseif item.uid == 55005 then -- Relocado
if getPlayerStorageValue(cid, 70005) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have chosen an arcane staff.")
doPlayerAddItem(cid, 2453, 1)
setPlayerStorageValue(cid, 70005, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55011 then -- Relocado
if getPlayerStorageValue(cid, 70005) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have chosen the avenger.")
doPlayerAddItem(cid, 6528, 1)
setPlayerStorageValue(cid, 70005, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55012 then -- Relocado
if getPlayerStorageValue(cid, 70005) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have chosen an arbalest.")
doPlayerAddItem(cid, 5803, 1)
setPlayerStorageValue(cid, 70005, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55006 then -- Relocado
if getPlayerStorageValue(cid, 70010) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a pair of soft boots.")
doPlayerAddItem(cid, 6132, 1)
setPlayerStorageValue(cid, 70010, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55007 then -- Relocado
if getPlayerStorageValue(cid, 70009) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a stuffed dragon.")
doPlayerAddItem(cid, 5791, 1)
setPlayerStorageValue(cid, 70009, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55008 then -- Relocado
if getPlayerStorageValue(cid, 70008) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a frozen starlight.")
doPlayerAddItem(cid, 2361, 1)
setPlayerStorageValue(cid, 70008, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55009 then -- Relocado
if getPlayerStorageValue(cid, 70007) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found 100 platinum coins.")
doPlayerAddItem(cid, 2152, 100)
setPlayerStorageValue(cid, 70007, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55010 then -- Relocado
if getPlayerStorageValue(cid, 70006) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a backpack of holding.")
doPlayerAddItem(cid, 2365, 1)
setPlayerStorageValue(cid, 70006, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55013 then
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 7013, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a pirate backpack.")
Bp = doPlayerAddItem(cid, config.Bp_ID, 1)
doAddContainerItem(Bp, 7590, 1)
doAddContainerItem(Bp, 6561, 1)
doAddContainerItem(Bp, 2273, 1)
doAddContainerItem(Bp, 2268, 1)
doAddContainerItem(Bp, 2268, 1)
doAddContainerItem(Bp, 2273, 1)
doAddContainerItem(Bp, 2273, 1)
doAddContainerItem(Bp, 2260, 1)
doAddContainerItem(Bp, 2168, 1)
doAddContainerItem(Bp, 6300, 1)
doAddContainerItem(Bp, 5944, 1)
doAddContainerItem(Bp, 5022, 3)
doAddContainerItem(Bp, 5944, 1)
doAddContainerItem(Bp, 2143, 5)
doAddContainerItem(Bp, 2152, 11)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The pile of bones is empty.")
end

--pits of inferno end--

--lvl newbie 30 quest--

elseif item.uid == 55014 then
if getPlayerStorageValue(cid, 70014) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a wyvern fang.")
doPlayerAddItem(cid, 7408, 1)
setPlayerStorageValue(cid, 70014, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55015 then
if getPlayerStorageValue(cid, 70014) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a knight axe.")
doPlayerAddItem(cid, 2430, 1)
setPlayerStorageValue(cid, 70014, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55028 then
if getPlayerStorageValue(cid, 70014) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a diamond sceptre.")
doPlayerAddItem(cid, 7387, 1)
setPlayerStorageValue(cid, 70014, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55019 then
if getPlayerStorageValue(cid, 70014) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a modified crossbow.")
doPlayerAddItem(cid, 8849, 1)
setPlayerStorageValue(cid, 70014, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end newbie lvl 30 quest--

elseif item.uid == 55016 then
if getPlayerStorageValue(cid, 70015) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a bone key.")
key = doPlayerAddItem(cid, 2092, 1)
doSetItemActionId(key, 263)
setPlayerStorageValue(cid, 70015, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55017 then
if getPlayerStorageValue(cid, 55017) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found the holy Tible.")
local letter = doPlayerAddItem(cid, 1972, 1)
doSetItemText(letter, "These are my last sighs .. \nI tried to move on .. \nBut I could not, I got stuck in this labyrinth, there are many pitfalls! \nBe careful!! \nBut I discovered that, you need to sacrifice some body of a monster, I think is a nightstalker body \nOnly then will the ghost let you through. \nBefore I died, I wrote in my book to who to find it. \nGoodbye - Jeff")
setPlayerStorageValue(cid, 55017, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The body is empty.")
end

elseif item.uid == 55018 then -- Relocado
if getPlayerStorageValue(cid, 55018) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a key of numerous locks.")
doPlayerAddItem(cid, 8978, 1)
setPlayerStorageValue(cid, 55018, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--quest aleatórias--
elseif item.uid == 55020 then -- Relocado
if getPlayerStorageValue(cid, 70016) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blood herb.")
doPlayerAddItem(cid, 2798, 1)
setPlayerStorageValue(cid, 70016, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55021 then -- Relocado
if getPlayerStorageValue(cid, 70017) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a skull staff.")
doPlayerAddItem(cid, 2436, 1)
setPlayerStorageValue(cid, 70017, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55022 then -- Relocado
if getPlayerStorageValue(cid, 70018) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a crown shield.")
doPlayerAddItem(cid, 2519, 1)
setPlayerStorageValue(cid, 70018, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--ANIHILIATOR--

elseif item.uid == 55024 then
if getPlayerStorageValue(cid, 70020) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a demon armor.")
doPlayerAddItem(cid, 2494, 1)
setPlayerStorageValue(cid, 70020, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55025 then
if getPlayerStorageValue(cid, 70020) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a magic sword.")
doPlayerAddItem(cid, 2400, 1)
setPlayerStorageValue(cid, 70020, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55026 then
if getPlayerStorageValue(cid, 70020) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a stonecutter axe.")
doPlayerAddItem(cid, 2431, 1)
setPlayerStorageValue(cid, 70020, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55027 then
if getPlayerStorageValue(cid, config.storage2) == -1 then
setPlayerStorageValue(cid, config.storage2, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a present.")
doPlayerAddItem(cid, 2326, 1)
setPlayerStorageValue(cid, 70020, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55082 then -- Relocado
if getPlayerStorageValue(cid, 70022) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a book of omar.")
doPlayerAddItem(cid, 1961, 1)
setPlayerStorageValue(cid, 70022, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55033 then -- Relocado
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 70023, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a green bag.")
Bp = doPlayerAddItem(cid, 1991, 1)
doAddContainerItem(Bp, 2427, 1)
doAddContainerItem(Bp, 2171, 1)
doAddContainerItem(Bp, 2145, 3)
doAddContainerItem(Bp, 2146, 3)
doAddContainerItem(Bp, 2168, 1)
doAddContainerItem(Bp, 2124, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55046 then -- Relocado
if getPlayerStorageValue(cid, 70029) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a demon shield.")
doPlayerAddItem(cid, 2520, 1)
setPlayerStorageValue(cid, 70029, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55047 then -- Relocado
if getPlayerStorageValue(cid, 70030) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a golden armor.")
doPlayerAddItem(cid, 2466, 1)
setPlayerStorageValue(cid, 70030, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55048 then -- Relocado
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 70031, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a red bag.")
Bp = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(Bp, 2152, 50)
doAddContainerItem(Bp, 2197, 1)
doAddContainerItem(Bp, 2147, 3)
doAddContainerItem(Bp, 2214, 1)

else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The pile of box empty.")
end

elseif item.uid == 55049 then -- Relocado
if getPlayerStorageValue(cid, 70032) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a 1 crystal coin.")
doPlayerAddItem(cid, 2160, 1)
setPlayerStorageValue(cid, 70032, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55050 then -- Relocado
if getPlayerStorageValue(cid, 70033) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a boots of haste.")
doPlayerAddItem(cid, 2195, 1)
setPlayerStorageValue(cid, 70033, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55051 then -- Relocado
if getPlayerStorageValue(cid, 70034) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a giant sword.")
doPlayerAddItem(cid, 2393, 1)
setPlayerStorageValue(cid, 70034, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55062 then -- Relocado
if getPlayerStorageValue(cid, 70037) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a tower shield.")
doPlayerAddItem(cid, 2528, 1)
setPlayerStorageValue(cid, 70037, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55063 then -- Relocado
if getPlayerStorageValue(cid, 70038) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a hat of the mad.")
doPlayerAddItem(cid, 2323, 1)
setPlayerStorageValue(cid, 70038, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55064 then -- Relocado
if getPlayerStorageValue(cid, 70039) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a bright sword.")
doPlayerAddItem(cid, 2407, 1)
setPlayerStorageValue(cid, 70039, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55065 then -- Relocado
if getPlayerStorageValue(cid, 70040) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a guardian shield and 75 platinum coins.")
doPlayerAddItem(cid, 2515, 1)
doPlayerAddItem(cid, 2152, 75)
setPlayerStorageValue(cid, 70040, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end
--end quest aleatórias--

--demon helmet quest--

elseif item.uid == 55037 then -- Relocado
if getPlayerStorageValue(cid, 70025) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a demon helmet.")
doPlayerAddItem(cid, 2493, 1)
setPlayerStorageValue(cid, 70025, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55038 then -- Relocado
if getPlayerStorageValue(cid, 70026) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a demon shield.")
doPlayerAddItem(cid, 2520, 1)
setPlayerStorageValue(cid, 70026, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end demon helmet quest--

elseif item.uid == 55039 then
if getPlayerStorageValue(cid, 70027) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a Simon's staff.")
doPlayerAddItem(cid, 6107, 1)
setPlayerStorageValue(cid, 70027, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55040 then
if getPlayerStorageValue(cid, 70028) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a doublet.")
doPlayerAddItem(cid, 2485, 1)
setPlayerStorageValue(cid, 70028, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--Wote

elseif item.uid == 55034 then
if getPlayerStorageValue(cid, 70024) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a elite draken helmet.")
doPlayerAddItem(cid, 12645, 1)
setPlayerStorageValue(cid, 70024, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55035 then
if getPlayerStorageValue(cid, 70024) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a royal draken mail.")
doPlayerAddItem(cid, 12642, 1)
setPlayerStorageValue(cid, 70024, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55036 then
if getPlayerStorageValue(cid, 70024) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a royal scale robe.")
doPlayerAddItem(cid, 12643, 1)
setPlayerStorageValue(cid, 70024, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end Wote--

--quest rainbow shield / thorn spitter / demon legs / spellbook of ancient arcana--
    elseif item.uid == 55029 then
if getPlayerStorageValue(cid, 70021) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a rainbow shield.")
doPlayerAddItem(cid, 8905, 1)
setPlayerStorageValue(cid, 70021, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55030 then
if getPlayerStorageValue(cid, 70021) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a thorn spitter.")
doPlayerAddItem(cid, 16111, 1)
setPlayerStorageValue(cid, 70021, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55031 then
if getPlayerStorageValue(cid, 70021) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a spellbook of ancient arcana.")
doPlayerAddItem(cid, 16112, 1)
setPlayerStorageValue(cid, 70021, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55032 then
if getPlayerStorageValue(cid, 70021) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a demon legs.")
doPlayerAddItem(cid, 2495, 1)
setPlayerStorageValue(cid, 70021, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--INQUISITION quest--

elseif item.uid == 55052 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a royal crossbow.")
doPlayerAddItem(cid, 8851, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55053 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a warsinger bow.")
doPlayerAddItem(cid, 8854, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55054 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a spellbook of dark mysteries.")
doPlayerAddItem(cid, 8918, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55055 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a emerald sword.")
doPlayerAddItem(cid, 8930, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55056 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a hellforged axe.")
doPlayerAddItem(cid, 8924, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55057 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a obsidian truncheon.")
doPlayerAddItem(cid, 8928, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55058 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a master archr's armor.")
doPlayerAddItem(cid, 8888, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55059 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fireborn giant armor.")
doPlayerAddItem(cid, 8881, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55060 then
if getPlayerStorageValue(cid, 70035) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a robe of underworld.")
doPlayerAddItem(cid, 8890, 1)
setPlayerStorageValue(cid, 70035, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55061 then
if getPlayerStorageValue(cid, 70036) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found an old piece of paper. You can exchange it for the demonhunter addons!.")
doPlayerAddItem(cid, 7724, 1)
setPlayerStorageValue(cid, 70036, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end INQUISITION quest--

--YALAHARI quest-- -- Relocado
elseif item.uid == 55066 then
if getPlayerStorageValue(cid, 70041) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a yalahari mask and vampiric crest.")
doPlayerAddItem(cid, 9778, 1)
doPlayerAddItem(cid, 9955, 1)
setPlayerStorageValue(cid, 70041, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55067 then
if getPlayerStorageValue(cid, 70041) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a yalahari armor and a vampiric crest .")
doPlayerAddItem(cid, 9776, 1)
doPlayerAddItem(cid, 9955, 1)
setPlayerStorageValue(cid, 70041, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55068 then
if getPlayerStorageValue(cid, 70041) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a yalahari leg piece and a vampiric crest .")
doPlayerAddItem(cid, 9777, 1)
doPlayerAddItem(cid, 9955, 1)
setPlayerStorageValue(cid, 70041, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--END YALAHARI quest--

elseif item.uid == 55080 then
if getPlayerStorageValue(cid, 70050) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a crusader helmet .")
doPlayerAddItem(cid, 2497, 1)
setPlayerStorageValue(cid, 70050, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 55081 then -- Relocado
if getPlayerStorageValue(cid, 70051) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a golden legs .")
doPlayerAddItem(cid, 2470, 1)
setPlayerStorageValue(cid, 70051, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--Svargrond Arena--
elseif item.uid == 26500 then
if getPlayerStorageValue(cid, 70052) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blacksteel sword.")
doPlayerAddItem(cid, 7406, 1)
setPlayerStorageValue(cid, 70052, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 26600 then
if getPlayerStorageValue(cid, 70052) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a headchopper.")
doPlayerAddItem(cid, 7380, 1)
setPlayerStorageValue(cid, 70052, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 26700 then
if getPlayerStorageValue(cid, 70052) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a orcish maul.")
doPlayerAddItem(cid, 7392, 1)
setPlayerStorageValue(cid, 70052, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 27500 then
if getPlayerStorageValue(cid, 70053) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a mystic blade.")
doPlayerAddItem(cid, 7384, 1)
setPlayerStorageValue(cid, 70053, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 27600 then
if getPlayerStorageValue(cid, 70053) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a heroic axe.")
doPlayerAddItem(cid, 7389, 1)
setPlayerStorageValue(cid, 70053, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 27700 then
if getPlayerStorageValue(cid, 70053) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a cranial basher.")
doPlayerAddItem(cid, 7415, 1)
setPlayerStorageValue(cid, 70053, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28500 then
if getPlayerStorageValue(cid, 70054) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a justice seeker.")
doPlayerAddItem(cid, 7390, 1)
setPlayerStorageValue(cid, 70054, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28600 then
if getPlayerStorageValue(cid, 70054) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a royal axe.")
doPlayerAddItem(cid, 7434, 1)
setPlayerStorageValue(cid, 70054, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28700 then
if getPlayerStorageValue(cid, 70054) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blessed sceptre.")
doPlayerAddItem(cid, 7429, 1)
setPlayerStorageValue(cid, 70054, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28400 then
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 70060, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fur backpack.")
Bp = doPlayerAddItem(cid, 7342, 1)
doAddContainerItem(Bp, 6529, 100)
doAddContainerItem(Bp, 7440, 1)
doAddContainerItem(Bp, 7443, 1)
doAddContainerItem(Bp, 2268, 1)
doAddContainerItem(Bp, 2273, 1)

else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The pile of box empty.")
end

elseif item.uid == 27400 then
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 70061, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fur backpack.")
Bp = doPlayerAddItem(cid, 7342, 1)
doAddContainerItem(Bp, 2304, 50)
doAddContainerItem(Bp, 2311, 50)
doAddContainerItem(Bp, 2547, 200)
doAddContainerItem(Bp, 7365, 100)

else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The pile of box empty.")
end

elseif item.uid == 26400 then
if getPlayerStorageValue(cid, config.storage) == -1 then
setPlayerStorageValue(cid, config.storage, 1)
setPlayerStorageValue(cid, 70062, 1)
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fur backpack.")
Bp = doPlayerAddItem(cid, 7342, 1)
doAddContainerItem(Bp, 7183, 1)
doAddContainerItem(Bp, 6574, 1)
doAddContainerItem(Bp, 7373, 1)
doAddContainerItem(Bp, 2688, 10)

else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The pile of box empty.")
end

--END Svargrond Arena quest--

elseif item.uid == 28701 then -- Relocado
if getPlayerStorageValue(cid, 70055) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dragon lance.")
doPlayerAddItem(cid, 2414, 1)
setPlayerStorageValue(cid, 70055, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28702 then
if getPlayerStorageValue(cid, 70056) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a medusa shield.")
doPlayerAddItem(cid, 2536, 1)
setPlayerStorageValue(cid, 70056, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28703 then
if getPlayerStorageValue(cid, 70057) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a gemmed lamp.")
doPlayerAddItem(cid, 2344, 1)
setPlayerStorageValue(cid, 70057, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28704 then
if getPlayerStorageValue(cid, 70058) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a necromancer shield.")
doPlayerAddItem(cid, 6433, 1)
setPlayerStorageValue(cid, 70058, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28705 then
if getPlayerStorageValue(cid, 70058) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a nightmare shield.")
doPlayerAddItem(cid, 6391, 1)
setPlayerStorageValue(cid, 70058, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28706 then --relocado
if getPlayerStorageValue(cid, 70059) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a lightning boots")
doPlayerAddItem(cid, 7893, 1)
setPlayerStorageValue(cid, 70059, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28707 then -- Relocado
if getPlayerStorageValue(cid, 70060) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found an Elane's crossbow.")
doPlayerAddItem(cid, 5947, 1)
setPlayerStorageValue(cid, 70060, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28710 then -- Relocado
if getPlayerStorageValue(cid, 70062) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a knight armor.")
doPlayerAddItem(cid, 2476, 1)
setPlayerStorageValue(cid, 70062, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28711 then --Relocado
if getPlayerStorageValue(cid, 70063) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a knight axe.")
doPlayerAddItem(cid, 2430, 1)
setPlayerStorageValue(cid, 70063, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28712 then -- Relocado
if getPlayerStorageValue(cid, 70064) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fire sword.")
doPlayerAddItem(cid, 2392, 1)
setPlayerStorageValue(cid, 70064, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28713 then -- Relocado
if getPlayerStorageValue(cid, 70065) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a 100 platinum Coins.")
doPlayerAddItem(cid, 2152, 100)
setPlayerStorageValue(cid, 70065, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28714 then -- Relocado
if getPlayerStorageValue(cid, 70066) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a spellbook of mind control.")
doPlayerAddItem(cid, 8902, 1)
setPlayerStorageValue(cid, 70066, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28715 then -- Relocado
if getPlayerStorageValue(cid, 70067) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a hailstorm rod.")
doPlayerAddItem(cid, 2183, 1)
setPlayerStorageValue(cid, 70067, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28716 then -- Relocado
if getPlayerStorageValue(cid, 70068) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a springsprout rod.")
doPlayerAddItem(cid, 8912, 1)
setPlayerStorageValue(cid, 70068, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28717 then -- Relocado
if getPlayerStorageValue(cid, 70069) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a spike sword.")
doPlayerAddItem(cid, 2383, 1)
setPlayerStorageValue(cid, 70069, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28718 then -- Relocado
if getPlayerStorageValue(cid, 70070) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a bonelord shield.")
doPlayerAddItem(cid, 2518, 1)
setPlayerStorageValue(cid, 70070, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 28719 then -- Relocado
if getPlayerStorageValue(cid, 70071) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dragon hammer.")
doPlayerAddItem(cid, 2434, 1)
setPlayerStorageValue(cid, 70071, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30000 then -- Relocado
if getPlayerStorageValue(cid, 70072) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a castle shield.")
doPlayerAddItem(cid, 2535, 1)
setPlayerStorageValue(cid, 70072, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30001 then -- Relocado
if getPlayerStorageValue(cid, 70073) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a serpent sword.")
doPlayerAddItem(cid, 2409, 1)
setPlayerStorageValue(cid, 70073, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30002 then -- Relocado
if getPlayerStorageValue(cid, 70074) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a naginata.")
doPlayerAddItem(cid, 2426, 1)
setPlayerStorageValue(cid, 70074, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30003 then -- Relocado
if getPlayerStorageValue(cid, 70075) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a fire axe.")
doPlayerAddItem(cid, 2432, 1)
setPlayerStorageValue(cid, 70075, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30004 then -- Relocado
if getPlayerStorageValue(cid, 70076) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blessed wooden token.")
doPlayerAddItem(cid, 5942, 1)
setPlayerStorageValue(cid, 70076, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30005 then -- Relocado
if getPlayerStorageValue(cid, 70077) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a warrior helmet.")
doPlayerAddItem(cid, 2475, 1)
setPlayerStorageValue(cid, 70077, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30006 then -- Relocado
if getPlayerStorageValue(cid, 70078) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a tower shield.")
doPlayerAddItem(cid, 2528, 1)
setPlayerStorageValue(cid, 70078, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30007 then -- Relocado
if getPlayerStorageValue(cid, 70079) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a warrior helmet.")
doPlayerAddItem(cid, 2475, 1)
setPlayerStorageValue(cid, 70079, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30008 then -- Relocado
if getPlayerStorageValue(cid, 70080) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a mermaid comb.")
doPlayerAddItem(cid, 5945, 1)
setPlayerStorageValue(cid, 70080, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30009 then -- Relocado
if getPlayerStorageValue(cid, 70081) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a crown armor.")
doPlayerAddItem(cid, 2487, 1)
setPlayerStorageValue(cid, 70081, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30010 then -- Relocado
if getPlayerStorageValue(cid, 70082) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a crown legs.")
doPlayerAddItem(cid, 2488, 1)
setPlayerStorageValue(cid, 70082, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30011 then -- Relocado
if getPlayerStorageValue(cid, 70083) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blue robe and a medusa shield.")
doPlayerAddItem(cid, 2656, 1)
doPlayerAddItem(cid, 2536, 1)
setPlayerStorageValue(cid, 70083, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30012 then -- Relocado
if getPlayerStorageValue(cid, 70084) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a blue legs.")
doPlayerAddItem(cid, 7730, 1)
setPlayerStorageValue(cid, 70084, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30013 then -- Relocado
if getPlayerStorageValue(cid, 70085) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a Koshei's Ancient Amulet.")
doPlayerAddItem(cid, 8266, 1)
setPlayerStorageValue(cid, 70085, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30014 then --relocado
if getPlayerStorageValue(cid, 70086) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a Tome of Knowledge.")
doPlayerAddItem(cid, 11134, 1)
setPlayerStorageValue(cid, 70086, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30015 then --relocado
if getPlayerStorageValue(cid, 70087) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found an energetic backpack.")
Bp = doPlayerAddItem(cid, 26181, 1)
doAddContainerItem(Bp, 2147, 20)
doAddContainerItem(Bp, 2156, 1)
doAddContainerItem(Bp, 2153, 1)
doAddContainerItem(Bp, 2152, 100)
doAddContainerItem(Bp, 10221, 1)
doAddContainerItem(Bp, 8879, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30016 then -- relocado
if getPlayerStorageValue(cid, 70088) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dragon shield.")
doPlayerAddItem(cid, 2516, 1)
setPlayerStorageValue(cid, 70088, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

-- The Calamity e Earth Titan Armor -- 

elseif item.uid == 30017 then
if getPlayerStorageValue(cid, 70089) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a the calamity.")
doPlayerAddItem(cid, 8932, 1)
setPlayerStorageValue(cid, 70089, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30018 then
if getPlayerStorageValue(cid, 70090) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a earthborn titan armor.")
doPlayerAddItem(cid, 8882, 1)
setPlayerStorageValue(cid, 70090, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

-- End Quest

--Umbral quest--

elseif item.uid == 30019 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master slayer.")
doPlayerAddItem(cid, 22403, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30020 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master hammer.")
doPlayerAddItem(cid, 22415, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30021 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master chopper.")
doPlayerAddItem(cid, 22409, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30022 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master bow.")
doPlayerAddItem(cid, 22418, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30023 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master crossbow.")
doPlayerAddItem(cid, 22421, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30024 then
if getPlayerStorageValue(cid, 70091) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a umbral master spellbook.")
doPlayerAddItem(cid, 22424, 1)
setPlayerStorageValue(cid, 70091, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end quest--

-- Dwarven Set --

elseif item.uid == 30025 then
if getPlayerStorageValue(cid, 70097) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dwarven armor.")
doPlayerAddItem(cid, 2503, 1)
setPlayerStorageValue(cid, 70097, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30026 then
if getPlayerStorageValue(cid, 70097) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dwarven legs.")
doPlayerAddItem(cid, 2504, 1)
setPlayerStorageValue(cid, 70097, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30027 then
if getPlayerStorageValue(cid, 70097) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dwarven helmet.")
doPlayerAddItem(cid, 2502, 1)
setPlayerStorageValue(cid, 70097, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end quest--

-- Depht Set --

elseif item.uid == 30028 then
if getPlayerStorageValue(cid, 70100) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a depth lorica.")
doPlayerAddItem(cid, 15407, 1)
setPlayerStorageValue(cid, 70100, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30029 then
if getPlayerStorageValue(cid, 70100) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a depth galea.")
doPlayerAddItem(cid, 15408, 1)
setPlayerStorageValue(cid, 70100, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30030 then
if getPlayerStorageValue(cid, 70100) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a depth ocrea.")
doPlayerAddItem(cid, 15409, 1)
setPlayerStorageValue(cid, 70100, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

--end quest--

elseif item.uid == 30031 then
if getPlayerStorageValue(cid, 70101) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a bonebreaker.")
doPlayerAddItem(cid, 8856, 1)
setPlayerStorageValue(cid, 70101, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30032 then
if getPlayerStorageValue(cid, 70102) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a yol's bow.")
doPlayerAddItem(cid, 7428, 1)
setPlayerStorageValue(cid, 70102, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30033 then
if getPlayerStorageValue(cid, 70103) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a dragon lance.")
doPlayerAddItem(cid, 2414, 1)
setPlayerStorageValue(cid, 70103, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end

elseif item.uid == 30034 then
if getPlayerStorageValue(cid, 70104) == -1 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "You have found a divine plate and the ironworker.")
doPlayerAddItem(cid, 8885, 1)
doPlayerAddItem(cid, 8853, 1)
setPlayerStorageValue(cid, 70104, 1)
else
    doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The chest is empty.")
end



end
return true
end