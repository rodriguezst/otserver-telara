function onStepIn(cid, item, pos)
if item.uid == 13303 then
		if getPlayerStorageValue(cid, 13306) == -1 then
setPlayerStorageValue(cid, 13306, 1)
	local pos = getPlayerPosition(cid)
	local tppos1 = {x=275, y=304, z=7}
	doTeleportThing(cid,tppos1)
local message = "You have touched Verminor's throne and absorbed some of his spirit."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
else
if getPlayerStorageValue(cid, 13306) == 1 then
setPlayerStorageValue(cid, 13307, 1)
	local pos = getPlayerPosition(cid)
	local tppos2 = {x=275, y=307, z=7}
	doTeleportThing(cid,tppos2)
local message1 = "Begone!"
doCreatureSay(cid, message1, TALKTYPE_ORANGE_1)
			doSendMagicEffect({x=275, y=307, z=7}, CONST_ME_MORTAREA)

end
end
end
end