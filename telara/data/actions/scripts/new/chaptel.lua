-- Start Config --
player1pos = {x=1094, y=1371, z=11, stackpos=253} --pozycja 1 playera
player1 = getThingfromPos(player1pos)
local topos = {x=1075, y=1380, z=13} -- Posição para onde o player será teleportado.
-- End Config --
 
function onUse(cid)
  if doTeleportThing(cid, topos) then
  doSendMagicEffect({x=1075, y=1380, z=13},11)
 end
end