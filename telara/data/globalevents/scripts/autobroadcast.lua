-- 

function onThink(interval, lastExecution)
	local messages = {
	"[Commands]: We have several commands,!bless, !aol, !food, you can see the rest on our site. http://telara.servegame.com/?view=commands",
	"[Crown Tokens]: Our crown token system you get by killing monsters or upando level, you can trade for addons and mounts. http://telara.servegame.com/?view=crowntoken",
	"[Cast System]: If you keep casting online after 20 minutes in public, you'll earn 5% more exp. http://telara.servegame.com/?view=casts",

}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ORANGE) 
    return true
end

