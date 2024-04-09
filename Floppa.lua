lp = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

Data = {
    NameOfYourScript = "Zeouron",
    
    GParent = game.CoreGui, -- Rendering Settings
    MColor = Color3.fromRGB(148, 24, 148),
    Font = Enum.Font.Arcade, -- Nunito
    DColor = Color3.fromRGB(48, 10, 48),
    TextColor = Color3.fromRGB(165, 24, 165),
    
    MainSettings = {
        OnOff = true, -- Adds a Keybind/Button on screen, that when pressed, will remove/readd the gui,
        Keybind = Enum.KeyCode.M
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
            Color3.fromRGB(148, 24, 148), -- ImageColor
            5 -- Y Position
        },
        Shield = {
        	"http://www.roblox.com/asset/?id=16310099190", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(148, 24, 148), -- ImageColor
            3 -- Y Position
        },
    	Script = {
        	"http://www.roblox.com/asset/?id=16310517264", -- Image
            23, -- X Scale
            23, --  Y Scale
            Color3.fromRGB(148, 24, 148), -- ImageColor
            3 -- Y Position
        }
    }
}

function fireproximityprompt(ProximityPrompt, Amount, Skip)
    assert(ProximityPrompt, "Argument #1 Missing or nil")
    assert(typeof(ProximityPrompt) == "Instance" and ProximityPrompt:IsA("ProximityPrompt"), "Attempted to fire a Value that is not a ProximityPrompt")

	if typeof(ProximityPrompt.Parent) == "Instance" then
    	local oldpos = lp.character.HumanoidRootPart.CFrame
     	lp.character.HumanoidRootPart.CFrame = ProximityPrompt.Parent.CFrame
      	wait(0.2)
       	lp.character.HumanoidRootPart.CFrame = oldpos
        wait()
    end
 
 
    local HoldDuration = ProximityPrompt.HoldDuration
    if Skip then
        ProximityPrompt.HoldDuration = 0
    end

    for i = 1, Amount or 1 do
        ProximityPrompt:InputHoldBegin()
        if Skip then
            local RunService = game:GetService("RunService")
            local Start = time()
            repeat
                RunService.Heartbeat:Wait(0.1)
            until time() - Start > HoldDuration
        end
        ProximityPrompt:InputHoldEnd()
    end
    ProximityPrompt.HoldDuration = HoldDuration
end

--[[
game:GetService("ReplicatedStorage").RequestRaise:FireServer()

game:GetService("ReplicatedStorage").RequestRent:FireServer()

local args = {
    [1] = "Cook"
}

game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))

local args = {
    [1] = "Change Temperature",
    [2] = 3
}

game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))

local args = {
    [1] = "Add Ingredient",
    [2] = "Bread"
}

game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))

local args = {
    [1] = "Bread"
}

game:GetService("ReplicatedStorage").Purchase5:FireServer(unpack(args))

]]

local Zeouronic = loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouronic-Library/main/Lib%20loadstring.txt'))()

Zeouronic.newtab("Player")
Zeouronic.newtab("Floppa")
Zeouronic.newtab("Misc")

Zeouronic.newtab("Outside")

Zeouronic.button("Be fast", "Player", function()
    lp.character.Humanoid.WalkSpeed = 32
end)

Zeouronic.button("tp to backrooms", "Player", function()
    lp.character.HumanoidRootPart.CFrame = CFrame.new(-12609,57,-16114)
end)

Zeouronic.switch("Grab mushrooms", "Outside", function(bool)
	autograbmush = bool
end)

Zeouronic.switch("Autoclick floppa", "Floppa", function(bool)
	autoclick = bool
end)

Zeouronic.switch("Autograb cash", "Floppa", function(bool)
    autograb = bool
end)

Zeouronic.button("Buy food", "Floppa", function(bool)
    local args = {
    	[1] = "Floppa Food"
	}

	game:GetService("ReplicatedStorage").Purchase:FireServer(unpack(args))
end)

Zeouronic.button("Make Bread.", "Misc", function(bool)
    local args = {[1] = "Bread"}

	game:GetService("ReplicatedStorage").Purchase5:FireServer(unpack(args))
 	
  	local args = {[1] = "Cheese"}

	game:GetService("ReplicatedStorage").Purchase5:FireServer(unpack(args))
 	wait(0.2)
  	local args = {[1] = "Add Ingredient",[2] = "Bread"}

	game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))
 	local args = {[1] = "Add Ingredient",[2] = "Cheese"}

	game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))
 	wait(0.2)
  	local args = {[1] = "Change Temperature",[2] = 3}

	game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))
 	wait(0.2)
  	local args = {[1] = "Cook"}

	game:GetService("ReplicatedStorage").CookingEvent:FireServer(unpack(args))
end)

game:GetService("RunService").Stepped:Connect(function()
    if autoclick then
        fireclickdetector(game.Workspace.Floppa.ClickDetector)
    end
	if autograb then
    	for i,v in pairs(game.Workspace:GetChildren()) do
      		if v.Name == "Money" or v.Name == "Money Bag" then
            	v.Position = lp.character.HumanoidRootPart.Position
             	v.CanCollide = false
            end
      	end
    end
	if autograbmush then
     	for i,v in pairs(game.Workspace.Outside:GetChildren()) do
      		if v.Name == "Mushroom" and v.Transparency == 0 then
            	fireproximityprompt(v.ForagePrompt, 1, true)
            end
      	end
    end
end)