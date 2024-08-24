local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviboycool/Scripthub/main/.github/Scriptcoolbyfadavid/Barradevidapart/Hehebuab.lua'))()

local Window = OrionLib:MakeWindow({
    Name = "fam hub",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "OrionTest"
})

local wel = Window:MakeTab({
    Name = "main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local playerName = game.Players.LocalPlayer.Name

local function detectExecutor()
    local executorName = "Unknown"
    local executorSigns = {
        {name = "Arceus X", pattern = "_G.ArceusX"},
        {name = "Delta", pattern = "_G.Delta"},
        {name = "Cacti", pattern = "_G.Cacti"},
        {name = "Cubix", pattern = "_G.Cubix"},
        {name = "Codex", pattern = "_G.Codex"}
    }

    for _, sign in ipairs(executorSigns) do
        if _G[sign.pattern] then
            executorName = sign.name
            break
        end
    end

    return executorName
end

local detectedExecutor = detectExecutor()

local playerLabel = wel:AddLabel("Welcome, " .. playerName)
local executorLabel = wel:AddLabel("Executor: " .. detectedExecutor)
local asterisksLabel = wel:AddLabel("Teste: Asterisks: *")

local function updateAsterisksLabel()
    local asterisks = "*"
    local interval = 0.5
    local maxAsterisks = 10
    
    while true do
        if asterisks:len() > maxAsterisks then
            asterisks = "*"
        else
            asterisks = asterisks .. "*"
        end
        asterisksLabel:Set("hehetestbeta:" .. asterisks)
        wait(interval)
    end
end

spawn(updateAsterisksLabel)

wel:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        OrionLib:Destroy()
    end
})

wel:AddLabel("here script gui")

wel:AddButton({
    Name = "LIFE BAR TEST",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviboycool/Scripthub/main/.github/Scriptcoolbyfadavid/Barradevidapart/Hehebuab.lua'))()
    end
})

local scriptsg = Window:MakeTab({
    Name = "script game",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

scriptsg:AddLabel("---------------------------")
scriptsg:AddLabel("blox fruits")

scriptsg:AddButton({
	Name = "hub time Pirates",
	Callback = function()
      		getgenv().Team = "Pirates" -- Marines Pirates
getgenv().AutoLoad = false --Will Load Script On Server Hop
getgenv().SlowLoadUi  = false
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 =  false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
getgenv().ForceUseSilentAim = false --Force turn on silent aim , if error then executor problem
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  	end    
})


scriptsg:AddButton({
	Name = "hub time Marines",
	Callback = function()
      		getgenv().Team = "Marines" -- Marines Pirates
getgenv().AutoLoad = false --Will Load Script On Server Hop
getgenv().SlowLoadUi  = false
getgenv().FixCrash = false -- Turn it On For Hopping Server, Improve Performance But Silent Aim On Mob And Player
getgenv().FixCrash2 =  false -- Turn it On For Hopping Server, Improve Performance But Will Remove Speed Changer
getgenv().ForceUseSilentAim = false --Force turn on silent aim , if error then executor problem
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  	end    
})

scriptsg:AddButton({
	Name = "redz hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  	end    
})

scriptsg:AddLabel("---------------------------")
scriptsg:AddLabel("dusty trip")

scriptsg:AddButton({
	Name = "connect hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/artemy133563/Utilities/main/ADustyTrip",true))()
  	end    
})

scriptsg:AddButton({
	Name = "EruditeHub have key",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThacG/EruditeHub/main/A%20Dusty%20Trip/V3F"))()
  	end    
})

scriptsg:AddLabel("---------------------------")
scriptsg:AddLabel("the strongest battlefields")

scriptsg:AddButton({
	Name = "1 hub",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/3345-c-a-t-s-u-s/New-C4-Remote.lua/main/TSBG.jsx"))()
  	end    
})

scriptsg:AddLabel("---------------------------")
scriptsg:AddLabel("brookhaven")

scriptsg:AddButton({
	Name = "ImperialHub",
	Callback = function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Trev0rZ/LoaderM/main/ImperialHub-Working.lua"),true))()
  	end    
})

local playerconfig = Window:MakeTab({
    Name = "player configs",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

playerconfig:AddLabel("---------------------------")
playerconfig:AddLabel("option 1")

playerconfig:AddTextbox({
	Name = "speed player textbox",
	Default = "value",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})

playerconfig:AddTextbox({
	Name = "jump player textbox",
	Default = "value",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})

playerconfig:AddLabel("---------------------------")
playerconfig:AddLabel("option 2")

playerconfig:AddSlider({
	Name = "Slider speed",
	Min = 0,
	Max = 5000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

playerconfig:AddSlider({
	Name = "Slider jump",
	Min = 0,
	Max = 5000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

playerconfig:AddLabel("---------------------------")
playerconfig:AddLabel("scripts player")

local infJumpConnection

playerconfig:AddToggle({
	Name = "inf jump",
	Default = false,
	Callback = function(Value)
		if Value then
			infJumpConnection = game:GetService("UserInputService").JumpRequest:Connect(function()
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
			end)
		else 
			if infJumpConnection then
				infJumpConnection:Disconnect()
				infJumpConnection = nil
			end
		end
	end    
})

local guis = Window:MakeTab({
    Name = "guis script",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

guis:AddButton({
    Name = "fly gui",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
    end
})
guis:AddLabel("---------------------------")
guis:AddButton({
    Name = "1X1X1X1 GUI MODDED",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-1X1X1X1-GUI-MODDED-changed-the-names-and-messages-10246", true))()
    end
})

local hubs = Window:MakeTab({
    Name = "hubs",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

hubs:AddLabel("---------------------------")
hubs:AddButton({
    Name = "davi hub v3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Davicoderliner/davi-hub-V2.3/main/davi.lua",true))()
    end
})

hubs:AddButton({
    Name = "davi hub v2",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Davicoderliner/davigui/main/DaviguiV2prealphaloader.lua',true))()
    end
})

hubs:AddButton({
    Name = "kaov hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Koryxha/Kaov/main/KaovHub.md"))()
    end
})

hubs:AddButton({
    Name = "Multi-Scripter-X",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Multi-Scripter-X/main/loader"))()
    end
})

hubs:AddButton({
    Name = "tiger-X-v3",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20its%20Back"))()
    end
})
