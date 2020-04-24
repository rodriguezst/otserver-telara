function onModalWindow(player, modalWindowId, buttonId, choiceId)  
    player:unregisterEvent("Wand_Elements")
    local config = {
    	[1] = {13880,'Ice Wand'}, -- {ID do item, 'nome do item'}
    	[2] = {13872,'Energy Wand'},
	}

    if modalWindowId == 1000 then
        if buttonId == 100 then
            player:removeItem(player:getSlotItem(CONST_SLOT_LEFT).itemid, 1)
            player:addItem(config[choiceId][1], 1)
            player:sendTextMessage(MESSAGE_INFO_DESCR, "You have changed the element of your wand to: {"..config[choiceId][2].."}.")
        end
    end
end