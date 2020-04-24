local config = {
	WallPositions = {
		[1] = Position({x=1937, y=675, z=10}),
		[2] = Position({x=1937, y=675, z=10}),
		[3] = Position({x=1937, y=675, z=10}),
		[4] = Position({x=1937, y=675, z=10}),
		[5] = Position({x=1937, y=675, z=10}),
		[6] = Position({x=1937, y=675, z=10}),
		[7] = Position({x=1937, y=675, z=10}),
		[8] = Position({x=1937, y=675, z=10}),
		[9] = Position({x=1937, y=675, z=10})
	},
	walldown = 1526,
	wallup = 1049
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid == 1945 then
		for i = 1, #config["WallPositions"] do
			local tile = config["WallPositions"][i]:getTile()
			if tile then
				local thing = tile:getItemById(config["walldown"])
				if thing and thing:isItem() then
					Item(item.uid):transform(1946)
					thing:transform(config["wallup"])
				end
			end
		end	
	elseif itemEx.itemid == 1946 then
		for i = 1, #config["WallPositions"] do
			local tile = config["WallPositions"][i]:getTile()
			if tile then
				local thing = tile:getItemById(config["wallup"])
				if thing and thing:isItem() then
					Item(item.uid):transform(1945)
					thing:transform(config["walldown"])
				end
			end
		end
	else
		Player(cid):sendCancelMessage("Sorry, not possible.")
	end
	return true
end