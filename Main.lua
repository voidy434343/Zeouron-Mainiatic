for i,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "ProjectZeouron" then
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

local SupportedGames = {
    {
        ID = 6933626061,
        GOTOID = 6933626061,
        GameName = "Tlk Prison",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Tlk%20prison%20obf.txt'))()
        end
    },
	{
        ID = 6312903733,
        GOTOID = 5561268850,
        GameName = "RGD",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/RGD.lua'))()
        end
    },
	{
        ID = 14052406783,
        GOTOID = 14052406783,
        GameName = "Tlk remake",
        Script = function() 
            loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Tlk%20Prison%20RS.lua'))()
        end
    }
}

Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Icons"))()

local function Round(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

local TweenService = game:GetService("TweenService")
lp = game.Players.LocalPlayer
plr = lp
local Mouse = plr:GetMouse()
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));
local CANSWITCH = true
local ID = game.PlaceId
local FLYING = false
local cmdlp = lp
local cmdm = plr:GetMouse()
local LastCf = lp.character.HumanoidRootPart.CFrame

setdrag = function(ui)
    local gui = ui

local dragging
local dragInput
local dragStart
local startPos
local WILLDRAG = true

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8); -- // The speed of the UI darg.
function Update(dt)
    if WILLDRAG then
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
 	end
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)
end

wait(1)

local G = Instance.new("ScreenGui")
G.ResetOnSpawn = false
G.Enabled = true
G.Name = "ProjectZeouron"
G.Parent = game.CoreGui
G.ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets

information = function(string, func)
    for i,v in pairs(G:GetChildren()) do
        if v.Name == "info" then
        	v:Destroy()
        end
    end
	local TextLabel = Instance.new("TextButton")
	TextLabel.Parent = G
	TextLabel.Size = UDim2.new(1,0,0,25)
	TextLabel.Position = UDim2.new(0,0,0,660)
	TextLabel.TextScaled = true
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor3 = Data.Color
	TextLabel.Name = "info"
	TextLabel.Text = string
 	TextLabel.TextStrokeTransparency = 0
  	TextLabel.TextStrokeColor3 = Data.DarkC
   	TextLabel.Font = Data.Font
    
    if func then
        TextLabel.MouseButton1Click:Connect(function()
            func()
        end)
    end
 
 	spawn(function()
 	local msg = ""
 	for i,v in pairs(string.split(string,"")) do
    	msg = msg..v
     	TextLabel.Text = msg
      	wait(0.02)
    end
	wait(3.5)
 	for i,v in pairs(string.split(string,"")) do
     	Split = string.split(TextLabel.Text,"")
        table.remove(Split, #Split)
        rmsg = ""
        for i,v in pairs(Split) do
            rmsg = rmsg..v
     		TextLabel.Text = rmsg
        end
    	
      	wait(0.01)
    end
	end)
	for i,v in pairs(G:GetChildren()) do
        if v.Name == "info" then
        	v:Destroy()
        end
    end
end

information("Join our discord!! "..Data.DiscordLink, function()
    setclipboard(tostring(Data.DiscordLink))
end)

local popup = function(type, message, ExtraData, func)
    if type == "Yes-No" then
        local frame = Instance.new("ScrollingFrame")
        frame.Parent = G
        frame.Position = UDim2.new(0,444,0,245)
        frame.Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)
        frame.Size = UDim2.new(0,405,0,230)
        frame.Size = UDim2.new(0,405,0,0)
        frame.BackgroundColor3 = Data.BgC
     	frame.Active = true 
		frame.Selectable = true
  		frame.ZIndex = 25
    	frame.ScrollBarImageColor3 = Data.Color
		frame.ScrollBarImageTransparency = 0
		frame.CanvasSize = UDim2.new(0,0,0,0)
        setdrag(frame)
        
        local TweenInf0 = TweenInfo.new(0.5) 
		local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset -122.5)})
		PlayThis:Play()
  
  		local TweenInf0 = TweenInfo.new(0.5) 
		local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,230)})
		PlayThis:Play()
        
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Position = UDim2.new(0,10,0,10)
        label.Size = UDim2.new(0,365 +20,0,100)
        label.BackgroundTransparency = 1
        label.Text = message
        label.Font = Data.Font
        label.TextColor3 = Data.Color
        label.TextScaled = true
        label.ZIndex = 26
        
        local yes = Instance.new("TextButton")
        yes.Parent = frame
        yes.Position = UDim2.new(0,5,0,145)
        yes.Size = UDim2.new(0,385 /2,0,75)
        yes.BackgroundColor3 = Data.DarkC
        yes.Text = "Yes"
        yes.Font = Data.Font
        yes.TextColor3 = Data.Color
        yes.TextScaled = true
        yes.ZIndex = 26
        
        local no = Instance.new("TextButton")
        no.Parent = frame
        no.Position = UDim2.new(0,15 +192.5,0,145)
        no.Size = UDim2.new(0,385 /2,0,75)
        no.BackgroundColor3 = Data.DarkC
        no.Text = "No"
        no.Font = Data.Font
        no.TextColor3 = Data.Color
        no.TextScaled = true
        no.ZIndex = 26
        
        Round(no, 0.05)
        Round(yes, 0.05)
        
        yes.MouseButton1Click:Connect(function()
            local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)})
			PlayThis:Play()
  
  			local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,0)})
			PlayThis:Play()
   			wait(0.5)
      		frame:Destroy()
            func()
        end)
    
    	no.MouseButton1Click:Connect(function()
            local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Position = UDim2.new(0,frame.Position.X.Offset,0,frame.Position.Y.Offset +122.5)})
			PlayThis:Play()
  
  			local TweenInf0 = TweenInfo.new(0.5) 
			local PlayThis = TweenService:Create(frame, TweenInf0, {Size = UDim2.new(0,405,0,0)})
			PlayThis:Play()
   			wait(0.5)
      		frame:Destroy()
        end)
    end
	if type == "ButtonSelection" then
     	local G = Instance.new("ScreenGui")
		G.ResetOnSpawn = false
		G.Enabled = true
		G.Name = "ProjectZeouron Popup #"..tostring(math.random(-3650, 3650))
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
  		setdrag(Main)
    
    	TABpos = 22
    	for i,v in pairs(ExtraData) do
        	if v[1] == "Button" then
             	local Tab = Instance.new("TextButton")
             
            	Tab.Position = UDim2.new(0,TABpos,0,390 -55 -17)
				Tab.Size = UDim2.new(0,96.25,0,55)
				Tab.Parent = Main
				Tab.BackgroundColor3 = Data.DarkC
				Tab.ZIndex = 87
				Tab.Text = v[2]
				Tab.TextScaled = true
    			Tab.Font = Data.Font
       			Tab.TextColor3 = Data.Color

				local TabB = Instance.new("Frame")

				TabB.Position = UDim2.new(0,-2,0,-2)
				TabB.Size = UDim2.new(0,96.25 +4,0,59)
				TabB.Parent = Tab
				TabB.BackgroundColor3 = Data.Color
				TabB.ZIndex = 86.5
    
    			Round(Tab, 0.05)
				Round(TabB, 0.05)
    
    			Tab.MouseButton1Click:Connect(function()
           			v[3]()
          		end)
    
    			TABpos += 112.25
            end
        end
    
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
        label.Text = message
        label.Font = Data.Font
        label.TextColor3 = Data.Color
        label.ZIndex = 87
        label.TextYAlignment = "Top"
        label.TextScaled = true
    
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
    end
end

local loadingG = loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/Zeouron-Mainiatic/main/Main%20loading.lua'))()

local Round = function(UI,num)
    local round = Instance.new("UICorner")
    round.Parent = UI
    round.CornerRadius = UDim.new(num,num)
end

local Main = Instance.new("ScrollingFrame")

Main.Position = UDim2.new(0,339,0,185)
Main.Position = UDim2.new(0,Main.Position.X.Offset,0,Main.Position.Y.Offset +230)
Main.Size = UDim2.new(0,620,0,460)
Main.Size = UDim2.new(0,620,0,0)
Main.Parent = G
Main.BackgroundColor3 = Data.BgC
Main.ZIndex = 6
Main.ScrollBarImageColor3 = Data.Color
Main.ScrollBarImageTransparency = 0
Main.CanvasSize = UDim2.new(0,0,0,0)

local Iconz = Instance.new("ImageButton")

Iconz.Position = UDim2.new(0.5,0,0,0)
Iconz.Size = UDim2.new(0.030 *1.45,0,0.05 *1.45,0)
Iconz.BackgroundTransparency = 1
Iconz.Parent = G
Iconz.Image = "http://www.roblox.com/asset/?id=16688349183"
Iconz.Draggable = true
Iconz.Active = true 
Iconz.Selectable = true
Iconz.ZIndex = math.huge

local back1 = Instance.new("ImageButton")

back1.Position = UDim2.new(-0.12,0,-0.12,0)
back1.Size = UDim2.new(1 *1.25,0,1 *1.25,0)
back1.BackgroundTransparency = 1
back1.Parent = Iconz
back1.Image = "http://www.roblox.com/asset/?id=16446446084"
back1.ZIndex = 653

local Texto = Instance.new("TextButton")

Texto.Position = UDim2.new(0,0,0,0)
Texto.Size = UDim2.new(0,620,0,30)
Texto.Parent = Main
Texto.BackgroundTransparency = 1
Texto.ZIndex = 12
Texto.Text = "Zeouron"
Texto.Font = Data.Font
Texto.TextColor3 = Data.Color
Texto.TextScaled = true

local Down = Instance.new("Frame")

Down.Position = UDim2.new(0,245,0,30)
Down.Size = UDim2.new(0,125,0,4)
Down.Parent = Main
Down.BackgroundColor3 = Data.Color
Down.BorderColor3 = Data.Color
Down.ZIndex = 7

TabSele = nil

Round(Exec, 0.05)
Round(ExecB, 0.05)

local Tabs = Instance.new("Frame")
Tabs.Size = UDim2.new(0,0,0,0)
Tabs.BackgroundTransparency = 1
Tabs.Parent = Main

local ZEOTAB = Instance.new("Frame")
ZEOTAB.Size = UDim2.new(0,0,0,0)
ZEOTAB.BackgroundTransparency = 1
ZEOTAB.Parent = Tabs

TABpos = 22
addtab = function(THEPLACE, Image, Hover)
local Tab = Instance.new("ImageButton")

Tab.Position = UDim2.new(0,TABpos,0,388)
Tab.Size = UDim2.new(0,55,0,55)
Tab.Parent = ZEOTAB
Tab.BackgroundColor3 = Data.DarkC
Tab.ZIndex = 7
Tab.Image = Image
Tab.ImageColor3 = Data.Color

local TabB = Instance.new("Frame")

TabB.Position = UDim2.new(0,-2,0,-2)
TabB.Size = UDim2.new(0,59,0,59)
TabB.Parent = Tab
TabB.BackgroundColor3 = Data.Color
TabB.ZIndex = 6.5

local HoverText = Instance.new("TextLabel")

HoverText.Position = UDim2.new(0,-27.5,0,-37)
HoverText.Position = UDim2.new(0,-27.5 +55,0,-37)
HoverText.Size = UDim2.new(0,110,0,23)
HoverText.Size = UDim2.new(0,0,0,23)
HoverText.Parent = Tab
HoverText.BackgroundColor3 = Data.DarkerC
HoverText.ZIndex = 7
HoverText.Text = Hover
HoverText.Font = Data.Font
HoverText.TextColor3 = Data.Color
HoverText.TextScaled = true

Round(Tab, 0.05)
Round(TabB, 0.05)
Round(HoverText, 0.05)

Tab.MouseButton1Click:Connect(function()
    if TabSele ~= THEPLACE and CANSWITCH then
    CANSWITCH = false
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(Down, TweenInf0, {Size = UDim2.new(0,0,0,4)})
	PlayThis:Play()
 	local num = 125 /2
 	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(Down, TweenInf0, {Position = UDim2.new(0,245 +num,0,30)})
	PlayThis:Play()
 
 	local random = math.random(1,2)
  	SETDAPOS = 620
   	SETDAPOSNEW = -620
  	if random == 1 then
       SETDAPOS = 620
       SETDAPOSNEW = -620
    end
	if random == 2 then
       SETDAPOS = -620
       SETDAPOSNEW = 620
    end
    	
  	local oldTabSele = TabSele
  	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(oldTabSele, TweenInf0, {Position = UDim2.new(0,SETDAPOS,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()

    TabSele = THEPLACE
    THEPLACE.Visible = true
    THEPLACE.Position = UDim2.new(0,SETDAPOSNEW,0,0)
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(THEPLACE, TweenInf0, {Position = UDim2.new(0,0,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()
    for i,v in pairs(Tabs:GetChildren()) do
        if v ~= THEPLACE and v ~= oldTabSele then
        	v.Visible = false
        end
    end
	wait(0.3)
	Down.Visible = false
 	oldTabSele.Visible = false
  	oldTabSele.Position = UDim2.new(0,0,0,0)
   	CANSWITCH = true
   	end
end)

Tab.MouseEnter:Connect(function()
    local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Size = UDim2.new(0,110,0,23)})
	PlayThis:Play()
 	local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Position = UDim2.new(0,-27.5,0,-37)})
	PlayThis:Play()
end)

Tab.MouseLeave:Connect(function()
    local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Size = UDim2.new(0,0,0,23)})
	PlayThis:Play()
 	local TweenInf0 = TweenInfo.new(0.27) 
	local PlayThis = TweenService:Create(HoverText, TweenInf0, {Position = UDim2.new(0,-27.5 +55,0,-37)})
	PlayThis:Play()
end)

TABpos = TABpos +69
end

local SCRIPTHUB = Instance.new("Frame")
SCRIPTHUB.Size = UDim2.new(0,0,0,0)
SCRIPTHUB.BackgroundTransparency = 1
SCRIPTHUB.Parent = Tabs
SCRIPTHUB.Visible = false

-- 30

local getfakeasset = getcustomasset or getsynasset

function _if(a, b, c)
	if a then return b else return c end
end
function fetchScripts(query, page)
	page = page or 1
	query = game.HttpService:UrlEncode(query)
	
	local url = _if(query == "", "https://www.scriptblox.com/api/script/fetch?page="..tostring(page), "https://scriptblox.com/api/script/search?q="..query.."&max=100&mode=free&page=".. tostring(page))
	local req = game.HttpService:JSONDecode(game:HttpGetAsync(url)).result
	
	return req.scripts
end
function loadImage(url, id, ispfp)
	ispfp = _if(type(ispfp) == "boolean", ispfp, false)
	
	local path = "ScriptBlox/Searcher/ImageCache/" .._if(ispfp, "ProfilePictures/", "Scripts/")..id..".png"
	
	if table.find(string.split(url, "/"), "user-default.png") then
		path = "ScriptBlox/Searcher/ImageCache/ProfilePictures/user-default.png"
	end
	
	if isfile(path) then
		return getfakeasset(path)
	else
		local img = game:HttpGetAsync(url)
		writefile(path, img)
		
		return getfakeasset(path)
	end
end
function fixScript(scriptObj)
	if not scriptObj["script"] or not scriptObj["owner"] or not scriptObj["features"] then
		local cacheObj = cache[scriptObj["_id"]]
		if cacheObj then
			scriptObj["script"] = _if(scriptObj["script"], scriptObj["script"], cacheObj.script)
			scriptObj["features"] = _if(scriptObj["features"], scriptObj["features"], cacheObj.features)
			scriptObj["owner"] = _if(scriptObj["owner"], scriptObj["owner"], cacheObj.owner)
		else
			local req = game.HttpService:JSONDecode(game:HttpGetAsync("https://www.scriptblox.com/api/script/".. scriptObj.slug)).script
			scriptObj["script"] = _if(scriptObj["script"], scriptObj["script"], req.script)
			scriptObj["features"] = _if(scriptObj["features"], scriptObj["features"], req.features)
			scriptObj["owner"] = _if(scriptObj["owner"], scriptObj["owner"], req.owner)
			
			cache[scriptObj["_id"]] = req
		end
	end
	return scriptObj
end

local SelectFrame = Instance.new("Frame")

SelectFrame.Position = UDim2.new(0,15,0,30)
SelectFrame.Size = UDim2.new(0,95 *2 +7 +30,0,50)
SelectFrame.Parent = SCRIPTHUB
SelectFrame.BackgroundColor3 = Data.DarkerC
SelectFrame.ZIndex = 34

local SelectBlox = Instance.new("TextButton")

SelectBlox.Position = UDim2.new(0,15 -7,0,2.5)
SelectBlox.Size = UDim2.new(0,95,0,45)
SelectBlox.Parent = SelectFrame
SelectBlox.BackgroundColor3 = Data.DarkC
SelectBlox.ZIndex = 35
SelectBlox.Text = "Blox"
SelectBlox.Font = Data.Font
SelectBlox.TextColor3 = Data.Color
SelectBlox.TextScaled = true

local SelectZeo = Instance.new("TextButton")

SelectZeo.Position = UDim2.new(0,15 +95 +14,0,2.5)
SelectZeo.Size = UDim2.new(0,95,0,45)
SelectZeo.Parent = SelectFrame
SelectZeo.BackgroundColor3 = Data.DarkC
SelectZeo.ZIndex = 35
SelectZeo.Text = "Bulit-In"
SelectZeo.Font = Data.Font
SelectZeo.TextColor3 = Data.Color
SelectZeo.TextScaled = true

Round(SelectBlox,0.05)
Round(SelectZeo,0.05)
Round(SelectFrame,0.05)

local SCRIPTHUBTABS = Instance.new("Frame")
SCRIPTHUBTABS.Size = UDim2.new(0,0,0,0)
SCRIPTHUBTABS.BackgroundTransparency = 1
SCRIPTHUBTABS.Parent = SCRIPTHUB

local BLOXTAB = Instance.new("Frame")
BLOXTAB.Size = UDim2.new(0,0,0,0)
BLOXTAB.BackgroundTransparency = 1
BLOXTAB.Parent = SCRIPTHUBTABS

local ZEOSCRTAB = Instance.new("Frame")
ZEOSCRTAB.Size = UDim2.new(0,0,0,0)
ZEOSCRTAB.BackgroundTransparency = 1
ZEOSCRTAB.Parent = SCRIPTHUBTABS
ZEOSCRTAB.Visible = false

local ScrollScrZ = Instance.new("ScrollingFrame")

ScrollScrZ.Position = UDim2.new(0,15,0,45)
ScrollScrZ.Size = UDim2.new(0,570 -15,0,460)
ScrollScrZ.Parent = ZEOSCRTAB
ScrollScrZ.BackgroundTransparency = 1
ScrollScrZ.BorderColor3 = Data.BgC
ScrollScrZ.ZIndex = 11
ScrollScrZ.ScrollBarImageColor3 = Data.Color
ScrollScrZ.ScrollBarImageTransparency = 0
ScrollScrZ.CanvasSize = UDim2.new(0,0,0,0)

scripts = {}

table.insert(scripts, {
    title = "Zeouron cmd",
    owner = "Zeouron",
    script = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/voidy434343/z_script/main/ZeouronCom.lua'))() 
    end
})

table.insert(scripts, {
    title = "Dex v2",
    owner = "IDFK?",
    script = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Dex-V2-10310"))()
    end
})

table.insert(scripts, {
    title = "Nameless admin",
    owner = "IDFK?",
    script = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-no-byfron-ui-11288"))()
    end
})

XPOSADD = 70
for i,v in pairs(scripts) do
	local Script = Instance.new("Frame")

	Script.Position = UDim2.new(0,0,0,XPOSADD)
	Script.Size = UDim2.new(0,570,0,135)
	Script.Parent = ScrollScrZ
	Script.BackgroundColor3 = Data.DarkC
	Script.ZIndex = 12

	local TextScript = Instance.new("TextButton")

	TextScript.Position = UDim2.new(0,15,0,15)
	TextScript.Size = UDim2.new(0,570,0,45)
	TextScript.Parent = Script
	TextScript.BackgroundTransparency = 1
	TextScript.ZIndex = 13
	TextScript.Text = v.title
	TextScript.Font = Data.Font
	TextScript.TextColor3 = Data.Color
	TextScript.TextScaled = true
	TextScript.TextXAlignment = "Left"

	local TextOwner = Instance.new("TextButton")

	TextOwner.Position = UDim2.new(0,15,0,60)
	TextOwner.Size = UDim2.new(0,285,0,22)
	TextOwner.Parent = Script
	TextOwner.BackgroundTransparency = 1
	TextOwner.ZIndex = 13
	TextOwner.Text = "By: "..v.owner
	TextOwner.Font = Data.Font
	TextOwner.TextColor3 = Data.Color
	TextOwner.TextScaled = true
	TextOwner.TextXAlignment = "Left"
 
 	local TextExecute = Instance.new("TextButton")

	TextExecute.Position = UDim2.new(0,570 -255,0,135 -34)
	TextExecute.Size = UDim2.new(0,255,0,34)
	TextExecute.Parent = Script
	TextExecute.BackgroundTransparency = 1
	TextExecute.ZIndex = 13
	TextExecute.Text = "Execute"
	TextExecute.Font = Data.Font
	TextExecute.TextColor3 = Data.Color
	TextExecute.TextScaled = true
 
 	TextExecute.MouseButton1Click:Connect(function()
    	v.script()
    end)

	Round(Script, 0.07)
 	
	XPOSADD += 165
 	ScrollScrZ.CanvasSize = UDim2.new(0,0,0,XPOSADD)
end

SCRIPTHUBSELE = BLOXTAB

SelectBlox.MouseButton1Click:Connect(function()
    if SCRIPTHUBSELE == ZEOSCRTAB then
        SCRIPTHUBSELE = BLOXTAB
        BLOXTAB.Visible = true
        ZEOSCRTAB.Visible = false
    end
end)

SelectZeo.MouseButton1Click:Connect(function()
    if SCRIPTHUBSELE == BLOXTAB then
        SCRIPTHUBSELE = ZEOSCRTAB
        BLOXTAB.Visible = false
        ZEOSCRTAB.Visible = true
    end
end)

local SearchBox = Instance.new("TextBox")

SearchBox.Position = UDim2.new(0,15,0,35 +55)
SearchBox.Size = UDim2.new(0,570,0,45)
SearchBox.Parent = BLOXTAB
SearchBox.BackgroundColor3 = Data.DarkerC
SearchBox.ZIndex = 20
SearchBox.Text = ""
SearchBox.Font = Data.Font
SearchBox.TextColor3 = Data.Color
SearchBox.TextScaled = true
SearchBox.TextXAlignment = "Left"
SearchBox.PlaceholderText = "Search Scriptblox"
SearchBox.PlaceholderColor3 = Data.DarkC

local defaultz = 45 +65 +55

local ScrollScr = Instance.new("ScrollingFrame")

ScrollScr.Position = UDim2.new(0,15,0,defaultz)
ScrollScr.Size = UDim2.new(0,570 -15,0,460)
ScrollScr.Parent = BLOXTAB
ScrollScr.BackgroundTransparency = 1
ScrollScr.BorderColor3 = Data.BgC
ScrollScr.ZIndex = 11
ScrollScr.ScrollBarImageColor3 = Data.Color
ScrollScr.ScrollBarImageTransparency = 0
ScrollScr.CanvasSize = UDim2.new(0,0,0,0)

local Loadscripts = function(query)
    
    for i,v in pairs(ScrollScr:GetChildren()) do
        v:Destroy()
    end

local scripts = fetchScripts(query, 1)
XPOSADD = defaultz
for i,v in pairs(scripts) do
    local v = fixScript(v)
    
	local Script = Instance.new("Frame")

	Script.Position = UDim2.new(0,0,0,XPOSADD)
	Script.Size = UDim2.new(0,570,0,135)
	Script.Parent = ScrollScr
	Script.BackgroundColor3 = Data.DarkC
	Script.ZIndex = 12

	local TextScript = Instance.new("TextButton")

	TextScript.Position = UDim2.new(0,15,0,15)
	TextScript.Size = UDim2.new(0,570,0,45)
	TextScript.Parent = Script
	TextScript.BackgroundTransparency = 1
	TextScript.ZIndex = 13
	TextScript.Text = v.title
	TextScript.Font = Data.Font
	TextScript.TextColor3 = Data.Color
	TextScript.TextScaled = true
	TextScript.TextXAlignment = "Left"

	local TextOwner = Instance.new("TextButton")

	TextOwner.Position = UDim2.new(0,15,0,60)
	TextOwner.Size = UDim2.new(0,285,0,22)
	TextOwner.Parent = Script
	TextOwner.BackgroundTransparency = 1
	TextOwner.ZIndex = 13
	TextOwner.Text = "By: "..v.owner.username
	TextOwner.Font = Data.Font
	TextOwner.TextColor3 = Data.Color
	TextOwner.TextScaled = true
	TextOwner.TextXAlignment = "Left"
 
  	local TextGame = Instance.new("TextButton")

	TextGame.Position = UDim2.new(0,15 +285,0,60)
	TextGame.Size = UDim2.new(0,285,0,22)
	TextGame.Parent = Script
	TextGame.BackgroundTransparency = 1
	TextGame.ZIndex = 13
	TextGame.Text = "| "..v.game.name
	TextGame.Font = Data.Font
	TextGame.TextColor3 = Data.Color
	TextGame.TextScaled = true
	TextGame.TextXAlignment = "Left"
 
 	local TextExecute = Instance.new("TextButton")

	TextExecute.Position = UDim2.new(0,570 -255,0,135 -34)
	TextExecute.Size = UDim2.new(0,255,0,34)
	TextExecute.Parent = Script
	TextExecute.BackgroundTransparency = 1
	TextExecute.ZIndex = 13
	TextExecute.Text = "Execute"
	TextExecute.Font = Data.Font
	TextExecute.TextColor3 = Data.Color
	TextExecute.TextScaled = true
 
 	TextExecute.MouseButton1Click:Connect(function()
    	loadstring(v.script)()
    end)

	Round(Script, 0.07)
 	
	XPOSADD += 165
 	ScrollScr.CanvasSize = UDim2.new(0,0,0,XPOSADD)
end
end

Loadscripts("")

SearchBox.FocusLost:Connect(function()
    Loadscripts(SearchBox.Text)
end)

local GAMES = Instance.new("Frame")
GAMES.Size = UDim2.new(0,0,0,0)
GAMES.BackgroundTransparency = 1
GAMES.Parent = Tabs
GAMES.Visible = false

local MAINGAMES = Instance.new("Frame")
MAINGAMES.Size = UDim2.new(0,0,0,0)
MAINGAMES.BackgroundTransparency = 1
MAINGAMES.Parent = GAMES
MAINGAMES.Visible = true

local TABGAMES = Instance.new("Frame")
TABGAMES.Size = UDim2.new(0,0,0,0)
TABGAMES.BackgroundTransparency = 1
TABGAMES.Parent = GAMES
TABGAMES.Visible = false

addtab(SCRIPTHUB, Icons.superscript, "ScriptHub")

SUPPORTPOS = 12 +34
local GamesLib = {
    NewTab = function(name)
                
        local Tab = Instance.new("Frame")
		Tab.Size = UDim2.new(0,0,0,0)
		Tab.BackgroundTransparency = 1
		Tab.Parent = TABGAMES
		Tab.Visible = false
        
    local BUTTON = Instance.new("TextLabel")

	BUTTON.Position = UDim2.new(0,95,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = MAINGAMES
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = name
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    local arrow = Instance.new("TextButton")
    
    arrow.Position = UDim2.new(0,620 -190 -40,0,0)
	arrow.Size = UDim2.new(0,40,0,40)
	arrow.Parent = BUTTON
	arrow.BackgroundTransparency = 1
	arrow.ZIndex = 8.2
 	arrow.Text = ">"
  	arrow.Font = Data.Font
   	arrow.TextScaled = true
    arrow.TextColor3 = Data.Color
    
    local Back = Instance.new("TextButton")
    
    Back.Position = UDim2.new(0,0,0,30)
	Back.Size = UDim2.new(0,40,0,40)
	Back.Parent = Tab
	Back.BackgroundTransparency = 1
	Back.ZIndex = 8.2
 	Back.Text = "<"
  	Back.Font = Data.Font
   	Back.TextScaled = true
    Back.TextColor3 = Data.Color
    
    arrow.MouseButton1Click:Connect(function()
        if GAME5HESTAB ~= Tab then
        	Tab.Visible = true
        	TABGAMES.Visible = true
        	MAINGAMES.Visible = false
        	for i,v in pairs(TABGAMES:GetChildren()) do
            	if v ~= Tab then
                	v.Visible = false
            	end
        	end
    	end
    end)

	Back.MouseButton1Click:Connect(function()
        TABGAMES.Visible = false
        MAINGAMES.Visible = true
    end)
    
    SUPPORTPOS = SUPPORTPOS +45
    
    Round(BUTTON, 0.07)
    
    local TABSHIT = 12 +34
    local funcs = {
        NewButton = function(Name, func)
            local BUTTON = Instance.new("TextButton")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		BUTTON.MouseButton1Click:Connect(function()
            	func()
            end)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewSlider = function(Name, func)
            local BUTTON = Instance.new("TextButton")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewLabel = function(Name)
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,620 -190,0,27)
			BUTTON.Parent = Tab
			BUTTON.BackgroundTransparency = 1
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		Round(BUTTON, 0.05)
      
      		TABSHIT = TABSHIT +27
        end,
    
    	NewSwitch = function(Name, func, Onoff) 
         	local onoff = Onoff
         	if onoff == nil then
            	onoff = false
            end
         
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,430,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      
      		local SWITCHER = Instance.new("TextButton")

			SWITCHER.Position = UDim2.new(0,400,0,7)
			SWITCHER.Size = UDim2.new(0,25,0,25)
			SWITCHER.Parent = BUTTON
   			if onoff then
				SWITCHER.BackgroundColor3 = Data.Color
    		else
      			SWITCHER.BackgroundColor3 = Data.DarkC
         	end
			SWITCHER.ZIndex = 8
 			SWITCHER.Text = ""
      
      		Round(BUTTON, 0.05)
        	Round(SWITCHER, 0.05)
      
      		local switcherbool = onoff
        
      		SWITCHER.MouseButton1Click:Connect(function()
            	if switcherbool then
                 	SWITCHER.BackgroundColor3 = Data.DarkC
                 	switcherbool = false
            		func(switcherbool)
              	else
               		SWITCHER.BackgroundColor3 = Data.Color
               		switcherbool = true
            		func(switcherbool)
               	end
            end)
      
      		TABSHIT = TABSHIT +45
        end,
    	NewTextBox = function(Name, func) 
            local BUTTON = Instance.new("TextLabel")

			BUTTON.Position = UDim2.new(0,95,0,TABSHIT)
			BUTTON.Size = UDim2.new(0,430,0,40)
			BUTTON.Parent = Tab
			BUTTON.BackgroundColor3 = Data.DarkerC
			BUTTON.ZIndex = 8
 			BUTTON.Text = Name
  			BUTTON.Font = Data.Font
   			BUTTON.TextScaled = true
   			BUTTON.TextColor3 = Data.Color
      		BUTTON.TextXAlignment = "Left"
      
      		local SWITCHER = Instance.new("TextBox")

			SWITCHER.Position = UDim2.new(0,215,0,0)
			SWITCHER.Size = UDim2.new(0,215,0,40)
			SWITCHER.Parent = BUTTON
			SWITCHER.BackgroundColor3 = Data.Color
			SWITCHER.ZIndex = 8
 			SWITCHER.Text = ""
    		SWITCHER.TextColor3 = Data.DarkC
 			SWITCHER.TextScaled = true
    		SWITCHER.ZIndex = 10
    		SWITCHER.Text = ""
    		SWITCHER.Font = Data.Font
       		SWITCHER.ClearTextOnFocus = false
      
      		Round(BUTTON, 0.05)
        	Round(SWITCHER, 0.05)
      
      		SWITCHER.FocusLost:Connect(function(t)
            	func(SWITCHER.Text)
            end)
      
      		TABSHIT = TABSHIT +45
        end
    }
	return funcs
    end
}

function fly(speed)
	 local controlModule = require(game.Players.LocalPlayer.PlayerScripts:WaitForChild('PlayerModule'):WaitForChild("ControlModule"))
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 
	 Signal1 = game.Players.LocalPlayer.CharacterAdded:Connect(function(NewChar)
	 local bv = Instance.new("BodyVelocity")
	 bv.Name = "VelocityHandler"
	 bv.Parent = NewChar:WaitForChild("Humanoid").RootPart
	 bv.MaxForce = Vector3.new(0,0,0)
	 bv.Velocity = Vector3.new(0,0,0)
	 
	 local bg = Instance.new("BodyGyro")
	 bg.Name = "GyroHandler"
	 bg.Parent = NewChar.HumanoidRootPart
	 bg.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 bg.P = 1000
	 bg.D = 50
	 end)
	 
	 local camera = game.Workspace.CurrentCamera
	 
	 Signal2 = game:GetService"RunService".RenderStepped:Connect(function()
	 if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.RootPart and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("VelocityHandler") and game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("GyroHandler") then
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.MaxForce = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.MaxTorque = Vector3.new(9e9,9e9,9e9)
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
	 
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler.CFrame = camera.CoordinateFrame
	 local direction = controlModule:GetMoveVector()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = Vector3.new()
	 if direction.X > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.X < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity + camera.CFrame.RightVector*(direction.X*speed)
	 end
	 if direction.Z > 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 if direction.Z < 0 then
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity = game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler.Velocity - camera.CFrame.LookVector*(direction.Z*speed)
	 end
	 end
	 end)
 end
 
 function unfly()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.VelocityHandler:Destroy()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.GyroHandler:Destroy()
	 game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	 Signal1:Disconnect()
	 Signal2:Disconnect()
 end

local mods = GamesLib.NewTab("Player Modifications")
mods.NewLabel("Credits")
mods.NewButton("Fly: Nameless", function() end)

mods.NewLabel("Fly")
mods.NewSwitch("Fly", function(bool) 
    _G.Fly = bool
    if _G.Fly then
    	lp.Character.Humanoid.PlatformStand = false
        fly(45)
    else
    	lp.Character.Humanoid.PlatformStand = false
     	unfly()
    end
end, _G.Fly)

mods.NewLabel("Misc")

mods.NewButton("Die", function() 
    lp.character:BreakJoints()
end)

mods.NewSwitch("TP last", function(bool) 
    _G.tplst = bool
end, _G.tplst)

local Bhop = false
mods.NewSwitch("BHop", function(bool) 
    _G.Bhop = bool
    lp.character.Humanoid:GetPropertyChangedSignal("Jump"):Connect(function()
        if lp.character.Humanoid.Jump == true and _G.Bhop then
        	local vel = lp.character.Humanoid.MoveDirection *50 +lp.character.HumanoidRootPart.Velocity
         	lp.character.HumanoidRootPart.Velocity = vel
     	end
    end)
end, _G.Bhop)

CharDied = function(char)
    if _G.tplst then
		local hum = char:WaitForChild("HumanoidRootPart")
 		LastCf = hum.CFrame
  	end
end

lp.character.Humanoid.Died:Connect(function()
    CharDied(lp.character)
end)

lp.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid")
    if _G.tplst then
    	local hum = char:WaitForChild("HumanoidRootPart")
 		hum.CFrame = LastCf
  	end
    hum.Died:Connect(function()
        CharDied(char)
    end)
end)

local wa = GamesLib.NewTab("Weird Aimbot")

wa.NewLabel("Main")

local MousePos = Drawing.new("Circle")
MousePos.Visible = false
MousePos.Thickness = 2
MousePos.Color = Data.Color
MousePos.Filled = false
MousePos.Radius = 40
MousePos.Position = Vector2.new(0,0)

wa.NewSwitch("Aimbot On", function(bool)
    _G.WAimbot = bool
    if not bool then
        MousePos.Visible = false
    end
end, _G.WAimbot)

game.RunService.RenderStepped:Connect(function()
    if _G.WAimbot then
		local chr = lp.character
        local lowest = math.huge
        local NearestPlayer = {}
        for _,plr in pairs(game:FindFirstChildOfClass("Players"):GetPlayers()) do
            if plr.character then
            	local _,inview = game.Workspace.CurrentCamera:WorldToScreenPoint(plr.character:FindFirstChild("HumanoidRootPart").Position)
            	if plr ~= lp and plr.Character:FindFirstChildOfClass("Humanoid").Health ~= 0 and inview then
                	local distance = plr:DistanceFromCharacter(chr.HumanoidRootPart.Position)
                	if distance < lowest then
                    	lowest = distance
                    	NearestPlayer = {plr}
                	end
           		end
       		end
       end
       for i,v in pairs(NearestPlayer) do
           	local screenPosition, inview = game.Workspace.CurrentCamera:WorldToScreenPoint(v.character:FindFirstChild("HumanoidRootPart").Position)
            if inview then
            	MousePos.Position = Vector2.new(screenPosition.X, screenPosition.Y)
             	MousePos.Visible = true
              	mousemoveabs(screenPosition.X, screenPosition.Y) 
         	else
        		MousePos.Visible = false
         	end
        end
    end
end)

local ms = GamesLib.NewTab("Mobile Aimbot")

ms.NewLabel("Credits")
ms.NewButton("== Dollynho ==", function() end)

ms.NewLabel("Main")

local fov = 0 
local maxDistance = 100
local maxTransparency = 0
if _G.teamCheck == nil then
	_G.teamCheck = false
end

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local Cam = game.Workspace.CurrentCamera
if _G.LockCam == nil then
	_G.LockCam = false
end
if _G.LockCam == nil then
	_G.howmuchup = 0
end

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 2
FOVring.Color = Color3.fromRGB(128, 0, 128)
FOVring.Filled = false
FOVring.Radius = 40
FOVring.Position = Cam.ViewportSize / 2

local function updateDrawings()
    local camViewportSize = Cam.ViewportSize
    FOVring.Position = camViewportSize / 2
end

local function onKeyDown(input)
    if input.KeyCode == Enum.KeyCode.Delete then
        RunService:UnbindFromRenderStep("FOVUpdate")
        FOVring:Remove()
    end
end

UserInputService.InputBegan:Connect(onKeyDown)

local function lookAt(target)
    local lookVector = (target - Cam.CFrame.Position).unit
    local newCFrame = CFrame.new(Cam.CFrame.Position, Cam.CFrame.Position + lookVector)
    Cam.CFrame = newCFrame
end

local function calculateTransparency(distance)
    local maxDistance = fov
    local transparency = (1 - (distance / maxDistance)) * maxTransparency
    return transparency
end

local function isPlayerAlive(player)
    local character = player.Character
    if character and character:FindFirstChild("Humanoid") then
        return character.Humanoid.Health > 0
    end
    return false
end

local function getClosestPlayerInFOV(trg_part)
    local nearest = nil
    local last = math.huge
    local playerMousePos = Cam.ViewportSize / 2
    local localPlayer = Players.LocalPlayer

    for i = 1, #Players:GetPlayers() do
        local player = Players:GetPlayers()[i]
        if player and player ~= localPlayer and (not _G.teamCheck or player.Team ~= localPlayer.Team) then
            if isPlayerAlive(player) then
                local part = player.Character and player.Character:FindFirstChild(trg_part)
                if part then
                    local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                    local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude

                    if distance < last and isVisible and distance < fov and distance < maxDistance then
                        last = distance
                        nearest = player
                    end
                end
            end
        end
    end

    return nearest
end

RunService.RenderStepped:Connect(function()
    updateDrawings()
    if LockCam then
        local v2 = game.Workspace.CurrentCamera.ViewportSize /2
    	mousemoveabs(v2.X, v2.Y +_G.howmuchup)
    end
    local closest = getClosestPlayerInFOV("Head")
    if closest and closest.Character:FindFirstChild("Head") then
        lookAt(closest.Character.Head.Position)
    end
    
    if closest then
        local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
        local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
        FOVring.Transparency = calculateTransparency(distance)
    else
        FOVring.Transparency = maxTransparency
    end
    
    wait(0.03)
end)

ms.NewSwitch("Aimbot On", function(bool)
    _G.AimOn = bool
    if _G.AimOn then
    	fov = 40
    else
    	fov = 0
    end
end, _G.AimOn)

ms.NewSwitch("Check team", function(bool)
    _G.teamCheck = bool
end, _G.teamCheck)

ms.NewSwitch("Lock Mouse", function(bool)
    _G.LockCam = bool
end, _G.LockCam)

ms.NewTextBox("Lock Up", function(text)
    _G.howmuchup = tonumber(text)
end, _G.howmuchup)

local espTab = GamesLib.NewTab("Esp")
espTab.NewSwitch("Esp On", function(bool)
    _G.espon = bool
    if bool then
        while wait(1) and _G.espon do
            for i,v in pairs(game.Players:GetChildren()) do
                if v ~= lp and v.character then
                	if v.character:FindFirstChild("Highlight") then
                    	v.character:FindFirstChild("Highlight"):Destroy()
                	end
             		if v.character:FindFirstChild("ESPBILL") then
                    	v.character:FindFirstChild("ESPBILL"):Destroy()
                	end
             		if v.character:FindFirstChild("ESPHP") then
                    	v.character:FindFirstChild("ESPHP"):Destroy()
                	end
             		v.NameDisplayDistance = 100
             
             		TText = ""
               		if _G.showname then
                    	TText = TText..v.DisplayName
                     	v.NameDisplayDistance = 0
                    end
               
               		local BillboardGui = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")
     
					BillboardGui.Adornee = v.Character.Head
					BillboardGui.Name = "ESPBILL"
					BillboardGui.Parent = v.character
					BillboardGui.Size = UDim2.new(0, 100, 0, 150)
					BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
					BillboardGui.AlwaysOnTop = true
     
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundTransparency = 1
					TextLabel.Position = UDim2.new(0, 0, 0, -50)
					TextLabel.Size = UDim2.new(0, 100, 0, 100)
					TextLabel.Font = Data.Font
					TextLabel.TextSize = 17
					TextLabel.TextColor3 = v.TeamColor.Color
					TextLabel.TextStrokeTransparency = 0.3
					TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
					TextLabel.Text = TText
					TextLabel.ZIndex = 1
     
     				if _G.Healthbar then
             		local BillboardGui = Instance.new("BillboardGui")
					local TextLabel = Instance.new("TextLabel")
     
					BillboardGui.Adornee = v.Character.Head
					BillboardGui.Name = "ESPHP"
					BillboardGui.Parent = v.character
					BillboardGui.Size = UDim2.new(0, 100, 0, 150)
					BillboardGui.StudsOffset = Vector3.new(0, 2.2, 0)
					BillboardGui.AlwaysOnTop = true
     
					TextLabel.Parent = BillboardGui
					TextLabel.BackgroundTransparency = 1
					TextLabel.Position = UDim2.new(0, 0, 0, -50)
					TextLabel.Size = UDim2.new(0, 100, 0, 100)
					TextLabel.Font = Data.Font
					TextLabel.TextSize = 17
					TextLabel.TextColor3 = v.TeamColor.Color
					TextLabel.TextStrokeTransparency = 0.3
					TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
					TextLabel.Text = "HP: "..v.character.Humanoid.Health.." /"..v.character.Humanoid.MaxHealth
					TextLabel.ZIndex = 1
             		end
               
                	local hl = Instance.new("Highlight")
    				hl.FillColor = v.TeamColor.Color
        			hl.Parent = v.character
       			end
            end
        end
    else
    	for i,v in pairs(game.Players:GetChildren()) do
         	v.NameDisplayDistance = 100
         	if v.character:FindFirstChild("ESPBILL") then
            	v.character:FindFirstChild("ESPBILL"):Destroy()
            end
            if v.character:FindFirstChild("Highlight") then
        		v.character:FindFirstChild("Highlight"):Destroy()
        	end
     		if v.character:FindFirstChild("ESPHP") then
            	v.character:FindFirstChild("ESPHP"):Destroy()
            end
     	end
    end
end, _G.espon)

espTab.NewSwitch("Lines", function(bool)
    _G.EspLine = bool
end, _G.EspLine)

lines = {}

game.RunService.Heartbeat:Connect(function()
    if _G.EspLine then
    for i,v in pairs(game.Players:GetPlayers()) do
        local hasline = false
        for i,l in pairs(lines) do
            if l[1] == v then
            	hasline = true
     		end
        end
    	if not hasline then
         	local line = Drawing.new("Line") 
        	line.Visible = true 
        	line.From = game.Workspace.CurrentCamera.ViewportSize /2
        	line.To = Vector2.new(0,0,0,0)
           	line.Color = Color3.fromRGB(255,255,255) 
        	line.Thickness = 2
        	line.Transparency = 1
         
        	table.insert(lines, {v, line})
        end
        
		if v.character then
        	if v.character:FindFirstChild("HumanoidRootPart") then
				for i,u in pairs(lines) do
        			if u[1] == v then
               			local screenPosition, inview = workspace.CurrentCamera:WorldToScreenPoint(v.character:FindFirstChild("HumanoidRootPart").Position)
                  		if not inview then
               				u[2].Transparency = 0
                  		else
                    		u[2].Transparency = 1
                     	end
                  		if u[1] == lp then
                        	u[2].Transparency = 0
                        end
               			
               
               			u[2].From = game.Workspace.CurrentCamera.ViewportSize /2
        				u[2].To = Vector2.new(screenPosition.X, screenPosition.Y)
            			u[2].Color = v.TeamColor.Color
              		end
       			end
        	end
    	end
    end
	for i,u in pairs(lines) do
       	if u[1] == nil then
    		u[2]:Remove()
      		table.remove(lines, i)
    	end
    end
else
	for i,v in pairs(lines) do
    	v[2]:Remove()
    end
	lines = {}
end
end)

espTab.NewLabel("Hh")

espTab.NewSwitch("Show name", function(bool)
    _G.showname = bool
end, _G.showname)

espTab.NewSwitch("HealthBar", function(bool)
    _G.Healthbar = bool
end, _G.Healthbar)

charadded = function(char)
    local hum = char:WaitForChild("Humanoid")
    hum.HealthChanged:Connect(function(new)
        if char:FindFirstChild("ESPHP") then
            char:FindFirstChild("ESPHP").TextLabel.Text = "HP: "..new.." /"..char.Humanoid.MaxHealth
        end
    end)
end

for i,v in pairs(game.Players:GetPlayers()) do
    v.CharacterAdded:Connect(function(char)
       	charadded(char)
    end)
end

game.Players.PlayerAdded:Connect(function(char)
   	char.CharacterAdded:Connect(function(char)
       	charadded(char)
    end)
end)

local MORE = Instance.new("Frame")
MORE.Size = UDim2.new(0,0,0,0)
MORE.BackgroundTransparency = 1
MORE.Parent = Tabs
MORE.Visible = false

local Scroll = Instance.new("ScrollingFrame")

Scroll.Position = UDim2.new(0,95,0,0)
Scroll.Size = UDim2.new(0,620 -190,0,460)
Scroll.Parent = MORE
Scroll.BackgroundTransparency = 1
Scroll.BorderColor3 = Data.BgC
Scroll.ZIndex = 7
Scroll.ScrollBarImageColor3 = Data.Color
Scroll.ScrollBarImageTransparency = 0
Scroll.CanvasSize = UDim2.new(0,0,0,0)

SUPPORTPOS = 12 +34

local LABEL = Instance.new("TextLabel")

LABEL.Position = UDim2.new(0,0,0,SUPPORTPOS)
LABEL.Size = UDim2.new(0,620 -190,0,27)
LABEL.Parent = Scroll
LABEL.BackgroundTransparency = 1
LABEL.ZIndex = 8
LABEL.Text = "Supported Games"
LABEL.Font = Data.Font
LABEL.TextScaled = true
LABEL.TextColor3 = Data.Color

SUPPORTPOS = SUPPORTPOS +27

for i,v in pairs(SupportedGames) do
    local BUTTON = Instance.new("TextLabel")

	BUTTON.Position = UDim2.new(0,0,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = Scroll
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = v.GameName
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    local arrow = Instance.new("TextButton")
    
    arrow.Position = UDim2.new(0,620 -190 -40,0,0)
	arrow.Size = UDim2.new(0,40,0,40)
	arrow.Parent = BUTTON
	arrow.BackgroundTransparency = 1
	arrow.ZIndex = 8.2
 	arrow.Text = ">"
  	arrow.Font = Data.Font
   	arrow.TextScaled = true
    arrow.TextColor3 = Data.Color
    
    arrow.MouseButton1Click:Connect(function()
        popup("Yes-No", "Do you want to teleport to "..v.GameName.."?", {}, function()
            game:GetService("TeleportService"):Teleport(v.GOTOID)
        end)
    end)
    
    SUPPORTPOS = SUPPORTPOS +45
    
    Round(BUTTON, 0.07)
end

SUPPORTPOS = SUPPORTPOS +45

local LABEL = Instance.new("TextLabel")

LABEL.Position = UDim2.new(0,0,0,SUPPORTPOS)
LABEL.Size = UDim2.new(0,620 -190,0,27)
LABEL.Parent = Scroll
LABEL.BackgroundTransparency = 1
LABEL.ZIndex = 8
LABEL.Text = "Credits"
LABEL.Font = Data.Font
LABEL.TextScaled = true
LABEL.TextColor3 = Data.Color

SUPPORTPOS = SUPPORTPOS +27

local creds = {
    {
    	"Main Developer",
     	"l_l6658"
    },
	{
    	"UI maker",
     	"l_l6658"
    }
}

for i,v in pairs(creds) do
    local BUTTON = Instance.new("TextButton")

	BUTTON.Position = UDim2.new(0,0,0,SUPPORTPOS)
	BUTTON.Size = UDim2.new(0,620 -190,0,40)
	BUTTON.Parent = Scroll
	BUTTON.BackgroundColor3 = Data.DarkC
	BUTTON.ZIndex = 8
 	BUTTON.Text = v[1]..": "..v[2]
  	BUTTON.Font = Data.Font
   	BUTTON.TextScaled = true
    BUTTON.TextColor3 = Data.Color
    
    SUPPORTPOS = SUPPORTPOS +45
    
    BUTTON.MouseButton1Click:Connect(function()
    	setclipboard(v[2])
    end)
    
    Round(BUTTON, 0.07)
end

TabSele = ZEOTAB

local icon = Instance.new("ImageButton")

icon.Position = UDim2.new(0,128,0,46)
icon.Size = UDim2.new(0,350,0,350)
icon.BackgroundTransparency = 1
icon.Parent = ZEOTAB
icon.Image = "http://www.roblox.com/asset/?id=16688349183"
icon.ZIndex = 7

local Ex = Instance.new("TextButton")

Ex.Position = UDim2.new(0,620 -50,0,0)
Ex.Size = UDim2.new(0,50,0,50)
Ex.Parent = Main
Ex.BackgroundTransparency = 1
Ex.ZIndex = 12
Ex.Text = "X"
Ex.Font = Data.Font
Ex.TextColor3 = Data.Color
Ex.TextScaled = true

local Exec = Instance.new("ImageButton")

Exec.Position = UDim2.new(0,544,0,388)
Exec.Size = UDim2.new(0,55,0,55)
Exec.Parent = ZEOTAB
Exec.BackgroundColor3 = Data.DarkC
Exec.ZIndex = 7
Exec.Image = Icons.code
Exec.ImageColor3 = Data.Color

local ExecB = Instance.new("Frame")

ExecB.Position = UDim2.new(0,-2,0,-2)
ExecB.Size = UDim2.new(0,59,0,59)
ExecB.Parent = Exec
ExecB.BackgroundColor3 = Data.Color
ExecB.ZIndex = 6.5

Round(ExecB, 0.05)
Round(Exec, 0.05)

addtab(GAMES, Icons.gamepad, "Universal")
addtab(MORE, Icons["more-horizontal"], "Information")

loadingG:Destroy()

local TweenInf0 = TweenInfo.new(0.6) 
local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,460)})
PlayThis:Play()

local TweenInf0 = TweenInfo.new(0.6) 
local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset -230)})
PlayThis:Play()

Texto.MouseButton1Click:Connect(function()
    local THEPLACE = ZEOTAB
    if TabSele ~= ZEOTAB and CANSWITCH then
        CANSWITCH = false
        Down.Visible = true
        local TweenInf0 = TweenInfo.new(0.3) 
		local PlayThis = TweenService:Create(Down, TweenInf0, {Size = UDim2.new(0,125,0,4)})
		PlayThis:Play()
 		local TweenInf0 = TweenInfo.new(0.3) 
		local PlayThis = TweenService:Create(Down, TweenInf0, {Position = UDim2.new(0,245,0,30)})
		PlayThis:Play()
    	
    local random = math.random(1,2)
  	SETDAPOS = 620
   	SETDAPOSNEW = -620
  	if random == 1 then
       SETDAPOS = 620
       SETDAPOSNEW = -620
    end
	if random == 2 then
       SETDAPOS = -620
       SETDAPOSNEW = 620
    end
    	
  	local oldTabSele = TabSele
  	local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(oldTabSele, TweenInf0, {Position = UDim2.new(0,SETDAPOS,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()

    TabSele = THEPLACE
    THEPLACE.Visible = true
    THEPLACE.Position = UDim2.new(0,SETDAPOSNEW,0,0)
    local TweenInf0 = TweenInfo.new(0.5) 
	local PlayThis = TweenService:Create(THEPLACE, TweenInf0, {Position = UDim2.new(0,0,0,oldTabSele.Position.Y.Offset)})
	PlayThis:Play()
    for i,v in pairs(Tabs:GetChildren()) do
        if v ~= THEPLACE and v ~= oldTabSele then
        	v.Visible = false
        end
    end
	wait(0.3)
 	oldTabSele.Visible = false
  	oldTabSele.Position = UDim2.new(0,0,0,0)
   	CANSWITCH = true
   	end
end)

Ex.MouseButton1Click:Connect(function()
    local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,0)})
	PlayThis:Play()

	local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset +230)})
	PlayThis:Play()
 	wait(0.6)
  	G:Destroy()
end)

IconCan = true
IconOnOff = true
Iconz.MouseButton1Click:Connect(function()
    if IconCan then
        if IconOnOff then
        	Main.Visible = false
         	IconOnOff = false
        else
        	Main.Visible = true
         	IconOnOff = true
    	end
    end
end)

Exec.MouseButton1Click:Connect(function()
    local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Size = UDim2.new(0,620,0,0)})
	PlayThis:Play()

	local TweenInf0 = TweenInfo.new(0.6) 
	local PlayThis = TweenService:Create(Main, TweenInf0, {Position = UDim2.new(Main.Position.X.Scale,Main.Position.X.Offset,Main.Position.Y.Scale,Main.Position.Y.Offset +230)})
	PlayThis:Play()
 	wait(0.6)
  	G:Destroy()
   	local Scriptsupported = false
	for i,v in pairs(SupportedGames) do
    	if v.ID == ID then
         	Scriptsupported = true
     		v.Script()
     	end
    end
	if not Scriptsupported then
    	popup("ButtonSelection", "Your Game is not supported. If u have any game suggestions, join our discord.", {
    		{
    			"Button",
      			"Link",
        		function()
            		setclipboard(tostring(Data.DiscordLink))
        		end
    		}
		})
    end
end)

setdrag(Main)