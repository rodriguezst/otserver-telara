function onUse(cid, item, fromPosition, itemEx, toPosition)
local player = Player(cid)
	if item.actionid == 1215 then
			if item.itemid == 1219 then
				
				Item(item.uid):transform(item.itemid + 1)
			elseif item.itemid == 1220 then
				Item(item.uid):transform(item.itemid - 1)
				
			end
	end
	return true
end
