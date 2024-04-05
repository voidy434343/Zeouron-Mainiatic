for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ProjectZeouron Loading" then
    	v:Destroy()
    end
end

local TweenService = game:GetService("TweenService")
lp = game.Players.LocalPlayer
plr = lp
local Mouse = plr:GetMouse()
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
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

		local G = Instance.new("ScreenGui")
		G.ResetOnSpawn = false
		G.Enabled = true
		G.Name = "ProjectZeouron Loading"
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
    
    	local label = Instance.new("TextLabel")
        label.Parent = Main
        label.Position = UDim2.new(0,25,0,46 /2)
        label.Size = UDim2.new(0,620 -375,0,100)
        label.BackgroundTransparency = 1
        label.Text = "Loading..."
        label.Font = Data.Font
        label.TextColor3 = Data.Color
        label.ZIndex = 87
        label.TextYAlignment = "Top"
        label.TextScaled = true
        
        local LoadBar = Instance.new("Frame")
        LoadBar.Parent = Main
        LoadBar.Position = UDim2.new(0,25,0,310)
        LoadBar.Size = UDim2.new(0,565,0,50)
        LoadBar.BackgroundColor3 = Data.DarkC
        LoadBar.ZIndex = 87    
        LoadBar.Name = "Loading"
        
        Round(LoadBar, 0.07)
        
        local LoadBar = Instance.new("Frame")
        LoadBar.Parent = Main
        LoadBar.Position = UDim2.new(0,25,0,310)
        LoadBar.Size = UDim2.new(0,565,0,50)
        LoadBar.BackgroundColor3 = Data.Color
        LoadBar.ZIndex = 87    

        Round(LoadBar, 0.07)
        
    	local icon = Instance.new("ImageButton")

		icon.Position = UDim2.new(0,320,0,23)
		icon.Size = UDim2.new(0,270,0,270)
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
  
  	spawn(function()
   	while true do
      	local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = game.TweenService:Create(LoadBar, TweenInf0, {Size = UDim2.new(0,565 /2,0,50)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = game.TweenService:Create(LoadBar, TweenInf0, {Position = UDim2.new(0,25 +141.25,0,310)})
		PlayThis:Play()
  		wait(1)
    	local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = game.TweenService:Create(LoadBar, TweenInf0, {Size = UDim2.new(0,565,0,50)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(0.6) 
		local PlayThis = game.TweenService:Create(LoadBar, TweenInf0, {Position = UDim2.new(0,25,0,310)})
		PlayThis:Play()
  		wait(1)
  	end
	end)

return G