warn("Fake IP logger v1.0 loaded")

-- Gui to Lua
-- Version: 3.2

ips = {
	"184.254.89.142",
	"28.168.141.109",
	"162.36.242.190",
	"174.200.232.98",
	"75.149.139.25",
	"109.124.249.2",
	"237.77.226.21",
	"111.145.192.14",
	"167.170.233.112",
	"197.173.172.252",
}

players = game:GetService("Players")
-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local e = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
enabled = false

function SetStart()
	repeat
		wait(1)
	 local sp = math.random(1, #players)
	local setsp = math.random(1, #ips)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players[sp].Name.. "'s IP is ".. ips[setsp] , "All")
	until enabled == false 
end

--Properties:

syn.protect_gui(ScreenGui)
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0712515488, 0, 0.0981507823, 0)
Frame.Size = UDim2.new(0, 376, 0, 204)

e.Name = "e"
e.Parent = Frame
e.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
e.BackgroundTransparency = 1.000
e.Position = UDim2.new(0.622340381, 0, 0.823529422, 0)
e.Size = UDim2.new(0, 134, 0, 29)
e.Font = Enum.Font.SourceSansLight
e.Text = "Utility Protocols"
e.TextColor3 = Color3.fromRGB(120, 120, 120)
e.TextScaled = true
e.TextSize = 14.000
e.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(148, 148, 148)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0186170209, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 143, 0, 24)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Fake IP Logger"
TextLabel.TextColor3 = Color3.fromRGB(173, 173, 173)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.194148943, 0, 0.25, 0)
TextButton.Size = UDim2.new(0, 230, 0, 79)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.Text = "Start"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function ABNCF_fake_script() -- TextButton.head 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		if enabled == false then 
		    TextButton.Text = "Disable"
		    SetStart()
		if enabled == true then 
		    TextButton.Text = "Start"
		   end
		end
	end)
end
coroutine.wrap(ABNCF_fake_script)()


