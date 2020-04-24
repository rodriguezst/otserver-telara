function onUse(cid, item, frompos, item2, topos)
gatepos = {x=673, y=1175, z=13, stackpos=1}
if item.uid == 60101 then
Game.createItem(8392,1,gatepos)
doSendMagicEffect(gatepos, 15)
doTeleportThing(cid,{x=673, y=1176, z=13})
doCreatureSay(cid, "You have awaken Sobkowiak! Fight or run. The gate will open once more in 3 hours, only then will you be able to summon her again.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
end
doSendMagicEffect({x=673, y=1176, z=13},17)
doSendMagicEffect({x=677, y=1174, z=13},17)
doSendMagicEffect({x=678, y=1180, z=13},17)
doSummonCreature("sobkowiak",{x=673, y=1176, z=13})
pausa = 10800000 -- 2 sec.
if item.itemid == 1418 then


-- wall positions - don't change stackpos.
wall0pos = {x=672, y=1180, z=13, stackpos=1}
wall1pos = {x=673, y=1175, z=13, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
doSendMagicEffect({x=673, y=1175, z=13},17)
addEvent(wait9,pausa,wall1pos)
end
else
doTransformItem(item.uid,1945)
end
return 1
end

function wait9(wall1pos)
thing = getThingfromPos(wall1pos)
doSendMagicEffect({x=673, y=1175, z=13},17)
doRemoveItem(thing.uid,1)
Game.createItem(5472,1,{x=672, y=1180, z=13, stackpos=1})
end

