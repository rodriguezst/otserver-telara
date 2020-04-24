function onSay(cid, player, words, param)
	cid:registerEvent("modalwindowhelper")
 
    local titulo = "Tutor Automatico" -- Esse é o titulo do ModalWindow
    local mensagem = "Oi,eu sou o Tutor Automatico do OTS, posso respoder algumas de suas duvidas" -- Subtitulo do ModalWindow
 
    local popup = ModalWindow(1000, titulo, mensagem)
	
    popup:addButton(100, "Confirm")
    popup:addButton(101, "Cancel")
 
    popup:addChoice(1, "Pergunta1") -- Aqui é onde voce vai adicionar as perguntas, basta seguir a sequencia
    popup:addChoice(2, "Pergunta2")
 
    popup:setDefaultEnterButton(100)
    popup:setDefaultEscapeButton(101)
 
    popup:sendToPlayer(cid)
	
    return true
end