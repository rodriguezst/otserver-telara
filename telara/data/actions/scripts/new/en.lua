function onUse(cid, item, frompos, item2, topos)
player1pos = {x=860, y=1139, z=12, stackpos=253} --pozycja 1 playera
player1 = getThingfromPos(player1pos)
player2pos = {x=861, y=1139, z=12, stackpos=253} --pozycja 1 playera
player2 = getThingfromPos(player2pos)
player3pos = {x=862, y=1139, z=12, stackpos=253} --pozycja 1 playera
player3 = getThingfromPos(player3pos)
if item.uid == 60007 then
if player1.itemid > 0 or player2.itemid > 0 or player3.itemid > 0 then
doTeleportThing(cid,{x=861, y=1141, z=12})
else 
if getPlayerStorageValue(cid, 60004) == 1 then
			doSendMagicEffect(getCreaturePosition(cid), 11)
local pos = getPlayerPosition(cid)
local tppos = {x=861, y=1139, z=12}

doTeleportThing(cid,tppos)
else

doCreatureSay(cid, "You must choose between fire and energy. Choose wisely. Go to elemental's temple first.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))

return 0
end
return 1
end
end
end