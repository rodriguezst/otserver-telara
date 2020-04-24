function onStepIn(cid, item, position, fromPosition)
local neededItemToTeleport = 8306
local TileUniqueIDFirst = 60021 -- UniqueID, na który wchodzimy, aby przejœæ na przód
local tleportTo = {x = 897, y = 1119, z = 12}
if getPlayerStorageValue(cid, 60003) == -1 and getPlayerStorageValue(cid, 60004) == -1  then
doCreatureSay(cid, "You need to start the quest first. Visit elemental's temple.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
 
	elseif isPlayer(cid) == TRUE then
		if item.uid == TileUniqueIDFirst then
			if getPlayerItemCount(cid, neededItemToTeleport) > 0 then
				doTeleportThing(cid, tleportTo)
				doSendMagicEffect(getCreaturePosition(cid), 11)
			else
				local message = "You need a special element to enter."
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
local pos = getPlayerPosition(cid)
local tppos = {x=894, y=1118, z=11}
doTeleportThing(cid,tppos)
				return FALSE
			end
end
end
end