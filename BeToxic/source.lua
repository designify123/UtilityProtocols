-- WARNING USING THE SOURCE IS NOT RECOMMENDED, IT IS RECOMMENDED TO USE THE SCRIPT.LUA TO RECEIVE AUTO UPDATES FOR BETOXIC.LUA

print("BeToxic Started.")

-- Commands
-- /enable
-- /disble

 speaker = game.Players.LocalPlayer
 delay = 1 
 enabled = false 

local toxicmsgs = { -- U can add mores when wanted
  "noob",
  "get good kid"
}


function msg(str)
  if str then 
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
 end

function init()
  speaker.Chatted:Connect(function(msg)
     if msg == "/e disable" and enabled == true then
        enabled = false 
        return true
     end
      if msg == "/e enable" and enabled == false then
         enabled = true
        toxic()
        return true
        end
  end)
end

function toxic()
  if not enabled == true then return end
  repeat 
    wait(delay)
    local sp = math.random(1, #toxicmsgs)
    msg(toxicmsgs[sp])
    until enabled == false 
end
