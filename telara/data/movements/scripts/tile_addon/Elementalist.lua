local config = {
    message = "Voc� ganhou Elementalist Addon", -- Mensagem para o player
    message_fail = "Voc� ja ganhou este Addon!", -- Mensagem para o player caso ele já tenha passado pelo piso
    outfits = {male = 432, female = 433}, -- OutfitID do addon que o player vai ganhar
    addons = 3, -- Os addons que o player ganhará, OBS .: 1 = 1º addon, 2 = 2º addon, 3 = 1º + 2º addon
    storage = 13720, -- Storage que o player vai receber
    tileUid = 13720 -- UniqueID que você vai por no map editor.
}

function onStepIn(creature, item, position, fromPosition)
    if (item:getUniqueId() == config.tileUid) then
        if (creature:getStorageValue(config.storage) == -1) then
            creature:setStorageValue(config.storage, 1)
            creature:addOutfitAddon(config.outfits.male, config.addons)
            creature:addOutfitAddon(config.outfits.female, config.addons)
            creature:say(config.message, TALKTYPE_ORANGE_1)
        else
            creature:say(config.message_fail, TALKTYPE_ORANGE_1)
            creature:teleportTo(fromPosition, true)
            return false
        end
    end
    return true
end