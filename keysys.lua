for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ProjectZeouron Keysys" then
    	v:Destroy()
    end
end

local Data = {
    Font = Enum.Font.Arcade,
    Color = Color3.fromRGB(130, 35, 175),
    DarkC = Color3.fromRGB(53.5, 25, 62),
    DarkerC = Color3.fromRGB(53.5 /1.5, 25 /1.5, 62 /1.5),
    BlackC = Color3.fromRGB(30,30,30),
    BgC = Color3.fromRGB(10,10,10),
    Icon = "http://www.roblox.com/asset/?id=16096831367",
    DiscordLink = "https://discord.com/invite/V4Jz5dmB"
}

local donekey

if isfile("ProjectZeouronKeysys") then
	if readfile("ProjectZeouronKeysys") == keysys.Key then
    	donekey = true
    end
else
	donekey = false
end

if not donekey then

local key = keysys.Key
local TweenService = game:GetService("TweenService")
local func = keysys.script

		local G = Instance.new("ScreenGui")
		G.ResetOnSpawn = false
		G.Enabled = true
		G.Name = "ProjectZeouron Keysys"
		G.Parent = game.CoreGui
		G.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets
     
    	local Main = Instance.new("ScrollingFrame")

		Main.Position = UDim2.new(0,339,0,185)
		Main.Position = UDim2.new(0,Main.Position.X.Offset,0,Main.Position.Y.Offset +230 -35)
		Main.Size = UDim2.new(0,620,0,390) -- 70
		Main.Size = UDim2.new(0,620,0,0)
		Main.Parent = G
		Main.BackgroundColor3 = Data.BgC
		Main.ZIndex = 85
		Main.ScrollBarImageColor3 = Data.Color
		Main.ScrollBarImageTransparency = 0
		Main.CanvasSize = UDim2.new(0,0,0,0)
    
    	local Ex = Instance.new("TextButton")

		Ex.Position = UDim2.new(0,620 -35,0,0)
		Ex.Size = UDim2.new(0,35,0,35)
		Ex.Parent = Main
		Ex.BackgroundTransparency = 1
		Ex.ZIndex = 790
		Ex.Text = "X"
		Ex.Font = Data.Font
		Ex.TextColor3 = Data.Color
		Ex.TextScaled = true
  
  		Ex.MouseButton1Click:Connect(function()
           	local TweenInf0 = TweenInfo.new(0.6) 
			local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,0)})
			PlayThis:Play()

			local TweenInf0 = TweenInfo.new(0.6) 
			local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(0,Main.Position.X.Offset,0,Main.Position.Y.Offset +230 -35)})
			PlayThis:Play()
   			wait(0.6)
  			G:Destroy()
        end)
    
    	local label = Instance.new("TextLabel")
        label.Parent = Main
        label.Position = UDim2.new(0,25,0,46 /2)
        label.Size = UDim2.new(0,620 -375,0,100)
        label.BackgroundTransparency = 1
        label.Text = "Please do this keysystem to continue."
        label.Font = Data.Font
        label.TextColor3 = Data.Color
        label.ZIndex = 87
        label.TextYAlignment = "Top"
        label.TextScaled = true
        
        local box = Instance.new("TextBox")
        box.Parent = Main
        box.Position = UDim2.new(0,25,0,270)
        box.Size = UDim2.new(0,620 -375,0,70)
        box.BackgroundColor3 = Data.DarkerC
        box.Text = ""
        box.PlaceholderText = "Key"
        box.PlaceholderColor3 = Data.DarkC
        box.Font = Data.Font
        box.TextColor3 = Data.Color
        box.ZIndex = 88
        box.TextScaled = true
        
        local round = Instance.new("UICorner")
    	round.Parent = box
    	round.CornerRadius = UDim.new(0.05,0.05)
        
        box.FocusLost:Connect(function()
            local t = box.Text
            if t:lower() == key:lower() then
                G:Destroy()
                writefile("ProjectZeouronKeysys", keysys.Key)
                func()
            end
        end)
    
    	local icon = Instance.new("ImageButton")

		icon.Position = UDim2.new(0,620 -350,0,46 /2)
		icon.Size = UDim2.new(0,350,0,350)
		icon.BackgroundTransparency = 1
		icon.Parent = Main
		icon.Image = "http://www.roblox.com/asset/?id=16688349183"
		icon.ZIndex = 87
  
  		local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,390)})
		PlayThis:Play()

		local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset -230 +35)})
		PlayThis:Play()
else
   	keysys.script()
end
