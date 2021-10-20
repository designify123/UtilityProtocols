Players = game:GetService("Players")
speaker = Players.LocalPlayer
UM_MOUSE = speaker:GetMouse()

utils = {}

function utils:PlayerToId(target)
  if Players[target] then
     return target.UserId
    end
end

function utils:IdToPlayer(id)
  for x, v in pairs(Players:GetPlayer()) do 
       if v.UserId == id then 
      return v.Name 
        end
    end
end

function getPos(target)
  if target == "me" then 
    return speaker.Character.HumanoidRootPart.CFrame
  else 
    return Players[target].Character.HumanoidRootPart.CFrame
    end
end
