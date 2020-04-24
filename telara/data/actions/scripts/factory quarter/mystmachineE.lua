function onUse(cid, item, frompos, item2, topos) 
       if item.actionid == 23701 then 
           queststatus = getPlayerStorageValue(cid,10251) 
           if queststatus == -1 and (getPlayerItemCount(cid,9690) >= 4) then 
               doPlayerSendTextMessage(cid,19,"You have inserted the gear wheels into the relais either to the left or to the right, now are calibrated the teleporter.") 
               doPlayerRemoveItem(cid, 9690, 4)
               setPlayerStorageValue(cid,10251,1) 
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1054, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1056, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1058, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1060, z=12})
           else 
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1054, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1056, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1058, z=12})
		doCreatureSay(cid, "*zzzzzzzzz*", TALKTYPE_ORANGE_1, nil, nil, {x=1068, y=1060, z=12})
                doPlayerSendTextMessage(cid,19,"Access denied! Please insert 4 gear wheels into the relais either to the left or to the right, to calibrate the teleporter.") 
          	end 
	end
end