-- 创建屏幕GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- 创建外围圆角边框框架
local outerFrame = Instance.new("Frame")
outerFrame.Parent = screenGui
outerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
outerFrame.Size = UDim2.new(0, 720, 0, 620)
outerFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
outerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 0) -- 黄色背景
outerFrame.BackgroundTransparency = 0.5
outerFrame.ZIndex = 1

-- 为外围边框添加圆角
local outerUICorner = Instance.new("UICorner")
outerUICorner.CornerRadius = UDim.new(0, 20)
outerUICorner.Parent = outerFrame

-- 创建内部圆角边框框架
local frame = Instance.new("Frame")
frame.Parent = outerFrame
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Size = UDim2.new(0, 700, 0, 600)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.BackgroundTransparency = 0.5
frame.ZIndex = 2

-- 创建内部圆角UI
local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 12)
uiCorner.Parent = frame

-- 创建文本标签
local textLabel = Instance.new("TextLabel")
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

-- 创建切换按钮
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

-- 为按钮添加圆角
local buttonUICorner = Instance.new("UICorner")
buttonUICorner.CornerRadius = UDim.new(0, 12)
buttonUICorner.Parent = toggleButton

-- 创建按钮框架
local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(0, 100, 0, 300)
buttonFrame.Position = UDim2.new(0, toggleButton.Position.X.Offset + 110, 0, toggleButton.Position.Y.Offset)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Parent = frame
buttonFrame.Visible = false

-- 切换按钮的点击事件
toggleButton.MouseButton1Click:Connect(function()
    buttonFrame.Visible = not buttonFrame.Visible
end)

-- 创建按钮并绑定脚本的函数
local function createButton(name, scriptUrl, yOffset)
    local btn = Instance.new("TextButton")
    btn.Text = name
    btn.Size = UDim2.new(0, 200, 0, 60) -- 增加按钮宽度
    btn.Position = UDim2.new(0, 10, 0, yOffset)
    btn.Font = Enum.Font.Oswald
    btn.TextSize = 25
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    btn.BackgroundTransparency = 0.5
    btn.ZIndex = 3
    btn.Parent = buttonFrame

    -- 为按钮添加圆角
    local btnUICorner = Instance.new("UICorner")
    btnUICorner.CornerRadius = UDim.new(0, 8)
    btnUICorner.Parent = btn

    -- 按钮点击事件，绑定脚本
    btn.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)
end

-- 按钮之间的垂直间距
local buttonSpacing = 50

-- 创建按钮并绑定脚本
createButton("Hardcore Remake(Fluxus Only)", "https://raw.githubusercontent.com/Drop56796/Hardcore-Remake/main/Hardcore%20Remake(Made%20by%20Jay).lua", 10)
createButton("Hardcore", "https://raw.githubusercontent.com/JevilOhio/Doors-Hardcore-noonie-ver-/main/Doors%20Hardcore%20(noonie)", 10 + buttonSpacing)
createButton("Hardcore but bad", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Hardcore-but-bad", 20 + buttonSpacing)
createButton("Hardcore Another", "https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript", 30 + buttonSpacing)
createButton("Psychotic", "https://raw.githubusercontent.com/Drop56796/Psychotic-mode/main/0.lua", 40 + buttonSpacing)
createButton("Hamor", "https://raw.githubusercontent.com/munciseek/Scriptmode/mode/Hamor", 50 + buttonSpacing)