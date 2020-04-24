local newpos = {x = 1789, y = 266, z = 10}
local splash = {x = 1789, y = 268, z = 9}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local blood = getTileItemById(splash, 1093)
	if item.actionid == 2023 then
		doTeleportThing(cid, newpos)
		doCreatureSay(cid, 'Muahaha..',TALKTYPE_ORANGE_1)
		doSendMagicEffect(newpos, CONST_ME_MORTAREA)
	end
	return true
end