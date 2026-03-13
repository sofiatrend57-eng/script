local key = "333"
local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local gui = Instance.new("ScreenGui")
gui.Parent = game.CoreGui

-- BOTÃO
local icon = Instance.new("TextButton")
icon.Parent = gui
icon.Size = UDim2.new(0,50,0,50)
icon.Position = UDim2.new(0,100,0,200)
icon.Text = "≡"
icon.BackgroundColor3 = Color3.fromRGB(30,30,30)
icon.TextColor3 = Color3.new(1,1,1)

-- PAINEL
local panel = Instance.new("Frame")
panel.Parent = gui
panel.Size = UDim2.new(0,300,0,300)
panel.Position = UDim2.new(0.5,-150,0.5,-150)
panel.BackgroundColor3 = Color3.fromRGB(35,35,35)
panel.Visible = false

-- KEY FRAME
local keyframe = Instance.new("Frame",panel)
keyframe.Size = UDim2.new(1,0,1,0)

local keybox = Instance.new("TextBox",keyframe)
keybox.Size = UDim2.new(0,200,0,40)
keybox.Position = UDim2.new(0.5,-100,0.3,0)
keybox.PlaceholderText = "Digite a key"
icon.MouseButton1Click:Connect(function()
    panel.Visible = not panel.Visible
end)
