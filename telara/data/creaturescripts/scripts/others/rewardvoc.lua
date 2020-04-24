local c = {
   [{1,5}] = {
     [19] = {itemid = 2188, count = 1, storage = 99966}
   },
   [{2,6}] = {
     [19] = {itemid = 2185, count = 1, storage = 99966}
   }
}

function onAdvance(cid, skill, oldlevel, newlevel)
     if skill ~= SKILL_LEVEL then
         return true
     end

     for voc, x in pairs(c) do
         if isInArray(voc, getPlayerVocation(cid)) then
             for level, z in pairs(x) do
                 if newlevel >= level and getPlayerStorageValue(cid, z.storage) ~= 1 then
                     doPlayerAddItem(cid, z.itemid, z.count)
                     local item = getItemDescriptions(z.itemid)
                     doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations, you reached level "..level.." and received "..(z.count == 1 and item.article or z.count).." "..(z.count == 1 and item.name or item.plural)..".")
                     doSendMagicEffect(getPlayerPosition(cid), CONST_ME_FIREWORK_YELLOW)
                     setPlayerStorageValue(cid, z.storage, 1)
                 end
             end
         end
     end
     return true
end
