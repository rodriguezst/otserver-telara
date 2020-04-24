function onUse(cid, item, fromPosition, itemEx, toPosition)
local BEDSINUSE = {1762, 1764, 7480, 7778, 7779, 7787, 7789, 7799, 7801, 7791, 7793, 7803, 7805, 7795, 7797, 7807, 7809}
local horizontalpos = {x = toPosition.x+1, y = toPosition.y, z = toPosition.z, stackpos = 1}
local horizontal = getThingfromPos(horizontalpos)
local verticalpos = {x = toPosition.x, y = toPosition.y+1, z = toPosition.z, stackpos = 1}
local vertical = getThingfromPos(verticalpos)

	if getTileHouseInfo(getPlayerPosition(cid)) ~= 0 then
		if item.itemid == 7904 then --green bed kit
			if itemEx.itemid == 1760 then
				doTransformItem(itemEx.uid, 7813)
				doTransformItem(horizontal.uid, 7814)
				doRemoveItem(item.uid,1)
			elseif itemEx.itemid == 1754 then
				doTransformItem(itemEx.uid, 7811)
				doTransformItem(vertical.uid, 7812)
				doRemoveItem(item.uid,1)
			elseif isInArray(BEDSINUSE,itemEx.itemid) == TRUE then
				doPlayerSendCancel(cid, "Somebody is sleeping there!")
			else
				doPlayerSendCancel(cid, "You can only use modification kits on empty beds.")
			end
					elseif item.itemid == 7905 then --yellow bed kit
			if itemEx.itemid == 1760 then
				doTransformItem(itemEx.uid, 7821)
				doTransformItem(horizontal.uid, 7822)
				doRemoveItem(item.uid,1)
			elseif itemEx.itemid == 1754 then
				doTransformItem(itemEx.uid, 7819)
				doTransformItem(vertical.uid, 7820)
				doRemoveItem(item.uid,1)
			elseif isInArray(BEDSINUSE,itemEx.itemid) == TRUE then
				doPlayerSendCancel(cid, "Somebody is sleeping there!")
			else
				doPlayerSendCancel(cid, "You can only use modification kits on empty beds.")
			end
		elseif item.itemid == 7906 then --red bed kit
			if itemEx.itemid == 1760 then
				doTransformItem(itemEx.uid, 7817)
				doTransformItem(horizontal.uid, 7818)
				doRemoveItem(item.uid,1)
			elseif itemEx.itemid == 1754 then
				doTransformItem(itemEx.uid, 7815)
				doTransformItem(vertical.uid, 7816)
				doRemoveItem(item.uid,1)
			elseif isInArray(BEDSINUSE,itemEx.itemid) == TRUE then
				doPlayerSendCancel(cid, "Somebody is sleeping there!")
			else
				doPlayerSendCancel(cid, "You can only use modification kits on empty beds.")
			end
		elseif item.itemid == 7907 then --remove modification
			if itemEx.itemid == 7813 or itemEx.itemid == 7817 or itemEx.itemid == 7821 then
				doTransformItem(itemEx.uid, 1760)
				doTransformItem(horizontal.uid, 1761)
				doRemoveItem(item.uid,1)
			elseif itemEx.itemid == 7811 or itemEx.itemid == 7815 or itemEx.itemid == 7819 then
				doTransformItem(itemEx.uid, 1754)
				doTransformItem(vertical.uid, 1755)
				doRemoveItem(item.uid,1)
			else
				doPlayerSendCancel(cid, "You can only use this on modified empty beds.")
			end			
		end
	else
		doPlayerSendCancel(cid, "You can only use this inside a house.")
	end
end