local config = {
	storage = 1111,
	exhaust = 10*60
}

function onSay(cid, words, param)
	if getPlayerStorageValue(cid, config.storage) > os.time() then
		doPlayerSendCancel(cid, "You can only use this action every " .. (config.exhaust / 60) .. " minutes.")
		return false
	end

	if doPlayerRemoveMoney(cid, 0) == true then
		local bp = doPlayerAddItem(cid, 2789, 100)
		doSendMagicEffect(getCreaturePosition(cid),13)
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You won an 100 Brown Mushroom.")
		setPlayerStorageValue(cid, config.storage, os.time() + config.exhaust)
	else
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You do not have enough money.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
	return true
end