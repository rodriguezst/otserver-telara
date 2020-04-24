function onUse(cid, frompos, topos)
local message = "You have found a pirate backpack!"
if getPlayerStorageValue(cid,66666) == 1 then
doPlayerSendTextMessage(cid,25,"Gamemasters are not able to collect rewards from the quests.")
else
    if getPlayerStorageValue(cid,35001) == -1 then
        			local bp = doPlayerAddItem(cid,5926,1) --pirate backpack
			doAddContainerItem(bp,6561,1) --Ceremonial Ankh
			doAddContainerItem(bp,6300,1) --Death Ring
			doAddContainerItem(bp,2168,1) --Life Ring
			doAddContainerItem(bp,2143,5) --White Pearls
			doAddContainerItem(bp,5022,3) --Orichalcum Pearls
			doAddContainerItem(bp,5944,2) --Soul Orbs
			doAddContainerItem(bp,2152,11) --Platinum Coins
			doAddContainerItem(bp,2268,200) --Sudden Death Rune
			doAddContainerItem(bp,2273,200) --Ultimate Healing Rune
			doAddContainerItem(bp,2260) --Blank Rune
			doAddContainerItem(bp,7590,1) --Great Mana Potion
        doPlayerSendTextMessage(cid,25,message)
        doSendMagicEffect(frompos, 12)
        setPlayerStorageValue(cid,35001,1)

    elseif getPlayerStorageValue(cid,35001) == 1 then
                doPlayerSendTextMessage(cid,25,"The corpse is empty.")
end
end
end
        
