function onStepIn(cid, item, frompos, item2, topos)
gatepos = {x=897, y=1104, z=13, stackpos=1}
	if item.uid == 60022 then
		doCreateItem(1547,1,gatepos)
		doSendMagicEffect(gatepos, 15) -- 15 é o ID do efeito.
	end
end