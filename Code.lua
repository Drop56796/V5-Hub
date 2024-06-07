local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local outerFrame = Instance.new("Frame")
outerFrame.Parent = screenGui
outerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
outerFrame.Size = UDim2.new(0, 720, 0, 620)
outerFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
outerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- 黄色背景
outerFrame.BackgroundTransparency = 0.5
outerFrame.ZIndex = 1

local outerUICorner = Instance.new("UICorner")
outerUICorner.CornerRadius = UDim.new(0, 20)
outerUICorner.Parent = outerFrame

local newScrollingFrame = Instance.new("ScrollingFrame")
newScrollingFrame.Parent = outerFrame
newScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
newScrollingFrame.Size = UDim2.new(0, 700, 0, 600)
newScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
newScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 1000) -- 根据内容调整
newScrollingFrame.ScrollBarThickness = 12

local newScrollingUICorner = Instance.new("UICorner")
newScrollingUICorner.CornerRadius = UDim.new(0, 12)
newScrollingUICorner.Parent = newScrollingFrame

local frame = Instance.new("Frame")
frame.Parent = newScrollingFrame
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 700, 0, 600)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BackgroundTransparency = 0.5
frame.ZIndex = 2

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = frame

textLabel = Instance.new("TextLabel")
textLabel.Text = "Trauma Hub V5"
textLabel.AnchorPoint = Vector2.new(0, 0) -- 锚点设置为左上角
textLabel.Size = UDim2.new(0, 200, 0, 50) -- 调整大小
textLabel.Position = UDim2.new(0, 10, 0, 10) -- 移动到左上角
textLabel.Font = Enum.Font.Oswald
textLabel.TextColor3 = Color3.new(255/255, 222/255, 189/255)
textLabel.BackgroundTransparency = 1
textLabel.TextScaled = true
textLabel.TextSize = 36
textLabel.Parent = frame

local toggleButton = Instance.new("TextButton")
toggleButton.Text = "script mode"
toggleButton.Size = UDim2.new(0, 100, 0, 50)
toggleButton.Position = UDim2.new(0, 10, 0, textLabel.Position.Y.Offset + 120)
toggleButton.Font = Enum.Font.Oswald
toggleButton.TextSize = 24
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- 黄色背景
toggleButton.BackgroundTransparency = 0.5
toggleButton.ZIndex = 3
toggleButton.Parent = frame

local buttonUICorner = Instance.new("UICorner")
buttonUICorner.CornerRadius = UDim.new(0, 12)
buttonUICorner.Parent = toggleButton

local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(0, 100, 0, 300)
buttonFrame.Position = UDim2.new(0, toggleButton.Position.X.Offset + 110, 0, toggleButton.Position.Y.Offset)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Parent = frame
buttonFrame.Visible = false

toggleButton.MouseButton1Click:Connect(function()
    buttonFrame.Visible = not buttonFrame.Visible
end)

local function createButton(name, scriptUrl, yOffset)
    local btn = Instance.new("TextButton")
    btn.Text = name
    btn.Size = UDim2.new(0, 260, 0, 40) -- 增加按钮宽度
    btn.Position = UDim2.new(0, 10, 0, yOffset)
    btn.Font = Enum.Font.Oswald
    btn.TextSize = 25
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    btn.BackgroundTransparency = 0.5
    btn.ZIndex = 3
    btn.Parent = buttonFrame
    
    local btnUICorner = Instance.new("UICorner")
    btnUICorner.CornerRadius = UDim.new(0, 8)
    btnUICorner.Parent = btn
    
    btn.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
end

-- 按钮之间的垂直间距
local buttonSpacing = 50

-- 创建按钮并绑定脚本
createButton("Hardcore Remake(Fluxus Only)", "https://raw.githubusercontent.com/Drop56796/Hardcore-Remake/main/Hardcore%20Remake(Made%20by%20Jay).lua", 10)
createButton("Hardcore", "https://raw.githubusercontent.com/JevilOhio/Doors-Hardcore-noonie-ver-/main/Doors%20Hardcore%20(noonie)", 60 + buttonSpacing)
createButton("Hardcore but bad", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Hardcore-but-bad", 110 + buttonSpacing)
createButton("Hardcore Another", "https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript", 170 + buttonSpacing)
createButton("Psychotic", "https://raw.githubusercontent.com/Drop56796/Psychotic-mode/main/0.lua", 230 + buttonSpacing)
createButton("Hamor", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Hamor", 290 + buttonSpacing)
createButton("Extreme", "https://raw.githubusercontent.com/munciseek/Scriptmode/main/Extreme", 350 + buttonSpacing)
createButton("Insane V5", "https://raw.githubusercontent.com/thefigureblack/doors/main/insanemodev5.lua", 410 + buttonSpacing)
createButton("Insane V6", "https://raw.githubusercontent.com/Drop56796/InsaneV6/main/InsaneV6.lua", 470 + buttonSpacing)
createButton("impossible", "https://raw.githubusercontent.com/Drop56796/impossible-mode/main/impossible.lua", 530 + buttonSpacing)
createButton("DevTroll", "https://glot.io/snippets/gotfeffesc/raw/main.lua", 590 + buttonSpacing)
createButton("Fear", "https://raw.githubusercontent.com/cool59572/freestuff/main/Mods/FearMode.lua", 650 + buttonSpacing)
createButton("Hazy", "https://raw.githubusercontent.com/Drop56796/Jabiess-Hazy-Mode-/main/Hazy%20Mode.lua", 710 + buttonSpacing)
createButton("Endless", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Endless", 770 + buttonSpacing)
createButton("Nightmare(Soon Fixed)", "https://raw.githubusercontent.com/Drop56796/nightmare/main/nightmare%20mode.lua", 830 + buttonSpacing)
createButton("Furry(Gay mode)", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Furry", 890 + buttonSpacing)
createButton("Cat(Gay mode)", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Cat", 950 + buttonSpacing)
createButton("Fragmented V4", "https://raw.githubusercontent.com/munciseek/Scriptmode/main/Fragmented", 975 + buttonSpacing)
createButton("Birthday", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Birthday", 1000 + buttonSpacing)

local userInputService = game:GetService("UserInputService")
local dragging = true
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

userInputService.InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        update(input)
    end
end)
