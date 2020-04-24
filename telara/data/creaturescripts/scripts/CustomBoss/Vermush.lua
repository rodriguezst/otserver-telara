function onDeath(cid, corpse, killer)
registerCreatureEvent(cid, "Vermush")
local creaturename = getCreatureName(cid)
local pos1 = {x=554, y=1702, z=9, stackpos=1}
pausa = 360000 -- 2 sec.
wall1pos = {x=256, y=1845, z=5, stackpos=1}
local message = "You now have 6 minutes to exit this room through the ladder. It will stay there only during this time."
if creaturename == 'Vermush' then
thing3 = getThingfromPos(pos1)
doRemoveItem(thing3.uid,1)
doCreateItem(1386, 1, {x=544, y=1712, z=9})
doCreatureSay(cid, message, TALKTYPE_ORANGE_1)
addEvent(wait40,pausa,wall1pos)
end
return TRUE
end
function wait40(wall1pos)
thing2 = getThingfromPos({x=544, y=1712, z=9, stackpos=1})
doRemoveItem(thing2.uid,1)
doCreateItem(2780, 1, {x=554, y=1702, z=9})
return TRUE
end
