local function spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function onSay(player)
    if not player:getGroup():getAccess() then
  		return true
  	end

  	if player:getAccountType() < ACCOUNT_TYPE_GOD then
  		return false
  	end

  local file_ = io.open('orderedtask.html','w')

  for i,v in spairs(tasks, function(t,a,b) return t[b].level > t[a].level end) do
    local txt = "<tr>\n<td align=\"center\">".. v.level .."</td> <!--level necessario-->\n<td><div align=\"center\">\n"

    for i, v in ipairs(tasks[i].mob) do
      txt = txt..v.."<br>\n"
    end
    txt = txt.."</div></td>\n<td align=\"center\">".. tasks[i].count .. "</td> <!--quantidade-->\n<td align=\"center\" colspan=\"2\">"

    for tipo, valor in pairs(tasks[i].reward) do
      if tipo == 'item' then
        for j, v in pairs(valor) do
          if ItemType(v[1]) then
            local name = v[2] > 1 and ItemType(v[1]):getPluralName() or ItemType(v[1]):getName()
            if v[2] and v[2] > 1 then
              txt = txt.. v[2].." ".. name
            else
              txt = txt..name
            end
            if v.chance then
              txt = txt.. " (".. v.chance .."%)"
            end
            txt = txt .. "<br>\n"
          end
        end
      elseif tipo == 'experience' then
        txt = txt.. valor.. "xp <br>\n"
      elseif tipo == 'addon' then
        txt = txt.. "a new addon<br>\n"
      elseif tipo == 'outfit' then
        txt = txt.. "a new outfit<br>\n"
      elseif tipo == 'mount' then
        txt = txt.. "a new mount<br>\n"
      end
    end
    txt = txt.."</td>\n</tr>\n\n"
    file_:write(txt)
  end
  player:say("File was generated.", TALKTYPE_SAY)
return true
end