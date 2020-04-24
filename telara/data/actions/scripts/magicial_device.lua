function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
	local item1 = 18418  
	local item2 = 18413 
	if target.itemid == 18307 then
		 if math.random(1,10) == 1 or math.random(1,20) == 2 then
		 	doPlayerAddItem(cid, item2)
		 	 doSendMagicEffect(toPosition, 33)
		 	doPlayerSendTextMessage(cid, 18, "coletou um Full Shard")
			local iEx = Item(target.uid)
			iEx:transform(18554)
			iEx:decay()
		else
			if math.random(1,20) == 1 or math.random(1,30) == 3  then
			doPlayerAddItem(cid, item1)
			 doSendMagicEffect(toPosition, 33)
			doPlayerSendTextMessage(cid, 18, "coletou resquicios de um Full Shard")
			elseif math.random(1,15) == 1 or math.random (1,25) == 1 then
				Game.createMonster("Crystal Protector", toPosition)

		return true
	end
end

	return destroyItem(cid, target, toPosition)
end
end