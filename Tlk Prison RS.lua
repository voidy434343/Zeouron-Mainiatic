plr = game.Players.LocalPlayer
lp = game.Players.LocalPlayer
Speed = 16

Data = {
    NameOfYourScript = "Zeouron",    
    GParent = game.CoreGui, -- Rendering Settings
    MColor = Color3.fromRGB(130, 35, 175),
    DColor = Color3.fromRGB(107 /2, 50 /2, 124 /2),
    Font = Enum.Font.Arcade, -- Nunito
    TextColor = Color3.fromRGB(130, 35, 175),
    
    MainSettings = {
        OnOff = true, -- Adds a Keybind/Button on screen, that when pressed, will remove/re add the gui,
        Keybind = Enum.KeyCode.M -- if OnOffButton is true, then it will add a keybind, 
    },

	KeySystem = { -- This is pretty obvious,
    	On = false,
    	Text = "Hello "..game.Players.LocalPlayer.DisplayName.."! Please do this Keysystem to execute this script.",
    	GetKeyLink = "https://discord.gg/",
     	Key = "Awesome Key",
      	SaveKey = true
    },
    
    Icons = {
    	Skull = {
        	"http://www.roblox.com/asset/?id=16309513575", -- Image
            15, -- X Scale
            18, --  Y Scale
            Color3.fromRGB(130, 35, 175), -- ImageColor
            5 -- Y Position
        },
        Shield = {
        	"http://www.roblox.com/asset/?id=16310099190", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(130, 35, 175), -- ImageColor
            3 -- Y Position
        },
    	Script = {
        	"http://www.roblox.com/asset/?id=16310517264", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(130, 35, 175), -- ImageColor
            3 -- Y Position
        }
    }
}

local Zeouronic = loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouronic-Library/main/Lib%20loadstring.txt'))()

local icon = Instance.new("ImageButton")

icon.Position = UDim2.new(0.5,0,0,0)
icon.Size = UDim2.new(0.030 *1.7,0,0.05 *1.7,0)
icon.BackgroundTransparency = 1
icon.Image = "http://www.roblox.com/asset/?id=16446450034"
icon.Draggable = true 
icon.Active = true 
icon.Selectable = true
icon.ZIndex = 10

local back1 = Instance.new("ImageButton")

back1.Position = UDim2.new(0,0,0,0)
back1.Size = UDim2.new(1,0,1,0)
back1.BackgroundTransparency = 1
back1.Parent = icon
back1.Image = "http://www.roblox.com/asset/?id=16446446084"
back1.Draggable = true 
back1.Active = true 
back1.Selectable = true
back1.ZIndex = 9

local back2 = Instance.new("ImageButton")

back2.Position = UDim2.new(0,0,0,0)
back2.Size = UDim2.new(1,0,1,0)
back2.BackgroundTransparency = 1
back2.Parent = icon
back2.Image = "http://www.roblox.com/asset/?id=16446446084"
back2.Draggable = true 
back2.Active = true 
back2.Selectable = true
back2.ZIndex = 9

Zeouronic.SetonoffButton(icon)

Zeouronic.newtab("PVP", Data.Icons.Skull)
Zeouronic.newtab("Map")

Zeouronic.switch("WalkSpeed Bypass", "PVP", function(bool)
    Wb = bool
    if bool then
    	while wait() and Wb do
    		local args = {[1] = Speed}

			game:GetService("ReplicatedStorage").BloatwareRemote:FireServer(unpack(args))

			game.Players.LocalPlayer.character.Humanoid.WalkSpeed = Speed
		end
	end
end)

Zeouronic.slider("Set walkspeed", "PVP", 16, 100, 16, function(number)
    Speed = number
end)

Zeouronic.button("Infinite Stamina", "PVP", function()
 	local args = {[1] = true, [2] = 999999}

	game:GetService("ReplicatedStorage").AddStamina:FireServer(unpack(args))
 	information("Execute this if you have under 100 stamina,")
end)

Zeouronic.switch("Attack", "PVP", function(bool)
    Att = bool
    if bool then
    	while wait() and Att do
        	if lp.character:FindFirstChildWhichIsA("Tool") then
         		local args = {[1] = 0.3}
				game:GetService("ReplicatedStorage").Damage:FireServer(unpack(args))
        	end
        end
    end
end)

game:GetService("RunService").Stepped:Connect(function()
    back2.Rotation = back2.Rotation +2.5
    back1.Rotation = back1.Rotation -2.5
    if IS then
        lp.PlayerGui.Stamina.Holder.StaminaBarFrame.Stamina.Size = UDim2.new(1,0,1,0)
    end
end)

Zeouronic.button("Remove Doors", "Map", function()
    if game.Workspace:FindFirstChild("Doors") then
        game.Workspace:FindFirstChild("Doors"):Destroy()
    end
end)

information("This script is still W.I.P,")