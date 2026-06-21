if game.PlaceId == 18794863104 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/D%20M%20N%20L%20G%20Y.lua"))()
elseif game.PlaceId == 537413528 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/B%20A%20B.lua"))()
elseif game.PlaceId == 11379739543 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/T%20B%20D.lua"))()
elseif game.PlaceId == 2961583129 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/P%20T%20B.lua"))()
elseif game.PlaceId == 10605039538 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/N%20T%20R%20Y%20T%20Y.lua"))()
elseif game.PlaceId == 71184132329621 or game.PlaceId == 111510466699934 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/P%20G%20T%20R%20Y.lua"))()
elseif game.PlaceId == 93044798454681 or game.PlaceId == 125810438250765 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/D%20D.lua"))()
elseif game.PlaceId == 11276071411 then
    getgenv().Executed = true
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SecretDev01/SecretDev/refs/heads/main/N%20O%20D.lua"))()
else
    local Config = {
        Scale = 1.0,
        Duration = 5,
        Title = "Unsupported Game",
        Description = "This game is not supported, or the script has been discontinued."
    }

    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")

    local player = Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")

    local screenGui = playerGui:FindFirstChild("DeltaNotifications")
    if not screenGui then
        screenGui = Instance.new("ScreenGui")
        screenGui.Name = "DeltaNotifications"
        screenGui.ResetOnSpawn = false
        screenGui.Parent = playerGui
    end

    local function CustomNotify(titleText, descText, duration)
        duration = duration or 5
        local scale = Config.Scale or 1.0
        
        local notifyFrame = Instance.new("Frame")
        notifyFrame.Name = "Notification"
        notifyFrame.Size = UDim2.new(0, math.round(300 * scale), 0, math.round(80 * scale))
        notifyFrame.Position = UDim2.new(1, math.round(320 * scale), 1, math.round(-40 * scale)) 
        notifyFrame.AnchorPoint = Vector2.new(1, 1)
        notifyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        notifyFrame.BackgroundTransparency = 0.25
        notifyFrame.BorderSizePixel = 0
        notifyFrame.Parent = screenGui

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, math.round(8 * scale))
        corner.Parent = notifyFrame

        local blackBorder = Instance.new("UIStroke")
        blackBorder.Color = Color3.fromRGB(0, 0, 0)
        blackBorder.Thickness = math.max(1, math.round(2 * scale))
        blackBorder.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        blackBorder.Parent = notifyFrame

        local borderContainer = Instance.new("Frame")
        borderContainer.Size = UDim2.new(1, 0, 1, 0)
        borderContainer.BackgroundTransparency = 1
        borderContainer.BorderSizePixel = 0
        borderContainer.Parent = notifyFrame
        corner:Clone().Parent = borderContainer

        local purpleOutline = Instance.new("UIStroke")
        purpleOutline.Color = Color3.fromRGB(128, 0, 128)
        purpleOutline.Thickness = math.max(1, math.round(4 * scale))
        purpleOutline.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        purpleOutline.Parent = borderContainer

        local titleLabel = Instance.new("TextLabel")
        titleLabel.Size = UDim2.new(1, math.round(-20 * scale), 0, math.round(25 * scale))
        titleLabel.Position = UDim2.new(0, math.round(12 * scale), 0, math.round(8 * scale))
        titleLabel.BackgroundTransparency = 1
        titleLabel.Text = titleText
        titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        titleLabel.TextSize = math.round(16 * scale)
        titleLabel.Font = Enum.Font.GothamBold
        titleLabel.TextXAlignment = Enum.TextXAlignment.Left
        titleLabel.Parent = notifyFrame

        local descLabel = Instance.new("TextLabel")
        descLabel.Size = UDim2.new(1, math.round(-24 * scale), 1, math.round(-40 * scale))
        descLabel.Position = UDim2.new(0, math.round(12 * scale), 0, math.round(33 * scale))
        descLabel.BackgroundTransparency = 1
        descLabel.Text = descText
        descLabel.TextColor3 = Color3.fromRGB(215, 215, 215)
        descLabel.TextSize = math.round(13 * scale)
        descLabel.Font = Enum.Font.Gotham
        descLabel.TextWrapped = true
        descLabel.TextXAlignment = Enum.TextXAlignment.Left
        descLabel.TextYAlignment = Enum.TextYAlignment.Top
        descLabel.Parent = notifyFrame

        local tweenIn = TweenService:Create(notifyFrame, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, math.round(-20 * scale), 1, math.round(-40 * scale))
        })
        tweenIn:Play()

        task.spawn(function()
            task.wait(duration)
            
            local tweenOut = TweenService:Create(notifyFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                Position = UDim2.new(1, math.round(350 * scale), 1, math.round(-40 * scale)),
                BackgroundTransparency = 1
            })
            
            TweenService:Create(titleLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
            TweenService:Create(descLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
            TweenService:Create(purpleOutline, TweenInfo.new(0.2), {Transparency = 1}):Play()
            TweenService:Create(blackBorder, TweenInfo.new(0.2), {Transparency = 1}):Play()
            
            tweenOut:Play()
            tweenOut.Completed:Wait()
            notifyFrame:Destroy()
        end)
    end

    CustomNotify(Config.Title, Config.Description, Config.Duration)
end
