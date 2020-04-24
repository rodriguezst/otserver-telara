

local condition = Condition(CONDITION_OUTFIT)
condition:setOutfit({lookType = 267})
condition:setTicks(-1)

function onStepIn(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end
	if item.actionid == 33333 then 
		creature:addCondition(condition)
		position:sendMagicEffect(54)
		end
	return true
end

function onStepOut(creature, item, position, fromPosition)
	if not creature:isPlayer() then
		return false
	end
	if item.actionid == 33333 then 
		creature:removeCondition(CONDITION_OUTFIT)
		position:sendMagicEffect(54)
		end
	return true
end
