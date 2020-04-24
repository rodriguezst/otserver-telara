function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, 60300) == -1 then
doCreatureSay(cid, "You little worm! You dont have enough power to touch me.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
		
elseif getPlayerStorageValue(cid, 60300) == 1 then
local tppos = {x=1252, y=1512, z=8}
doSendMagicEffect(getCreaturePosition(cid), 5)
doTeleportThing(cid,tppos)
end
end