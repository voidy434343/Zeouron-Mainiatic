for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ProjectZeouron Startup" then
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

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

local TweenService = game:GetService("TweenService")

local G = Instance.new("ScreenGui")
G.ResetOnSpawn = false
G.Enabled = true
G.Name = "ProjectZeouron Startup"
G.Parent = game.CoreGui
G.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets
     
local Main = Instance.new("Frame")

Main.Position = UDim2.new(0,339 +155,0,185)
Main.Size = UDim2.new(0,310,0,390) -- 70
Main.Parent = G
Main.BackgroundColor3 = Data.BgC
Main.BorderColor3 = Data.DarkC
Main.ZIndex = 85

local Exec = Instance.new("TextButton")

Exec.Position = UDim2.new(0,25,0,390 -33 -25)
Exec.Size = UDim2.new(0,310 -50,0,33) -- 70
Exec.Parent = Main
Exec.BackgroundColor3 = Data.DarkC
Exec.BorderColor3 = Data.DarkerC
Exec.ZIndex = 86
Exec.Font = Data.Font
Exec.TextColor3 = Data.Color
Exec.TextScaled = true
Exec.Text = "Execute"

Exec.MouseButton1Click:Connect(function()
    startupData.Script()
end)

local ZeoText = Instance.new("TextButton")

ZeoText.Position = UDim2.new(0,25,0,0)
ZeoText.Size = UDim2.new(0,310 -50,0,17) -- 70
ZeoText.Parent = Main
ZeoText.BackgroundTransparency = 1
ZeoText.BorderColor3 = Data.DarkerC
ZeoText.ZIndex = 86
ZeoText.Font = Data.Font
ZeoText.TextColor3 = Data.Color
ZeoText.TextScaled = true
ZeoText.Text = "Zeouron"

local UpdText = Instance.new("TextButton")

UpdText.Position = UDim2.new(0,25,0,32)
UpdText.Size = UDim2.new(0,310 -50,0,23) -- 70
UpdText.Parent = Main
UpdText.BackgroundTransparency = 1
UpdText.BorderColor3 = Data.DarkerC
UpdText.ZIndex = 86
UpdText.Font = Data.Font
UpdText.TextColor3 = Data.Color
UpdText.TextScaled = true
UpdText.Text = startupData.Version.." |   Updatelog"

local UpdScroll = Instance.new("ScrollingFrame")

UpdScroll.Position = UDim2.new(0,0,0,23)
UpdScroll.Size = UDim2.new(0,310 -50,0,135)
UpdScroll.Parent = UpdText
UpdScroll.BackgroundColor3 = Data.DarkerC
UpdScroll.ZIndex = 87
UpdScroll.ScrollBarImageColor3 = Data.Color
UpdScroll.ScrollBarImageTransparency = 0
UpdScroll.CanvasSize = UDim2.new(0,0,0,0)

local Startpos = 0
for i,v in pairs(startupData.changelog) do
local UpdScrollText = Instance.new("TextButton")

UpdScrollText.Position = UDim2.new(0,0,0,Startpos)
UpdScrollText.Size = UDim2.new(0,310 -50,0,18) -- 70
UpdScrollText.Parent = UpdScroll
UpdScrollText.BackgroundTransparency = 1
UpdScrollText.BorderColor3 = Data.DarkerC
UpdScrollText.ZIndex = 88
UpdScrollText.Font = Data.Font
UpdScrollText.TextColor3 = Data.Color
UpdScrollText.TextScaled = true
UpdScrollText.Text = v
Startpos += 18
UpdScroll.CanvasSize = UDim2.new(0,0,0,Startpos)
end

Round(UpdScroll, 0.03)