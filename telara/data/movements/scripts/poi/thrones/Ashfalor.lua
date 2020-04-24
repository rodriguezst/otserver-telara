function onStepIn(cid, item, pos)
if item.uid == 13304 then
		if getPlayerStorageValue(cid, 13308) == -1 then
setPlayerStorageValue(cid, 13308, 1)
	local pos = getPlayerPosition(cid)
	local tppos1 = {x=286, y=286, z=7}
	doTeleportThing(cid,tppos1)
local message = "You have touched Ashfalor's throne and absorbed some of his spirit."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
else
if getPlayerStorageValue(cid, 13308) == 1 then
setPlayerStorageValue(cid, 13309, 1)
	local pos = getPlayerPosition(cid)
	local tppos2 = {x=286, y=289, z=7}
	doTeleportThing(cid,tppos2)
local message1 = "Begone!"
doCreatureSay(cid, message1, TALKTYPE_ORANGE_1)
			doSendMagicEffect({x=286, y=289, z=7}, CONST_ME_MORTAREA)

end
end
end
end