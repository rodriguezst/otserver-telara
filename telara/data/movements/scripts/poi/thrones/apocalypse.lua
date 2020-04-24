function onStepIn(cid, item, pos)
if item.uid == 13302 then
		if getPlayerStorageValue(cid, 13304) == -1 then
setPlayerStorageValue(cid, 13304, 1)
	local pos = getPlayerPosition(cid)
	local tppos1 = {x=215, y=289, z=7}
	doTeleportThing(cid,tppos1)
local message = "You have touched Apocalypse's throne and absorbed some of his spirit."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
else
if getPlayerStorageValue(cid, 13304) == 1 then
setPlayerStorageValue(cid, 13305, 1)
	local pos = getPlayerPosition(cid)
	local tppos2 = {x=215, y=292, z=7}
	doTeleportThing(cid,tppos2)
local message1 = "Begone!"
doCreatureSay(cid, message1, TALKTYPE_ORANGE_1)
			doSendMagicEffect({x=215, y=292, z=7}, CONST_ME_MORTAREA)

end
end
end
end