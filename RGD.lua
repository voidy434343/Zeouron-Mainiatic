lp = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")

Data = {
    NameOfYourScript = "Zeouron",    
    
    GParent = game.CoreGui, -- Rendering Settings
    MColor = Color3.fromRGB(130, 35, 175),
    DColor = Color3.fromRGB(107 /2, 50 /2, 124 /2),
    Font = Enum.Font.Arcade, -- Nunito
    TextColor = Color3.fromRGB(130, 35, 175),
    
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

local Zeouronic = loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouronic-Library/main/Lib%20loadstring.txt'))()

local antivoid = Instance.new("Part", game.Workspace)
antivoid.Transparency = 1
antivoid.Size = Vector3.new(2048, 0.1, 2048)
antivoid.Position = Vector3.new(0, -2, 0)
antivoid.Anchored = true
antivoid.CanCollide = false

Zeouronic.newtab("Main", Data.Icons.Skull) -- You dont need a Icon, if you dont want one, remove "Data.Icons.Skull"
Zeouronic.newtab("Room")
Zeouronic.newtab("World")

Zeouronic.slider("WalkSpeed", "Main", 1, 100, lp.character.Humanoid.WalkSpeed, function(number)
    lp.character.Humanoid.WalkSpeed = number
end)

Zeouronic.slider("JumpPower", "Main", 25, 150, lp.character.Humanoid.JumpPower, function(number)
    lp.character.Humanoid.JumpPower = number
end)

Zeouronic.switch("Joint method", "Main", function(bool)
    djm = bool
end,"Kills droids using BreakJoints()")

Zeouronic.button("Kill droids", "Main", function()
    game.Workspace.Gravity = 0
	local currentroom = game.Workspace:FindFirstChild("Room")
	for i,v in pairs(currentroom.Enemies:GetChildren()) do
     	if v:FindFirstChildWhichIsA("Humanoid") and v.Name ~= "Artic Droid" and v.Name ~= "Burner Droid" and v.Name ~= "Circuit Breaker" then
     	if djm then
      		v:BreakJoints()
     	else
      		v.Enemy.Health = 0
        end
     	lp.character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position.x, v.HumanoidRootPart.Position.y +10, v.HumanoidRootPart.Position.z)
      	wait(0.5)
       	end
	end
	game.Workspace.Gravity = 193
end, "Kills all droids in the (current) room")

Zeouronic.switch("Freeze droids", "Main", function(bool)
    fd = bool
    if bool then
        while wait() and fd do
			local currentroom = game.Workspace:FindFirstChild("Room")
			for i,v in pairs(currentroom.Enemies:GetChildren()) do
       			if v:FindFirstChildWhichIsA("Humanoid") then
    				v.Enemy.WalkSpeed = 0
       			end
    		end
  		end
	end
end,"Freezes all droids")

Zeouronic.switch("Anti invis", "Main", function(bool)
    aid = bool
    if bool then
        while wait() and aid do
            local currentroom = game.Workspace:FindFirstChild("Room")
            if currentroom ~= nil then
			for i,v in pairs(currentroom.Enemies:GetChildren()) do
       			if v:FindFirstChildWhichIsA("Humanoid") then
              		for i,p in pairs(v:GetChildren()) do
                    	if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
                         	if p.Transparency == 1 then
                        		p.Transparency = 0.6
                         	end
                        end
                    end
              	end
       		end
     		end
        end
    end
end,"Makes it so Ghost droids wont go invis")

Zeouronic.switch("Auto Kill all", "Main", function(bool)
    aka = bool
    if bool then
        while wait() and aka do
			local currentroom = game.Workspace:FindFirstChild("Room")
   			if currentroom:FindFirstChild("Enemies") then
			for i,v in pairs(currentroom.Enemies:GetChildren()) do
       			if v:FindFirstChildWhichIsA("Humanoid") and v.Name ~= "Artic Droid" and v.Name ~= "Burner Droid" and v.Name ~= "Circuit Breaker" then
    				if djm then
      					v:BreakJoints()
     				else
      					v.Enemy.Health = 0
        			end
       			end
    		end
  			end
  		end
	end
end,"Kills all droids automatically")

Zeouronic.switch("Anti crystal", "Room", function(bool)
    kac = bool
    if bool then
        while wait() and kac do
            local currentroom = game.Workspace:FindFirstChild("Room")
			for i,v in pairs(currentroom:GetChildren()) do
        		if v.Name == "Crystal" then
              		if v:FindFirstChildWhichIsA("Humanoid") then
                    	v:FindFirstChildWhichIsA("Humanoid").Health = 0
                    end
                end
        	end
        end
    end
end,"Kills all crystals in the current room")

Zeouronic.switch("Anti bullets", "Main", function()
    abd = bool
end,"Destroys all bullets in the game")

Zeouronic.switch("Auto Click", "Room", function(bool)
    akb = bool
    if bool then
        while wait(0.1) and akb do
            local currentroom = game.Workspace:FindFirstChild("Room")
            if currentroom ~= nil then
            if not currentroom:FindFirstChild("VaultTable") then
            	for i,v in pairs(currentroom.Enemies:GetChildren()) do
            		if v.Name == "Button" and v:FindFirstChild("ClickDetector") then
                		fireclickdetector(v.ClickDetector)
                	end
            	end
        	end
     		end
        end
    end
end,"Auto Clicks buttons in the current room.")

Zeouronic.switch("Anti Lava", "Room", function(bool)
    alr = bool
    if bool then
        while wait(0.1) and alr do
            local currentroom = game.Workspace:FindFirstChild("Room")
            for i,v in pairs(currentroom:GetDescendants()) do
            	if v.Name == "Lava" or v.Name == "Sand" or v.Name == "Acid" or v.Name == "Water" or v.Name == "Killer" then
                	if not v:FindFirstChild("Anti Damage") then
                    	local part = Instance.new("Part")
                    	part.Size = Vector3.new(v.Size.x +0.8, v.Size.y +0.8, v.Size.z +0.8)
                     	part.Position = Vector3.new(v.Position.x, v.Position.y +0.7, v.Position.z)
                      	part.Transparency = 1
                       	part.Anchored = true
                        part.Parent = v
                        part.Name = "Anti Damage"
                        part.Shape = v.Shape
                       	
                        if v.Name == "Lava" or v.Name == "Acid" then
                            part.Size = Vector3.new(v.Size.x +2.5, v.Size.y +2.5, v.Size.z +2.5)
                        end
                    end
                end
            end
        end
    end
end,"Makes it so Lava/Sand/Acid/Water doesnt damage you")

Zeouronic.switch("Auto Grab", "Room", function(bool)
	agci = bool
    if bool then
        while wait(0.1) and agci do
            local currentroom = game.Workspace:FindFirstChild("Room")
            
            for i,v in pairs(game.Workspace:GetChildren()) do
                if v.Name == "Circuit" or v.Name == "BigCircuit" then
                	v.Position = lp.character.HumanoidRootPart.Position
                	v.CanCollide = false
                	wait(0.02)
                end
            end
        	for i,v in pairs(currentroom:GetDescendants()) do
                if v.Name == "Circuit" or v.Name == "BigCircuit" then
                	v.Position = lp.character.HumanoidRootPart.Position
                	v.CanCollide = false
                	wait(0.02)
                end
            end
        
        	for i,v in pairs(currentroom:GetDescendants()) do
            	if v:IsA("Tool") then
                	lp.character.Humanoid:EquipTool(v)
                end
            end
            
            if currentroom:FindFirstChild("Handle") then
                currentroom:FindFirstChild("Handle").CanCollide = false
                currentroom:FindFirstChild("Handle").Position = lp.character.HumanoidRootPart.Position
            end
    	end
    end
end,"Auto grabs Items/Circuits in the room")
    

Zeouronic.button("Make Day", "World", function()
	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").FogEnd = 999999
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(235, 235, 235)
end)

Zeouronic.switch("Anti Void", "Room", function(bool)
    antivoid.CanCollide = bool
end,"Makes it so u dont get damaged by The void.")

game:GetService("RunService").Stepped:Connect(function()
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v.Name == "Bullet" then
        	v:Destroy()
    	end
    end
end)