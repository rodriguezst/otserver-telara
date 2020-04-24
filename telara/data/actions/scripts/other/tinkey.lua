function onUse(cid, item, fromPosition, itemEx, toPosition)
local player = Player(cid)
if(item.itemid == 13292) then
		if(itemEx.itemid == 13306) then
	player:addAchievement('Natural Born Cowboy')
	player:addMount(8)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Krkrkrkrk - You wind up the tin lizzard.")
	item:remove(1)
	end
		end
		return true
end