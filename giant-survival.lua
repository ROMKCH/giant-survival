-- by scripter#4863
-- https://discord.gg/bxG6nAWD6a
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Giant Survival";
	Text = "Made by scipter#4863";
	Duration = 5;
})
wait(5)
game.StarterGui:SetCore("SendNotification", {
	Title = "Discord";
	Text = "discord.gg/bxG6nAWD6a";
	Duration = 5;
})

local MainGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local infmoney = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local infmoneytitle = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local bestgun = Instance.new("ImageButton")
local UICorner_4 = Instance.new("UICorner")
local bestguntitle = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local credits = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")

--Properties:

MainGui.Name = "MainGui"
MainGui.Parent = game.CoreGui
MainGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGui
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.692848742, 0, 0.440227717, 0)
MainFrame.Size = UDim2.new(0, 132, 0, 197)
MainFrame.Active = true
MainFrame.Draggable = true

infmoney.Name = "inf money"
infmoney.Parent = MainFrame
infmoney.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infmoney.Position = UDim2.new(0, 0, 0.309644669, 0)
infmoney.Size = UDim2.new(0, 25, 0, 25)
infmoney.Image = "rbxassetid://9867022939"
infmoney.MouseButton1Down:Connect(function()
	local args = {{false}, {2}}
	_G.d = true

	while _G.d == true and wait() do
		local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].currencycollected
		Event:FireServer(args)
	end
end)

UICorner.Parent = infmoney

UICorner_2.Parent = MainFrame

infmoneytitle.Name = "inf-money-title"
infmoneytitle.Parent = MainFrame
infmoneytitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infmoneytitle.Position = UDim2.new(0.196969718, 0, 0.309644669, 0)
infmoneytitle.Size = UDim2.new(0, 106, 0, 24)
infmoneytitle.Font = Enum.Font.SourceSansBold
infmoneytitle.Text = "Infinite Money"
infmoneytitle.TextColor3 = Color3.fromRGB(0, 0, 0)
infmoneytitle.TextScaled = true
infmoneytitle.TextSize = 14.000
infmoneytitle.TextWrapped = true

UICorner_3.Parent = infmoneytitle

bestgun.Name = "best gun"
bestgun.Parent = MainFrame
bestgun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestgun.Position = UDim2.new(0, 0, 0.502538085, 0)
bestgun.Size = UDim2.new(0, 25, 0, 25)
bestgun.Image = "rbxassetid://9867022939"
bestgun.MouseButton1Down:Connect(function()
	local A_1 =
		{
			[1] =
			{
				[1] = false
			},
			[2] =
			{
				[1] = 2
			}
		}
	local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].weaponunequipped
	Event:FireServer(A_1)
	local A_1 =
		{
			[1] =
			{
				[1] = "Crazy Futuristic Minigun"
			},
			[2] =
			{
				[1] = false
			}
		}
	local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].weaponequipped
	Event:FireServer(A_1)

	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

UICorner_4.Parent = bestgun

bestguntitle.Name = "best-gun-title"
bestguntitle.Parent = MainFrame
bestguntitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestguntitle.Position = UDim2.new(0.196969718, 0, 0.507614255, 0)
bestguntitle.Size = UDim2.new(0, 106, 0, 24)
bestguntitle.Font = Enum.Font.SourceSansBold
bestguntitle.Text = "Best Gun"
bestguntitle.TextColor3 = Color3.fromRGB(0, 0, 0)
bestguntitle.TextScaled = true
bestguntitle.TextSize = 14.000
bestguntitle.TextWrapped = true

UICorner_5.Parent = bestguntitle

title.Name = "title"
title.Parent = MainFrame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.Size = UDim2.new(0, 132, 0, 50)
title.Font = Enum.Font.SourceSansBold
title.Text = "Giant Survival"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

UICorner_6.Parent = title

credits.Name = "credits"
credits.Parent = MainFrame
credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
credits.Position = UDim2.new(0, 0, 0.868020296, 0)
credits.Size = UDim2.new(0, 132, 0, 26)
credits.Font = Enum.Font.SourceSansBold
credits.Text = "by: scripter#4863"
credits.TextColor3 = Color3.fromRGB(0, 0, 0)
credits.TextScaled = true
credits.TextSize = 14.000
credits.TextWrapped = true

UICorner_7.Parent = credits
