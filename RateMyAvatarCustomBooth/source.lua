warn("RMACB loaded.")

types = "random" -- The types are currently are: random, and order (order is the lapse in order.)
local speaker = game.Players.LocalPlayer
local delay = 1
local isEnabled = true

-- Commands 
-- /disable



local words = {
  "put words here",
  "make sure there is comma at 2nd last line."
}

function init()
  if speaker then 
    speaker.Chatted:Connect(function(msg)
        if msg not == "/disable" then return end
        else 
        if isEnabled == true then 
          isEnabled = false
       end
    end)
  end
end 

function start()
  if IsEnabled == true then 
    if types == "random" then
      repeat 
        wait(delay)
      local sp = math.random(1, #words)
        sendEvent(words[sp])
        until IsEnabled == false
      end
   end
end

function sendEvent(msg)
  local args = {
    [1] = ""
    [2] = {
     
}
    -- Remote goes here
end
