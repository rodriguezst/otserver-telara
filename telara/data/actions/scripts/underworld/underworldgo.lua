function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, 60200) == -1 then
doCreatureSay(cid, "You little worm! You dont have enough power to touch me.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
		
elseif getPlayerStorageValue(cid, 60200) == 1 then
local tppos = {x=1106, y=1671, z=8}
doSendMagicEffect(getCreaturePosition(cid), 18)
doTeleportThing(cid,tppos)
end
end