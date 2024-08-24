-- Referência ao jogador local e ao PlayerGui
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Função para criar o GUI
local function createGui()
    -- Verifica se o GUI já existe para evitar múltiplas instâncias
    local existingGui = playerGui:FindFirstChild("MyGUI")
    if existingGui then
        existingGui:Destroy()
    end

    -- Criação do ScreenGui
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "MyGUI"
    ScreenGui.Parent = playerGui

    -- Criação do Frame de fundo
    local BackgroundFrame = Instance.new("Frame")
    BackgroundFrame.Size = UDim2.new(0.3, 0, 0.2, 0) -- 30% da largura e 20% da altura da tela
    BackgroundFrame.Position = UDim2.new(0, 0, 0.8, 0) -- Inferior esquerdo da tela
    BackgroundFrame.BackgroundTransparency = 0.3 -- Fundo semi-transparente
    BackgroundFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- Cinza escuro
    BackgroundFrame.BorderSizePixel = 2
    BackgroundFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) -- Preto
    BackgroundFrame.Parent = ScreenGui

    -- Habilitar a movimentação do GUI
    local UIS = game:GetService("UserInputService")
    local dragging
    local dragInput
    local startPos
    local startPosGui

    local function updatePosition(input)
        local delta = input.Position - dragInput.Position
        BackgroundFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    BackgroundFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragInput = input
            startPos = BackgroundFrame.Position
            startPosGui = UIS:GetMouseLocation()
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updatePosition(input)
        end
    end)

    -- Criação da imagem do jogador
    local PlayerImage = Instance.new("ImageLabel")
    PlayerImage.Size = UDim2.new(0.4, 0, 1, 0) -- 40% da largura do Frame e 100% da altura
    PlayerImage.Position = UDim2.new(0, 0, 0, 0) -- Alinhado à esquerda
    PlayerImage.BackgroundTransparency = 1
    PlayerImage.Image = "rbxthumb://type=AvatarHeadShot&id=" .. player.UserId .. "&w=420&h=420" -- URL da imagem do avatar
    PlayerImage.ImageRectSize = Vector2.new(420, 420) -- Ajuste o tamanho da imagem se necessário
    PlayerImage.ImageColor3 = Color3.fromRGB(255, 255, 255) -- Branco
    PlayerImage.BorderSizePixel = 0
    PlayerImage.Parent = BackgroundFrame

    -- Criação do nome
    local NameLabel = Instance.new("TextLabel")
    NameLabel.Size = UDim2.new(0.6, 0, 0.4, 0) -- 60% da largura do Frame e 40% da altura
    NameLabel.Position = UDim2.new(0.4, 0, 0.1, 0) -- Alinhado à direita e com um pouco de margem
    NameLabel.BackgroundTransparency = 1
    NameLabel.Text = player.Name
    NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Branco
    NameLabel.TextScaled = true
    NameLabel.TextWrapped = true
    NameLabel.Font = Enum.Font.GothamBold
    NameLabel.Parent = BackgroundFrame

    -- Criação da barra de vida
    local HealthBarFrame = Instance.new("Frame")
    HealthBarFrame.Size = UDim2.new(0.6, 0, 0.4, 0) -- 60% da largura do Frame e 40% da altura
    HealthBarFrame.Position = UDim2.new(0.4, 0, 0.5, 0) -- Alinhado à direita e abaixo do nome
    HealthBarFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20) -- Cinza escuro
    HealthBarFrame.BorderSizePixel = 1
    HealthBarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0) -- Preto
    HealthBarFrame.Parent = BackgroundFrame

    -- Barra de vida vermelha (de baixo)
    local HealthBarBackground = Instance.new("Frame")
    HealthBarBackground.Size = UDim2.new(1, 0, 1, 0) -- Cobrir toda a barra de vida
    HealthBarBackground.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Vermelho
    HealthBarBackground.BorderSizePixel = 0
    HealthBarBackground.Parent = HealthBarFrame

    -- Barra de vida verde (em cima da vermelha)
    local HealthBarFill = Instance.new("Frame")
    HealthBarFill.Size = UDim2.new(1, 0, 1, 0) -- Inicialmente 100% da largura
    HealthBarFill.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Verde claro
    HealthBarFill.BackgroundTransparency = 0.5
    HealthBarFill.BorderSizePixel = 0
    HealthBarFill.Parent = HealthBarFrame

    -- Texto da vida
    local HealthText = Instance.new("TextLabel")
    HealthText.Size = UDim2.new(1, 0, 0.2, 0) -- Ocupa 100% da largura e 20% da altura da barra
    HealthText.Position = UDim2.new(0, 0, -0.2, 0) -- Acima da barra
    HealthText.BackgroundTransparency = 1
    HealthText.TextColor3 = Color3.fromRGB(255, 255, 255) -- Branco
    HealthText.TextScaled = true
    HealthText.TextWrapped = true
    HealthText.Font = Enum.Font.GothamBold
    HealthText.Parent = HealthBarFrame

    -- Função para atualizar a barra de vida e o texto
    local function updateHealthBar()
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            local humanoid = character.Humanoid
            local health = humanoid.Health
            local maxHealth = humanoid.MaxHealth
            local healthPercentage = health / maxHealth
            HealthBarFill.Size = UDim2.new(healthPercentage, 0, 1, 0)
            HealthText.Text = string.format("%d/%d", health, maxHealth)
        end
    end

    -- Atualizar a barra de vida a cada vez que o jogador muda de saúde
    local function onCharacterAdded(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.HealthChanged:Connect(updateHealthBar)
        updateHealthBar()
    end

    -- Atualizar a barra de vida quando o personagem é adicionado
    player.CharacterAdded:Connect(onCharacterAdded)

    -- Atualizar a barra de vida se o personagem já existir
    if player.Character then
        onCharacterAdded(player.Character)
    end
end

-- Criar o GUI inicial
createGui()

-- Recriar o GUI se o jogador mudar de personagem
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(createGui)
end)
