function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=887, y=1094, z=13, stackpos=1}
if item.uid == 60025 then
doCreateItem(1547,1,gatepos)
doSendMagicEffect(gatepos, CONT_ME_POOF)
doTeleportThing(cid,{x=897, y=1108, z=13})
end
pausa = 60000 -- 2 sec.
-- wall positions - don't change stackpos.
wall0pos = {x=875, y=1094, z=13, stackpos=1}
wall1pos = {x=876, y=1094, z=13, stackpos=1}
wall3pos = {x=878, y=1094, z=13, stackpos=1}
doSummonCreature("fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=894, y=1106, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("energy elemental",{x=898, y=1108, z=13})
doSummonCreature("energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
doTransformItem(item.uid,1946)
wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(wait1,pausa,wall1pos)
end

function wait1(wall1pos)
thing = getThingfromPos(wall1pos)
doRemoveItem(thing.uid,1)
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("fire elemental",{x=894, y=1106, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=898, y=1108, z=13})
doSummonCreature("energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
addEvent(wait2,pausa,wall2pos)
end

function wait2(wall2pos)
thing = getThingfromPos(wall2pos)
doRemoveItem(thing.uid,1)
doSummonCreature("massive fire elemental",{x=897, y=1106, z=13})
doSummonCreature("massive fire elemental",{x=894, y=1106, z=13})
doSummonCreature("fire elemental",{x=899, y=1106, z=13})
doSummonCreature("massive energy elemental",{x=895, y=1108, z=13})
doSummonCreature("massive energy elemental",{x=898, y=1108, z=13})
doSummonCreature("energy elemental",{x=893, y=1110, z=13})
doSummonCreature("fire elemental",{x=901, y=1110, z=13})
addEvent(wait3,pausa,wall3pos)
end

function wait3(wall3pos)
thing = getThingfromPos(wall3pos)
doRemoveItem(thing.uid,1)
end
end