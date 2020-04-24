function onStepIn(cid, item, position, fromPosition)
local neededItemToTeleport = 1970
local TileUniqueIDFirst = 13031 -- UniqueID, na który wchodzimy, aby przejœæ na przód
local TileUniqueIDSecond = 13032 -- UniqueID, na który wchodzimy, aby powróciæ
local tleportTo = {x = 144, y = 144, z = 2}
local tleportBack = {x = 144, y = 148, z = 2}
 
	if isPlayer(cid) then
		if item.uid == TileUniqueIDFirst then
			if getPlayerItemCount(cid, neededItemToTeleport) > 0 then
				doTeleportThing(cid, tleportTo)
				doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_BLUE)
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, "You need a Holy Tible to enter!")
				local tppos = {x=144, y=148, z=2}
				doTeleportThing(cid,tppos)
				doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_BLUE)
				return false
			end
		elseif item.uid == TileUniqueIDSecond then
			local tppos1 = {x=144, y=148, z=2}
			doTeleportThing(cid,tppos1)
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_MAGIC_BLUE)
		end
	end
return true
end