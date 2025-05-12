-- Create the main screen GUI with loading screen
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "ScamTradeGUI"
gui.Parent = player:WaitForChild("PlayerGui")

-- Loading screen (6 minutes)
local loadingFrame = Instance.new("Frame")
loadingFrame.Name = "LoadingFrame"
loadingFrame.Size = UDim2.new(1, 0, 1, 0)
loadingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
loadingFrame.Parent = gui

local loadingText = Instance.new("TextLabel")
loadingText.Name = "LoadingText"
loadingText.Size = UDim2.new(0.8, 0, 0.1, 0)
loadingText.Position = UDim2.new(0.1, 0, 0.45, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading scam trade system... (6 minutes)"
loadingText.TextColor3 = Color3.new(1, 1, 1)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.SourceSansBold
loadingText.Parent = loadingFrame

-- After 6 minutes, remove loading screen and show main GUI
wait(360) -- 6 minutes in seconds

loadingFrame:Destroy()

-- Main GUI
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
mainFrame.Position = UDim2.new(0.35, 0, 0.35, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
mainFrame.Parent = gui

-- Title
local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(0.8, 0, 0.2, 0)
title.Position = UDim2.new(0.1, 0, 0.05, 0)
title.BackgroundTransparency = 1
title.Text = "MM2 Scam Trade"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.Font = Enum.Font.SourceSansBold
title.Parent = mainFrame

-- Text box
local textBox = Instance.new("TextBox")
textBox.Name = "ScamTextBox"
textBox.Size = UDim2.new(0.8, 0, 0.3, 0)
textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
textBox.BackgroundColor3 = Color3.new(1, 1, 1)
textBox.TextColor3 = Color3.new(0, 0, 0)
textBox.PlaceholderText = "Enter item to scam..."
textBox.TextScaled = true
textBox.Parent = mainFrame

-- Confirm button
local confirmButton = Instance.new("TextButton")
confirmButton.Name = "ConfirmButton"
confirmButton.Size = UDim2.new(0.5, 0, 0.2, 0)
confirmButton.Position = UDim2.new(0.25, 0, 0.65, 0)
confirmButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
confirmButton.Text = "CONFIRM"
confirmButton.TextColor3 = Color3.new(1, 1, 1)
confirmButton.TextScaled = true
confirmButton.Font = Enum.Font.SourceSansBold
confirmButton.Parent = mainFrame

-- Result text (initially hidden)
local resultText = Instance.new("TextLabel")
resultText.Name = "ResultText"
resultText.Size = UDim2.new(0.8, 0, 0.2, 0)
resultText.Position = UDim2.new(0.1, 0, 0.9, 0)
resultText.BackgroundTransparency = 1
resultText.Text = ""
resultText.TextColor3 = Color3.new(1, 0, 0)
resultText.TextScaled = true
resultText.Visible = false
resultText.Parent = mainFrame

-- Button functionality
confirmButton.MouseButton1Click:Connect(function()
    if textBox.Text ~= "" then
        resultText.Text = "Wait 2 minutes for this to work..."
        resultText.Visible = true
        
        -- Hide after 5 seconds (for demonstration)
        wait(5)
        resultText.Visible = false
    end
end)
