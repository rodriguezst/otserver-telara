local DownFloorsAid  = {1001}
function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isInArray(DownFloorsAid , item.actionid) then
		fromPosition.z = fromPosition.z + 1
	end
	player:teleportTo(fromPosition, false)		
		doSendMagicEffect(fromPosition, 1)
		doCreatureSay(player, "Oooops! I fall so high!",TALKTYPE_ORANGE_1)
		fromPosition.z = fromPosition.z -1
		doSendMagicEffect(fromPosition, 54)
	return true
end
-- Esse é oq chama os 2 efeitos, mas ele soh chama o efeito 1 


