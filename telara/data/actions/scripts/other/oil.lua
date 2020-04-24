function onUse(cid, item, fromPosition, itemEx, toPosition)
local player = Player(cid)
if(item.itemid == 13938) then
		if(itemEx.itemid == 13937.) then
	player:addAchievement('Natural Born Cowboy')
	player:addMount(15)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Vroooomratatatatatatat - The strange wheel seems to vibrate and slowly starts turning continuously.")
	item:remove(1)
	end
		end
		return true
end