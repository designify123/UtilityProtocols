print("RMACB loaded. : V1.0.1")

speaker = game.Players.LocalPlayer
isEnabled = true

-- Commands 

function sendEvent(msg)
  local args = {
    [1] = "Update",
    [2] = {
        ["DescriptionText"] = msg, 
        ["ImageId"] = 0
    }
}
    game:GetService("ReplicatedStorage").CustomiseBooth:FireServer(unpack(args))
end


-- /disable



function init()
    speaker.Chatted:Connect(function(msg)
        if msg  == "/disable" then
        print("CVL")
          isEnabled = false
       end
    end)
  end

function start()
  if isEnabled == true then 
    if Types == "random" then
      repeat 
          wait(BoothDelay)
      local sp = math.random(1, #BoothWords)
        sendEvent(BoothWords[sp])
        until IsEnabled == false
      end
   end
end


start()
init()
