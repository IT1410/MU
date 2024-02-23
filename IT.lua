local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.5, 0, 0.5, 0)
frame.Position = UDim2.new(0.25, 0, 0.25, 0)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderSizePixel = 5
frame.Parent = gui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.1, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
textLabel.TextColor3 = Color3.new(0, 0, 0)
textLabel.Text = "This is a basic Lua GUI"
textLabel.Font = Enum.Font.SourceSans
textLabel.TextSize = 24
textLabel.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0.5, 0, 0.1, 0)
button.Position = UDim2.new(0.25, 0, 0.8, 0)
button.BackgroundColor3 = Color3.new(0, 0.5, 1)
button.TextColor3 = Color3.new(1, 1, 1)
button.Text = "Close"
button.Font = Enum.Font.SourceSans
button.TextSize = 24
button.Parent = frame

button.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Function to execute the remote function call repeatedly
local function executeRemoteCall()
    while true do
        local args = {
            [1] = {
                ["\7"] = {
                    [1] = {
                        [1] = {
                            ["Amount"] = 10,
                            ["Type"] = "Basic"
                        }
                    }
                }
            }
        }

        game:GetService("ReplicatedStorage").RemoteService.Handler:FireServer(unpack(args))

        wait(0.1) -- Wait for 0.1 seconds before executing again
    end
end

-- Execute the remote function call in a new thread
spawn(executeRemoteCall)
INF RR QUAY LAY UNIQUE AE
INF RR QUAY LAY UNIQUE UNIQUE