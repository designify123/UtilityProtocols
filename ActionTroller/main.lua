uis  = game:GetService("UserInputService") 
speaker = game.Players.LocalPlayer 
enabled = false 

function init()
  speaker.Chatted:Connect(function(msg)
      if msg == ".end" then 
        warn("Attempting to disale ActionTroller")
        enabled = false
        end
    end)
end
  
function say(str)
  game:GetService("ReplicatedStorage").DefaultChatSystenEvents.SayMessage(msg, "All")
  return true 
end

function start()
  
end

function safePrint(msg)
  warn("||".. msg .. "|| ///".. math.random(1, 67456754674567456477475374757345347576648543763634585864725836735344753926576354560)
end
  
  
