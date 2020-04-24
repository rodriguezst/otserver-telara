function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=796, y=463, z=14, stackpos=1}
if item.uid == 60431 and isPlayer(cid) then
thing = getThingfromPos(gatepos)
doRemoveItem(thing.uid,1)
doSendMagicEffect(gatepos, CONST_ME_POOF)
doCreatureSay(cid, "You have awaken Asazor, now fight him!", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
doSendMagicEffect({x=773, y=459, z=13},14)
doSendMagicEffect({x=735, y=466, z=14},14)
doSummonCreature("asazor",{x=773, y=459, z=13})
end
pausa = 10800000 -- 2 sec.

-- wall positions - don't change stackpos.
wall0pos = {x=735, y=466, z=14, stackpos=1}
wall1pos = {x=1330, y=503, z=15, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(wait90,pausa,wall1pos)
end
return 1
end

function wait90(wall1pos)
thing = getThingfromPos(wall1pos)
doItemSetAttribute(doCreateItem(1945, 1, {x=735, y=466, z=14}), "uid", 60431)
doCreateItem(1091, 1, {x=796, y=463, z=14, stackpos=1})
return TRUE
end