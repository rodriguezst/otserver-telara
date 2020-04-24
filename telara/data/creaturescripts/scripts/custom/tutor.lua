function onModalWindow(cid, modalWindowId, buttonId, choiceId)
	cid:unregisterEvent("modalwindowhelper")
	local mensagem = { 
		[1] = "Tutor Automatico: Resposta1", -- aqui é voce vai adicionar as respostas respeitando a sequencia
		[2] = "Tutor Automatico: Resposta2",

	}
	
	if modalWindowId == 1000 then
		if buttonId == 100 then
			for x = 1,#mensagem do
				if choiceId == x then
					cid:sendTextMessage(MESSAGE_STATUS_CONSOLE_BLUE, mensagem[x]) 			
				end
			end	
		end
	end
end	