function onRecord(current, old)
	addEvent(Game.broadcastMessage, 150, 'New record: ' .. current .. ' players online.', MESSAGE_EVENT_ADVANCE)
	return true
end
