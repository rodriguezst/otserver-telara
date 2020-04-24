--edit by Banco dla tnp --

function onStepIn(cid, item, pos)
if item.uid == 60041 then

local pos = getPlayerPosition(cid)
local tppos = {x=929, y=827, z=6}

doTeleportThing(cid,tppos)
			doSendMagicEffect(getCreaturePosition(cid), 14)
doCreatureSay(cid, 'Good Bye!', TALKTYPE_ORANGE_2, getCreaturePosition(cid))


end
return 1
end