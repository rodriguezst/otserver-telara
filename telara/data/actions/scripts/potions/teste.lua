local config = {
	[7636] = {
		-- Health Potion
		[15638] = {value = 100000, newItem = 7618},
	},
	[5942] = {

		[2916] = {value = 25000, newItem = 5906},
	}
}

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local skin = config[item.itemid][target.itemid]


	if not skin then
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		return true
	end

	local random, effect, transform = math.random(1, 100000), CONST_ME_MAGIC_GREEN, true
	if type(skin[1]) == 'table' then
		local added = false
		local _skin
		for i = 1, #skin do
			_skin = skin[i]
			if random <= _skin.value then
				if target.itemid == 11343 then
					effect = CONST_ME_ICEAREA
					local gobletItem = player:addItem(_skin.newItem, _skin.amount or 1)
					if gobletItem then
						gobletItem:setDescription(_skin.desc:gsub('|PLAYERNAME|', player:getName()))
					end
					added = true
				elseif isInArray({7441, 7442, 7444, 7445}, target.itemid) then
					player:addItem(_skin.newItem, _skin.amount or 1)
					effect = CONST_ME_HITAREA
					added = true
				else
					player:addItem(_skin.newItem, _skin.amount or 1)
					added = true
				end
				break
			end
		end

		if not added and target.itemid == 8961 then
			effect = CONST_ME_POFF
			transform = false
		end
	elseif random <= skin.value then
		if target.itemid == 11343 then
			effect = CONST_ME_ICEAREA
			local gobletItem = player:addItem(skin.newItem, skin.amount or 1)
			if gobletItem then
				gobletItem:setDescription(skin.desc:gsub('|PLAYERNAME|', player:getName()))
			end
		elseif isInArray({7441, 7442, 7444, 7445}, target.itemid) then
			if skin.newItem == 7446 then
				player:addAchievement('Ice Sculptor')
			end
			player:addItem(skin.newItem, skin.amount or 1)
			effect = CONST_ME_HITAREA
		else
			player:addItem(skin.newItem, skin.amount or 1)
		end
	else
		if isInArray({7441, 7442, 7444, 7445}, target.itemid) then
			player:say('The attempt of sculpting failed miserably.', TALKTYPE_MONSTER_SAY)
			effect = CONST_ME_HITAREA
		else
			effect = CONST_ME_POFF
		end
	end
	
	toPosition:sendMagicEffect(effect)
	if transform then
	Item(item.uid):remove(1)
	player:addSoul(-1)
	end

	return true
end
