function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=897, y=1111, z=13, stackpos=1}
if item.uid == 60023 then
doCreateItem(1547,1,gatepos)
doSendMagicEffect(gatepos, CONT_ME_POOF)
end
-- Removing walls with time (By Conde Sapo)

function onUse(cid, item, pos)

pausa = 6000 -- 2 sec.

-- wall positions - don't change stackpos.
wall0pos = {x=908, y=1109, z=13, stackpos=1}
wall1pos = {x=903, y=1109, z=13, stackpos=1}


if item.itemid == 1945 then
doTransformItem(item.uid,1946)
wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(wait1,pausa,wall1pos)
end
else
doTransformItem(item.uid,1945)
end
return 1
end

function wait1(wall1pos)
thing = getThingfromPos(wall1pos)
doRemoveItem(thing.uid,1)
addEvent(wait2,pausa,wall2pos)
end

-- if you want more walls , only keep adding addEvent's
end
end