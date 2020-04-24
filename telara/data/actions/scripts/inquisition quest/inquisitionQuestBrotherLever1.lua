local config = {
	WallPositions = {
		[1] = Position({x=1940, y=672, z=10}),
		[2] = Position({x=1941, y=672, z=10}),
		[3] = Position({x=1942, y=672, z=10}),
		[4] = Position({x=1943, y=672, z=10}),
		[5] = Position({x=1944, y=672, z=10}),
		[6] = Position({x=1945, y=672, z=10}),
		[7] = Position({x=1946, y=672, z=10}),
		[8] = Position({x=1947, y=672, z=10}),
		[9] = Position({x=1948, y=672, z=10}),
		[10] = Position({x=1949, y=672, z=10}),
		[11] = Position({x=1950, y=672, z=10}),
		[12] = Position({x=1951, y=672, z=10}),
		[13] = Position({x=1952, y=672, z=10})
	},
	walldown = 1524,
	wallup = 1050
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