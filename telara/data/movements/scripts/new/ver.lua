function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=544, y=1710, z=9, stackpos=1}
if item.uid == 60233 and isPlayer(cid) then
thing = getThingfromPos(gatepos)
doRemoveItem(thing.uid,1)
doSendMagicEffect(gatepos, 15)
doCreatureSay(cid, "You have awaken Vermush, now fight!", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
doSendMagicEffect({x=543, y=1711, z=9},14)
doSendMagicEffect({x=545, y=1711, z=9},14)
doSummonCreature("vermush",{x=544, y=1708, z=9})
end
pausa = 6600000 

-- wall positions - don't change stackpos.
wall0pos = {x=1330, y=503, z=15, stackpos=1}
wall1pos = {x=1330, y=503, z=15, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(wait50,pausa,wall1pos)
end
return 1
end

function wait50(wall1pos)
thing = getThingfromPos(wall1pos)
doItemSetAttribute(doCreateItem(4876, 1, {x=544, y=1710, z=9}), "uid", 60233)
doCreateItem(2783, 1, {x=544, y=1712, z=9})
return TRUE
end
