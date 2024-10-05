-- NotificationLibrary.lua

local NotificationLibrary = {}

-- Função para enviar notificações
function NotificationLibrary.sendNotification(titulo, textos, icon, duracao)
    icon = icon or "rbxassetid://4483345998"  -- Ícone padrão
    duracao = duracao or 5  -- Duração padrão

    local StarterGui = game:GetService("StarterGui")
    
    StarterGui:SetCore("SendNotification", {
        Title = titulo; 
        Text = textos; 
        Icon = icon; 
        Duration = duracao; 
    })
end

-- Função para executar um script com parâmetros
function NotificationLibrary.executeScript(scriptCode, ...)
    local params = {...}  -- Armazena os parâmetros passados

    local success, err = pcall(function()
        -- Monta a função com os parâmetros
        loadstring(scriptCode)()(table.unpack(params))
    end)

    if not success then
        print("Erro ao executar o script: " .. err)  -- Exibe erro no console
    end
end

-- Função para escutar uma tecla e executar um script
function NotificationLibrary.listenForKeyPressToExecute(key, scriptCode)
    local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == key then
                NotificationLibrary.executeScript(scriptCode)  -- Executa o script
            end
        end
    end)
end

-- Função para escutar uma tecla e enviar uma notificação
function NotificationLibrary.listenForKeyPressToNotify(key, titulo, textos, icon, duracao)
    local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent and input.UserInputType == Enum.UserInputType.Keyboard then
            if input.KeyCode == key then
                NotificationLibrary.sendNotification(titulo, textos, icon, duracao)  -- Envia a notificação
            end
        end
    end)
end

return NotificationLibrary
