function onUse(cid, item, frompos, item2, topos)
gatepos = {x=673, y=1175, z=13, stackpos=1}
if item.uid == 60340 then
doTeleportThing(cid,{x=1427, y=809, z=10})
doCreatureSay(cid, "How dare you touch my grave, you little worm? GUARDS, TAKE HIM!", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
end
doSendMagicEffect({x=1427, y=809, z=10},17)
doSendMagicEffect({x=1423, y=809, z=10},17)
doSendMagicEffect({x=1431, y=809, z=10},17)
doSummonCreature("lizard, the guard",{x=1427, y=808, z=10})
doSummonCreature("defiler",{x=1423, y=809, z=10})
doSummonCreature("defiler",{x=1431, y=809, z=10})
wall1pos = {x=1427, y=801, z=10, stackpos=1}
thing = getThingfromPos(wall1pos)
doRemoveItem(thing.uid,1)
Game.createItem(1418,1,wall1pos)
end

