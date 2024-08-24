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
        asterisksLabel:Set("hehetest:" .. asterisks)
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

wel:AddLabel("here script gui , " .. playerName)

wel:AddButton({
    Name = "LIFE BAR TEST",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Daviboycool/Scripthub/main/.github/Scriptcoolbyfadavid/Barradevidapart/Hehebuab.lua'))()
    end
})
