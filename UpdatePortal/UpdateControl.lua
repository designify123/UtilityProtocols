
warn("Update Portal Initalized, finding last gateway...")
warn("Current Update Portal Version running at build: 1.0.2")

function FindPortal()
    if point == "BeToxic" then 
       loadstring(game:HttpGet('https://raw.githubusercontent.com/designify123/UtilityProtocols/main/BeToxic/source.lua', true))()
        warn("BeToxic Client required.")
     end
    if point == "FakeIPLogger" then 
       loadstring(game:HttpGet("https://raw.githubusercontent.com/designify123/UtilityProtocols/main/FakeIPLogger/source.lua", true))()
        warn("FakeIPLogger Client required.")
     end 
     if point == "RateMyAvatarCB" then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/designify123/UtilityProtocols/main/RateMyAvatarCustomBooth/source.lua", true))()
        warn("MyAvatarCB-RMACB Client required.")
     end
end

if not point then 
  warn("Unkown last gateway: no signals found. Please execute one of the loader scripts, if you think this is a mistake contact discord staff.")
else
  FindPortal()
end


