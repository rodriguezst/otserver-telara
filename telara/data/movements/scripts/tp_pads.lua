tp_pads = {
[8301] = {x = 253, y = 256, z = 7, price = 300, name = "Dungeon"},
[8302] = {x = 988, y = 796, z = 7, price = 300, name = "2"},
[8303] = {x = 311, y = 392, z = 9, price = 300, name = "3"},
[8304] = {x = 768, y = 467, z = 4, price = 300, name = "4"},
[8305] = {x = 266, y = 234, z = 12, price = 300, name = "5"}
}

function onStepIn(cid, item, position, fromPosition)
if not isInRange(position, {x = fromPosition.x - 1, y = fromPosition.y - 1, z = fromPosition.z}, {x = fromPosition.x + 1, y = fromPosition.y + 1, z = fromPosition.z}) then
	return true
end
local p = Player(cid)
	if not p then
		return true
	end

	if p:isPzLocked() then
		p:teleportTo(fromPosition)
		p:say("The pad is not responding.", TALKTYPE_ORANGE_1, true, p, p:getPosition())
	else
		padWindow = ModalWindow(1860, "Teleport", "Select destination:")
		padWindow:addButton(1, "Select")
		padWindow:addButton(2, "Cancel")
		padWindow:setDefaultEnterButton(1)
		padWindow:setDefaultEscapeButton(2)
		
		for i = 8301, 8305 do
			if i ~= item.uid then
				if tp_pads[i].price then
					padWindow:addChoice(i - 8300, tp_pads[i].name .. " [" .. tp_pads[i].price .. " gold]")
				else
					padWindow:addChoice(i - 8300, tp_pads[i].name)
				end
			end
		end
		
		padWindow:sendToPlayer(cid)
	end
	return true
end