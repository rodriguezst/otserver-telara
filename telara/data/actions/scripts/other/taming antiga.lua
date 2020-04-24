local ACTION_RUN, ACTION_BREAK, ACTION_NONE, ACTION_ALL = 1, 2, 3, 4
local TYPE_MONSTER, TYPE_NPC, TYPE_ACTION, TYPE_UNIQUE = 1, 2, 3, 4

local config = {
        [5907] =        {NAME = 'Bear',                                 ID = 3,         TYPE = TYPE_MONSTER,    CHANCE = 20,    FAIL_MSG = { {1, "The bear ran away."}, {2, "Oh no! The slingshot broke."}, {3, "Oh no! The slingshot broke."}, {4, "The bear is trying to hit you with its claws."} }, SUCCESS_MSG = "You tamed the wild bear."},
        [13295] =       {NAME = 'Black Sheep',                  ID = 4,         TYPE = TYPE_MONSTER,    CHANCE = 25,    FAIL_MSG = { {1, "The black sheep ran away."}, {2, "Oh no! The reins were torn."}, {3, "Oh no! The reins were torn."}, {4, "The black sheep is trying to run away."} }, SUCCESS_MSG = "You tamed the sheep."},
        [13293] =       {NAME = 'Midnight Panther',             ID = 5,         TYPE = TYPE_MONSTER,    CHANCE = 15,    FAIL_MSG = { {1, "The midnight panther ran away."}, {2, "The whip broke."}, {3, "The whip broke."}, {4, "The midnight panther is growling at you."} }, SUCCESS_MSG = "You tamed the wild panther.."},
        [13298] =       {NAME = 'Terror Bird',                  ID = 2,         TYPE = TYPE_MONSTER,    CHANCE = 25,    FAIL_MSG = { {1, "The bird ran away."}, {2, "Oh no, the bird ate the carrot."}, {3, "Oh no, the bird ate the carrot."}, {4, "The terror bird is pecking you."} }, SUCCESS_MSG = "You tamed the bird."},
        [13247] =       {NAME = 'Boar',                                 ID = 10,        TYPE = TYPE_MONSTER,    CHANCE = 70,    FAIL_MSG = { {1, "The boar has run away"}, {2, "The boar has broke you horn."}, {3, "The boar has run away."}, {4, "The boar attacks you."} }, SUCCESS_MSG = "You tamed the boar."},
        [13305] =       {NAME = 'Crustacea Gigantica',  ID = 7,         TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The crustacea has run away."}, {2, "The crustacea ate the shrimp."}, {3, "The crustacea has run away."}, {4, "The crustacea ate the shrimp."} }, SUCCESS_MSG = "You tamed the crustacea."},
        [13291] =       {NAME = 'Undead Cavebear',              ID = 12,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The undead bear has run away."}, {2, "The undead cavebear is growling at you and broke you maxilla."}, {3, "The undead bear has run away."}, {4, "The undead cavebear is growling at you  and broke you maxilla."} }, SUCCESS_MSG = "You tamed the undead cavebear."},
        [13307] =       {NAME = 'Wailing Widow',                ID = 1,         TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The widow has run away."}, {2, "The widow has eaten the sweet bait."}, {3, "The wailing widow is hissing at you."}, {4, "Oh no! The wailing widow ate the bait."} }, SUCCESS_MSG = "You tamed the widow."},
        [13292] =       {NAME = 'Tin Lizzard',                  ID = 8,         TYPE = TYPE_NPC,                CHANCE = 30,    FAIL_MSG = { {1, "The tin lizzard has run away."}, {2, "Krr... kch. The tin lizzard broke apart."}, {3, "The tin lizzard has run away."}, {4, "Krr... kch. The tin lizzard broke apart."} }, SUCCESS_MSG = "Krkrkrkrk You wind up the tin lizzard."},
        [13294] =       {NAME = 'Draptor',                      ID = 6,         TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The draptor has run away."}, {2, "The draptor has broke harness."}, {3, "The draptor has run away."}, {4, "The draptor has broke harness."} }, SUCCESS_MSG = "You  tamed the draptor."},
        [13536] =       {NAME = 'Crystal Wolf',                 ID = 16,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The wolf has run away."}, {2, "The wolf has broke diapason and run away."}, {3, "The wolf has tried to bite you."}, {4, "The wolf has broke diapason and run away."} }, SUCCESS_MSG = "The smooth sound of the diapason tamed the crystal wolf.."},
        [13539] =       {NAME = 'White Deer',                   ID = 18,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The cone broke."}, {2, "The cone broke."}, {3, "The deer has fled in fear."}, {4, "The cone broke."},  }, SUCCESS_MSG = "You tamed the deer."},
        [13538] =       {NAME = 'Panda',                                ID = 19,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "Panda ran away."}, {2, "Panda ate the leaves and ran away."}, {3, "Panda ran away."}, {4, "Panda ate the leaves and ran away."} }, SUCCESS_MSG = "You tamed the panda."},
        [13535] =       {NAME = 'Dromedary',                    ID = 20,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "Dromedary has run away."}, {2, "Dromedary has broke you stick."}, {3, "Dromedary has run away."}, {4, "Dromedary has run away and take you stick."} }, SUCCESS_MSG = "You tamed the dromedary."},
        [13498] =       {NAME = 'Sandstone Scorpion',   ID = 21,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The sandstone scorpion has vanished."}, {2, "Sandstone scorpion broken the sceptre."}, {3, "The sandstone scorpion eludes the influence of the scepter.."}, {4, "Sandstone scorpion broken the sceptre."} }, SUCCESS_MSG = "You tamed the sandstone scorpion"},
        [13537] =       {NAME = 'Donkey',                       ID = 13,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The donkey has escaped!"}, {2, "You did not manage to feed the donkey enough apple slices."}, {3, "The donkey has escaped!"}, {4, "You did not manage to feed the donkey enough apple slices."} }, SUCCESS_MSG = "Munching a large pile of apple slices tamed the donkey."},
        [13938] =       {NAME = 'Uniwheel',                     ID = 15,        TYPE = TYPE_NPC,                CHANCE = 80,    FAIL_MSG = { {1, "The oil is having no effect."}, {2, "Splosh! It looks like most of the special oil this can was holding was spilt without any effect."}, {3, "The oil is having no effect."}, {4, "Splosh!!"} }, SUCCESS_MSG = "Vroooomratatatatatatat. The strange wheel seems to vibrate and slowly starts turning continuously."},
        [13508] =       {NAME = 'Slug',                                 ID = 14,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The slug has run away."}, {2, "The drug doesn't take any effect."}, {3, "The slug has run away."}, {4, "The drug had no effect."} }, SUCCESS_MSG = "You drugged the slug."},
        [13939] =       {NAME = 'War Horse',                    ID = 23,        TYPE = TYPE_MONSTER,    CHANCE = 15,    FAIL_MSG = { {1, "Weeeheeeehee."}, {2, "The horse ate the oats."}, {2, "The wild horse happily munches the sugar oat and runs on.."}, {2, "With its last strength the horse the horse runs to safety.."} }, SUCCESS_MSG = "The horse eats the sugar oat and accepts you as its new master."},
        [15545] =       {NAME = 'Manta Ray',                    ID = 28,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The manta ray fled."}, {2, "The manta ray ignore you foxtail."}, {3, "The manta ray is trying to escape."}, {4, "The manta ate foxtail."}, }, SUCCESS_MSG = "You tamed the manta ray."},
        [15546] =       {NAME = 'Lady Bug',                      ID = 27,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The lady bug got scared and ran away."}, {2, "The ladybug got scared and ran away.."}, {3, "The ladybug is trying to nibble."}, {4, "The ladybug got scared and ran away."} }, SUCCESS_MSG = "You tame a ladybug."},
        [20138] =       {NAME = 'Water Buffalo',                ID = 35,        TYPE = TYPE_MONSTER,    CHANCE = 30,    FAIL_MSG = { {1, "The water buffalo got scared and ran away."}, {2, "The water buffalo got scared and ran away."}, {3, "the buffalo disappeared and you will have to find another one."}, {4, "The leech slipped through your fingers and is now following the call of nature. The leech disappeared"} }, SUCCESS_MSG = "The leech appeased the water buffalo and your taming was successful. You tamed the buffalo"}
}

local function doFailAction(cid, mount, pos, item, itemEx)
        local action, effect = mount.FAIL_MSG[math.random(1, table.maxn(mount.FAIL_MSG))], CONST_ME_POFF
        if(action[1] == ACTION_RUN) then
      Creature(itemEx.uid):remove()
        elseif(action[1] == ACTION_BREAK) then
                effect = CONST_ME_BLOCKHIT
      Item(item.uid):remove(1)
	  elseif(action[1] == ACTION_NONE) then
                effect = CONST_ME_BLOCKHIT
      Item(item.uid):remove()
        elseif(action[1] == ACTION_ALL) then
                Creature(itemEx.uid):remove()
      Item(item.uid):remove(1)
        end

   Position(pos):sendMagicEffect(effect)
   Player(cid):say(action[2], TALKTYPE_ORANGE_1)
        return action
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
   local player = Player(cid)
   local monster = Monster(itemEx.uid)
   local npc = Npc(itemEx.uid)
        local mount = config[item.itemid]
        if mount == nil or player:hasMount(mount.ID) then
                return false
        end

        local rand = math.random(1, 100)
        --Monster Mount
        if monster ~= nil and mount.TYPE == TYPE_MONSTER then
      if Creature(itemEx.uid):getMaster() then
         player:say("You cant tame a summon!", TALKTYPE_ORANGE_1)
         return true
      end
                if mount.NAME == monster:getName() then
                        if rand > mount.CHANCE then
                                doFailAction(cid, mount, toPosition, item, itemEx)
                                return true
                        end

         player:addMount(mount.ID)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, mount.SUCCESS_MSG)

         player:say(mount.SUCCESS_MSG, TALKTYPE_ORANGE_1)
         monster:remove()

         toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
         Item(item.uid):remove(1)
                        return true
                end
        --NPC Mount
        elseif npc ~= nil and mount.TYPE == TYPE_NPC then
                if mount.NAME == npc:getName() then
                        if rand > mount.CHANCE then
                                doFailAction(cid, mount, toPosition, item, itemEx)
                                return true
                        end

         player:addMount(mount.ID)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, mount.SUCCESS_MSG)

         player:say(mount.SUCCESS_MSG, TALKTYPE_ORANGE_1)

         toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
         Item(item.uid):remove(1)
                        return true
                end
        --Action Mount
        elseif itemEx.actionid > 0 and mount.TYPE == TYPE_ACTION then
                if(mount.NAME == itemEx.actionid) then
                        if rand > mount.CHANCE then
                                doFailAction(cid, mount, toPosition, item, itemEx)
                                return true
                        end
         player:addMount(mount.ID)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, mount.SUCCESS_MSG)

         player:say(mount.SUCCESS_MSG, TALKTYPE_ORANGE_1)

         toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
         Item(item.uid):remove(1)
                        return true
                end
        --Unique Mount
        elseif itemEx.uid <= 65535 and mount.TYPE == TYPE_UNIQUE then
                if mount.NAME == itemEx.uid then
                        if rand > mount.CHANCE then
                                doFailAction(cid, mount, toPosition, item, itemEx)
                                return true
                        end

         player:addMount(mount.ID)
         player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, mount.SUCCESS_MSG)

         player:say(mount.SUCCESS_MSG, TALKTYPE_ORANGE_1)

         toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
         Item(item.uid):remove(1)
                        return true
                end
        end
        return false
end