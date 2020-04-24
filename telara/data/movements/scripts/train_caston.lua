function onStepIn(creature, item, position, fromPosition)
	if (creature:isPlayer() and creature:isLiveCaster()) then
			creature:stopLiveCast()
			creature:sendTextMessage(MESSAGE_INFO_DESCR, 'Your cast has been closed because not allowed to cast open in the trainers.')
	end
	return true
end