--[[
Script - Lordzetros
Forum Tibia King
]]
 
local config = {
    titulo = "Bem vindo ao Thoria!", -- Titulo da Janela
    mensagem = "Selecione qual hunt voce deseja ir:", -- Mensagem abaixo do título da janela
}
 
CONFIG_TPS_JANELA = {
    [19090] = { -- ID do action que ficará no portal da hunt
        {nome = "Rotworm I", pos = {x = 1459, y = 1139, z = 7}}, -- Segue padrão, nome da cave e posição que o player será teleportado
        {nome = "Rotworm II", pos = {x = 1147, y = 1151, z = 7}},
        {nome = "Rotworm III", pos = {x = 1187, y = 1145, z = 7}},

    },
    [19091] = {
        {nome = "Warlock I", pos = {x = 1295, y = 1719, z = 7}},
        {nome = "Warlock II", pos = {x = 2041, y = 981, z = 8}},
    },
	    [19092] = {
        {nome = "Fury I", pos = {x = 1310, y = 1479, z = 7}},
        {nome = "Fury II", pos = {x = 1570, y = 829, z = 8}},
    },
	    [19093] = {
        {nome = "Grim Reaper I", pos = {x = 1840, y = 974, z = 7}},
        {nome = "Grim Reaper II", pos = {x = 981, y = 1852, z = 8}},
        {nome = "Grim Reaper III", pos = {x = 1080, y = 1352, z = 7}},

    },
	    [19094] = {
        {nome = "Wyrm I", pos = {x = 1596, y = 904, z = 6}},
        {nome = "Wyrm II", pos = {x = 1655, y = 1448, z = 7}},
        {nome = "Elder Wyrm I", pos = {x = 1265, y = 1526, z = 7}},
    },
	    [19095] = {
        {nome = "Asuras I", pos = {x = 1171, y = 1464, z = 6}},
        {nome = "Asuras II", pos = {x = 1156, y = 1618, z = 7}},
    },
	    [19096] = {
        {nome = "Minotaur I", pos = {x = 1281, y = 1153, z = 7}},
        {nome = "Minotaur II", pos = {x = 1278, y = 1623, z = 7}},
        {nome = "Minotaur III", pos = {x = 1121, y = 1503, z = 7}},
    },
	    [19097] = {
        {nome = "Dragon Lord I", pos = {x = 1166, y = 1257, z = 7}},
        {nome = "Dragon Lord II", pos = {x = 1390, y = 1604, z = 7}},
		{nome = "Dragon Lord II", pos = {x = 1239, y = 944, z = 7}},
    },
		[19098] = {
        {nome = "Hydra I", pos = {x = 1560, y = 1081, z = 5}},
        {nome = "Hydra II", pos = {x = 1590, y = 1056, z = 6}},
		{nome = "Hydra III", pos = {x = 1539, y = 1016, z = 9}},
        {nome = "Hydra IV", pos = {x = 1263, y = 1842, z = 6}},
    },
		[19099] = {
        {nome = "Lizards", pos = {x = 1376, y = 865, z = 7}},
        {nome = "Lizard Chosen", pos = {x = 2012, y = 1134, z = 7}},
    },
		[19100] = {
        {nome = "Frost Dragon I", pos = {x = 1637, y = 1341, z = 7}},
        {nome = "Frost Dragon II", pos = {x = 1556, y = 1230, z = 7}},
    },
		[19101] = {
		{nome = "Hero", pos = {x = 1761, y = 901, z = 8}},
        {nome = "Hero Fortress I", pos = {x = 1057, y = 1522, z = 7}},
        {nome = "Hero Fortress II", pos = {x = 1828, y = 1344, z = 7}},
    },
		[19102] = {
		{nome = "Giant Spider I", pos = {x = 1206, y = 1077, z = 7}},
        {nome = "Giant Spider II", pos = {x = 1480, y = 1705, z = 7}},
    },
		[19103] = {
		{nome = "Medusa & Hydras I", pos = {x = 1373, y = 1320, z = 7}},
        {nome = "Medusa & Hydras II", pos = {x = 1415, y = 1503, z = 7}},
    },
		[19104] = {
		{nome = "Dragon I", pos = {x = 1267, y = 1263, z = 7}},
        {nome = "Dragon II", pos = {x = 1388, y = 1690, z = 7}},
		{nome = "Dragon III", pos = {x = 986, y = 1805, z = 6}},
    },
		[19105] = {
		{nome = "Retching & Choking I", pos = {x = 873, y = 1858, z = 7}},
        {nome = "Retching & Choking II", pos = {x = 2000, y = 1885, z = 8}},

    },
	
		[19106] = {
		{nome = "Demons I", pos = {x = 1569, y = 848, z = 8}},
        {nome = "Demons II", pos = {x = 1296, y = 1892, z = 8}},
        {nome = "Demons III", pos = {x = 714, y = 1624, z = 10}},
    },
	
}
 
local function getActions(tabela)
    t = {}
    for c, v in pairs(tabela) do
        table.insert(t, c)
    end
    return t
end

function onStepIn(creature, item, pos, fromPosition)
    local t_actions = getActions(CONFIG_TPS_JANELA)
    if (isInArray(t_actions, item:getActionId()) and creature:isPlayer()) then
        local i_action = item:getActionId()
        creature:teleportTo(fromPosition, true)
        creature:registerEvent("janelaHunts")
        local janela = ModalWindow(1000, config.titulo, config.mensagem)
       
        for i, v in ipairs(CONFIG_TPS_JANELA[i_action]) do
            janela:addChoice(i, v.nome)
        end
        janela:addButton(100, "Confirmar")
        janela:addButton(101, "Fechar")
        janela:setDefaultEnterButton(100)
        janela:setDefaultEscapeButton(101)
        JANELA_TP_ACTION = i_action
        janela:sendToPlayer(creature)
    end
    return true
end