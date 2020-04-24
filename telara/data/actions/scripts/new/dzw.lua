function onUse(cid, item, frompos, item2, topos)
gatepos = {x=897, y=1111, z=13, stackpos=1}
if item.uid == 60023 then
Game.createItem(1547,1,gatepos)
doSendMagicEffect(gatepos, CONT_ME_POOF)
doTeleportThing(cid,{x=897, y=1108, z=13})
doCreatureSay(cid, "Monsters will appear every 25 seconds. You must survive. Within 75 seconds the passage to the right will open. There you can claim your rewards.", TALKTYPE_ORANGE_2, getCreaturePosition(cid))
end
pausa = 25000 -- 2 sec.
if item.itemid == 1945 then
doTransformItem(item.uid,1946)

-- wall positions - don't change stackpos.
wall0pos = {x=908, y=1109, z=13, stackpos=1}
wall1pos = {x=878, y=1094, z=13, stackpos=1}
wall2pos = {x=878, y=1094, z=13, stackpos=1}
wall3pos = {x=903, y=1109, z=13, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
doSendMagicEffect({x=895, y=1108, z=13},11)
doSendMagicEffect({x=898, y=1108, z=13},11)
doSendMagicEffect({x=893, y=1108, z=13},11)
doSendMagicEffect({x=897, y=1106, z=13},6)
doSendMagicEffect({x=894, y=1106, z=13},6)
doSendMagicEffect({x=899, y=1106, z=13},6)
doSendMagicEffect({x=901, y=1110, z=13},6)
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("fire elemental",{x=894, y=1106, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("energy elemental",{x=898, y=1108, z=13})
doSummonCreature("energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
addEvent(wait1,pausa,wall1pos)
end
else
doTransformItem(item.uid,1945)
end
return 1
end

function wait1(wall1pos)
thing = getThingfromPos(wall1pos)
doSendMagicEffect({x=895, y=1108, z=13},11)
doSendMagicEffect({x=898, y=1108, z=13},11)
doSendMagicEffect({x=893, y=1108, z=13},11)
doSendMagicEffect({x=897, y=1106, z=13},6)
doSendMagicEffect({x=894, y=1106, z=13},6)
doSendMagicEffect({x=899, y=1106, z=13},6)
doSendMagicEffect({x=901, y=1110, z=13},6)
doSummonCreature("fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=894, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("energy elemental",{x=895, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=898, y=1108, z=13})
doSummonCreature("energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
doRemoveItem(thing.uid,1)
addEvent(wait2,pausa,wall2pos)
end

function wait2(wall2pos)
thing = getThingfromPos(wall2pos)
doRemoveItem(thing.uid,1)
doSendMagicEffect({x=895, y=1108, z=13},11)
doSendMagicEffect({x=898, y=1108, z=13},11)
doSendMagicEffect({x=893, y=1108, z=13},11)
doSendMagicEffect({x=897, y=1106, z=13},6)
doSendMagicEffect({x=894, y=1106, z=13},6)
doSendMagicEffect({x=899, y=1106, z=13},6)
doSendMagicEffect({x=901, y=1110, z=13},6)
doSummonCreature("fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=894, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("energy elemental",{x=895, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=898, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
addEvent(wait3,pausa,wall3pos)
end

function wait3(wall3pos)

doSendMagicEffect({x=895, y=1108, z=13},11)
doSendMagicEffect({x=898, y=1108, z=13},11)
doSendMagicEffect({x=893, y=1108, z=13},11)
doSendMagicEffect({x=897, y=1106, z=13},6)
doSendMagicEffect({x=894, y=1106, z=13},6)
doSendMagicEffect({x=899, y=1106, z=13},6)
doSendMagicEffect({x=901, y=1110, z=13},6)
doSendMagicEffect({x=902, y=1109, z=13},37)

doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("fire elemental",{x=894, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("lord of the elements",{x=895, y=1108, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("energy elemental",{x=895, y=1108, z=13})
doSummonCreature("energy elemental",{x=898, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
addEvent(wait100,pausa,wall4pos)
end

function wait100(wall4pos)
doSendMagicEffect({x=904, y=1109, z=13},37)
doSendMagicEffect({x=905, y=1109, z=13},37)
doSendMagicEffect({x=906, y=1109, z=13},37)
doSendMagicEffect({x=907, y=1109, z=13},37)
doSendMagicEffect({x=893, y=1109, z=13},37)
doSendMagicEffect({x=894, y=1109, z=13},37)
doSendMagicEffect({x=895, y=1109, z=13},37)
doSendMagicEffect({x=896, y=1109, z=13},37)
doSendMagicEffect({x=897, y=1109, z=13},37)
doSendMagicEffect({x=898, y=1109, z=13},37)
doSendMagicEffect({x=899, y=1109, z=13},37)
doSendMagicEffect({x=900, y=1109, z=13},37)
doSendMagicEffect({x=901, y=1109, z=13},37)
thing = getThingfromPos(wall3pos)
doRemoveItem(thing.uid,1)
doSendMagicEffect(wall3pos,37)
end
