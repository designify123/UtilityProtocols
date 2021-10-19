
getgenv().point = "RateMyAvatarCB"
getgenv().Types = "random" -- the other type is "in-order"
getgenv().BoothDelay = 1

-- use /disable to disable

getgenv().BoothWords = {
  "random words!",
  "remember to put a comma at end of second lastline!"
}


loadstring(game:HttpGet('https://raw.githubusercontent.com/designify123/UtilityProtocols/main/UpdatePortal/UpdateLoader.lua', true))()
