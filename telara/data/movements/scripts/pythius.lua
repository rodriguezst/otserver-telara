function onStepIn(cid, item, position, fromPosition)

local config =  {
monsters = {'pythius the rotten', 'Example2', 'Example3', 'Example4', 'Example5'},
actions  = {49337, 2222, 3333, 4444, 5555},
storages = {49336, 22222, 33333, 44444, 55555}
}

local pos = {
primeirasala = {x= 1251, y= 748, z= 14}, 
segundasala  = {x= 2, y= 2, z= 2, 
terceirasala = {x= 3, y= 3, z= 3}, 
quartasala   = {x= 4, y= 4, z= 4},
quintasala   = {x= 5, y= 5, z= 5}}
}
 
 if item.actionid == config.actions[1] then
  if getPlayerStorageValue(cid, config.storages[1]) == 0 then
     doCreateMonster(config.monsters[1], pos.primeirasala)
      setPlayerStorageValue(cid, config.storages[1], 1)
       end
      
         
elseif  item.actionid == config.actions[2] then
  if getPlayerStorageValue(cid, config.storages[2]) == 0 then
     doCreateMonster(config.monsters[2], pos.segundasala)
      setPlayerStorageValue(cid, config.storages[2], 1)
       end    
       
elseif item.actionid == config.actions[3] then
  if getPlayerStorageValue(cid, config.storages[3]) == 0 then
     doCreateMonster(config.monsters[3], pos.terceirasala)
      setPlayerStorageValue(cid, config.storages[3], 1)
       end       
       
elseif item.actionid == config.actions[4] then
   if getPlayerStorageValue(cid, config.storages[4]) == 0 then
      doCreateMonster(config.monsters[4], pos.quartasala)
      setPlayerStorageValue(cid, config.storages[4], 1)
       end    
       
elseif item.actionid == config.actions[5] then
  if  getPlayerStorageValue(cid, config.storages[5]) == 0 then
     doCreateMonster(config.monsters[5], pos.quintasala)
      setPlayerStorageValue(cid, config.storages[5], 1)
       end    
 end      
 return true
 end           