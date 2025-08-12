local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame preto cobrindo 100% da tela (com sobra)
local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(1.2, 0, 1.2, 0) -- 20% maior para evitar bordas
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 1
frame.Parent = gui

-- Texto
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.9, 0, 0.5, 0) -- 90% largura, 50% altura da tela
textLabel.Position = UDim2.new(0.05, 0, 0.25, 0) -- centralizado horizontalmente e um pouco acima do centro vertical
textLabel.BackgroundTransparency = 1
textLabel.Text = ""
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 48 -- tamanho maior da fonte
textLabel.TextWrapped = true -- permite quebra de linha
textLabel.TextTransparency = 1
textLabel.Parent = frame

-- Som dramático funcional
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://9118823107" -- Som dramático público
sound.Volume = 2
sound.Parent = gui

wait(2)

-- Toca som
sound:Play()

-- Fade da tela
for i = 1, 20 do
    frame.BackgroundTransparency = 1 - (i / 20)
    wait(0.05)
end

-- Texto aparece aos poucos (efeito de digitação)
local msg = "L3nx1 Hub (UPDATE!)"
textLabel.TextTransparency = 0
for i = 1, #msg do
    textLabel.Text = string.sub(msg, 1, i)
    wait(0.05)
end

-- Efeito de vibração
for i = 1, 6 do
    textLabel.Position = UDim2.new(0.05, math.random(-5, 5), 0.25, math.random(-5, 5))
    wait(0.05)
end
textLabel.Position = UDim2.new(0.05, 0, 0.25, 0)

wait(2)
player:Kick("O SEU BOSTA VAI CARREGAR UM TIJOLO, CHUMBAR UM CIMENTO NA PAREDE VAI")
