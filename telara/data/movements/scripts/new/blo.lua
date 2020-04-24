function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=921, y=216, z=15, stackpos=1}
if item.uid == 60433 and isPlayer(cid) then
thing = getThingfromPos(gatepos)
doRemoveItem(thing.uid,1)
doSendMagicEffect(gatepos, 15)
doCreatureSay(cid, "You have awaken Blozor! Fight him now!", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
doSendMagicEffect({x=921, y=214, z=15},14)
doSendMagicEffect({x=921, y=216, z=15},14)
doSummonCreature("blozor",{x=921, y=214, z=15})
end
pausa =  41600000
-- wall positions - don't change stackpos.
wall0pos = {x=959, y=218, z=15, stackpos=1}
wall1pos = {x=1330, y=503, z=15, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(waitas,pausa,wall1pos)
end
return 1
end

function waitas(wall1pos)
thing = getThingfromPos(wall1pos)
doItemSetAttribute(doCreateItem(4591, 1, {x=921, y=216, z=15}), "uid", 60433)
doCreateItem(2783, 1, {x=959, y=218, z=15})
return TRUE
end