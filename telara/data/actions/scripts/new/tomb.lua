function onUse(cid, item, frompos, item2, topos)
gateepos = {x=747, y=1058, z=12, stackpos=1}
if item.uid == 60120 then
Game.createItem(1481,1,gateepos)
doTeleportThing(cid,{x=744, y=1058, z=13})
tpppos = {x=744, y=1059, z=13, stackpos=1}
gettpp = getThingfromPos(tpppos)
doRemoveItem(gettpp.uid,1)
Game.createItem(1285,1,{x=744, y=1059, z=13})
doSendMagicEffect(getCreaturePosition(cid), 36)
end

pausa = 2000
if item.itemid == 1945 then

wall0pos = {x=708, y=1051, z=12, stackpos=1}
wall1pos = {x=1, y=2, z=13, stackpos=1}
wall2pos = {x=6, y=5, z=13, stackpos=1}
wall3pos = {x=6, y=8, z=13, stackpos=1}
wall4pos = {x=6, y=7, z=13, stackpos=1}
wall5pos = {x=744, y=1059, z=13, stackpos=1}


wall0 = getThingfromPos(wall0pos)
if wall0.itemid ~= 0 then
doRemoveItem(wall0.uid,1)
addEvent(wait50,pausa,wall1pos)
end
else
doTransformItem(item.uid,1945)
end
return 1
end

function wait50(wall1pos)
gatepos = {x=742, y=1057, z=13, stackpos=1}
getgate = getThingfromPos(gatepos)
doRemoveItem(getgate.uid,1)


gate1pos = {x=743, y=1057, z=13, stackpos=1}
get1gate = getThingfromPos(gate1pos)
doRemoveItem(get1gate.uid,1)

gate2pos = {x=743, y=1056, z=13, stackpos=1}
get2gate = getThingfromPos(gate2pos)
doRemoveItem(get2gate.uid,1)

gate3pos = {x=744, y=1056, z=13, stackpos=1}
get3gate = getThingfromPos(gate3pos)
doRemoveItem(get3gate.uid,1)

gate4pos = {x=745, y=1056, z=13, stackpos=1}
get4gate = getThingfromPos(gate4pos)
doRemoveItem(get4gate.uid,1)

gate5pos = {x=745, y=1057, z=13, stackpos=1}
get5gate = getThingfromPos(gate5pos)
doRemoveItem(get5gate.uid,1)

gate6pos = {x=746, y=1057, z=13, stackpos=1}
get6gate = getThingfromPos(gate6pos)
doRemoveItem(get6gate.uid,1)

addEvent(wait51,pausa,wall2pos)
end
function wait51(wall2pos)

gate7pos = {x=742, y=1058, z=13, stackpos=1}
get7gate = getThingfromPos(gate7pos)
doRemoveItem(get7gate.uid,1)

gate8pos = {x=741, y=1058, z=13, stackpos=1}
get8gate = getThingfromPos(gate8pos)
doRemoveItem(get8gate.uid,1)

gate9pos = {x=741, y=1059, z=13, stackpos=1}
get9gate = getThingfromPos(gate9pos)
doRemoveItem(get9gate.uid,1)

gate10pos = {x=741, y=1060, z=13, stackpos=1}
get10gate = getThingfromPos(gate10pos)
doRemoveItem(get10gate.uid,1)

gate11pos = {x=742, y=1060, z=13, stackpos=1}
get11gate = getThingfromPos(gate11pos)
doRemoveItem(get11gate.uid,1)

gate12pos = {x=742, y=1061, z=13, stackpos=1}
get12gate = getThingfromPos(gate12pos)
doRemoveItem(get12gate.uid,1)

addEvent(wait52,pausa,wall3pos)
end
function wait52(wall3pos)

gate13pos = {x=743, y=1061, z=13, stackpos=1}
get13gate = getThingfromPos(gate13pos)
doRemoveItem(get13gate.uid,1)

gate14pos = {x=743, y=1062, z=13, stackpos=1}
get14gate = getThingfromPos(gate14pos)
doRemoveItem(get14gate.uid,1)

gate15pos = {x=744, y=1062, z=13, stackpos=1}
get15gate = getThingfromPos(gate15pos)
doRemoveItem(get15gate.uid,1)

gate16pos = {x=745, y=1062, z=13, stackpos=1}
get16gate = getThingfromPos(gate16pos)
doRemoveItem(get16gate.uid,1)

gate17pos = {x=745, y=1061, z=13, stackpos=1}
get17gate = getThingfromPos(gate17pos)
doRemoveItem(get17gate.uid,1)

gate18pos = {x=746, y=1061, z=13, stackpos=1}
get18gate = getThingfromPos(gate18pos)
doRemoveItem(get18gate.uid,1)

addEvent(wait53,pausa,wall4pos)

end
function wait53(wall4pos)
thing = getThingfromPos(wall4pos)

gate19pos = {x=746, y=1060, z=13, stackpos=1}
get19gate = getThingfromPos(gate19pos)
doRemoveItem(get19gate.uid,1)

gate20pos = {x=747, y=1060, z=13, stackpos=1}
get20gate = getThingfromPos(gate20pos)
doRemoveItem(get20gate.uid,1)

gate21pos = {x=747, y=1059, z=13, stackpos=1}
get21gate = getThingfromPos(gate21pos)
doRemoveItem(get21gate.uid,1)

gate22pos = {x=747, y=1058, z=13, stackpos=1}
get22gate = getThingfromPos(gate22pos)
doRemoveItem(get22gate.uid,1)

gate23pos = {x=746, y=1058, z=13, stackpos=1}
get23gate = getThingfromPos(gate23pos)
doRemoveItem(get23gate.uid,1)
addEvent(wait54,pausa,wall5pos)
end
function wait54(wall5pos)
Game.createItem(10240,1,{x=708, y=1051, z=12, stackpos=1})
stonepos = {x=743, y=1057, z=13, stackpos=1}
getstone = getThingfromPos(wall5pos)
doRemoveItem(getstone.uid,1)

bstonepos = {x=747, y=1058, z=12, stackpos=1}
getbstone = getThingfromPos(bstonepos)
doRemoveItem(getbstone.uid,1)
doSendMagicEffect(gateepos, CONST_ME_POOF)
doCreateTeleport(5023, { x = 744, y = 1059, z = 14 }, {x=744, y=1059, z=13, stackpos=1})
doSendMagicEffect({x=744, y=1059, z=13}, CONST_ME_TELEPORT)

Game.createItem(1062,1,gatepos)
Game.createItem(1064,1,gate1pos)
Game.createItem(1062,1,gate2pos)
Game.createItem(1063,1,gate3pos)
Game.createItem(1063,1,gate4pos)
Game.createItem(1065,1,gate5pos)
Game.createItem(1063,1,gate6pos)
Game.createItem(1064,1,gate7pos)
Game.createItem(1062,1,gate8pos)
Game.createItem(1065,1,gate9pos)
Game.createItem(1065,1,gate10pos)
Game.createItem(1063,1,gate11pos)
Game.createItem(1065,1,gate12pos)
Game.createItem(1063,1,gate13pos)
Game.createItem(1065,1,gate14pos)
Game.createItem(1063,1,gate15pos)
Game.createItem(1066,1,gate16pos)
Game.createItem(1062,1,gate17pos)
Game.createItem(1066,1,gate18pos)
Game.createItem(1062,1,gate19pos)
Game.createItem(1066,1,gate20pos)
Game.createItem(1065,1,gate21pos)
Game.createItem(1063,1,gate22pos)
Game.createItem(1065,1,gate23pos)
end


