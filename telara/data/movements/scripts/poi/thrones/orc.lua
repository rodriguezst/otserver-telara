function onStepIn(cid, item, position, fromPosition)
if item.uid == 35030 then
if getPlayerLevel(cid) > 49 then
local pos = getPlayerPosition(cid)
local tppos = {x=1222, y=899, z=9}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
else 
doCreatureSay(cid, "You need 50 level to pass.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
end
end
end
