local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/ReworkMercury"))()
---
--- GUI create
local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
---
local misc = GUI:Tab{
	Name = "Misc Functions",
	Icon = "rbxassetid://8569322835"
}
local ismobile = game:GetService("UserInputService").TouchEnabled
    if ismobile then
        local RaCc0oNScrGUI = Instance.new("ScreenGui")
        local RaCc0oNImg = Instance.new("ImageButton")
        local UICorner = Instance.new("UICorner")
        local VIM = game:GetService("VirtualInputManager")
        local Keytosend = Enum.KeyCode.Delete

        RaCc0oNScrGUI.Name = "RaCc0oNScrGUI"
        RaCc0oNScrGUI.Parent = game.CoreGui
        RaCc0oNScrGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        RaCc0oNImg.Name = "RaCc0oNImg"
        RaCc0oNImg.Parent = RaCc0oNScrGUI
        RaCc0oNImg.BackgroundColor3 = Color3.fromRGB(67, 62, 132)
        RaCc0oNImg.BackgroundTransparency = 1.000
        RaCc0oNImg.BorderColor3 = Color3.fromRGB(0, 0, 0)
        RaCc0oNImg.BorderSizePixel = 0
        RaCc0oNImg.Size = UDim2.new(0, 50, 0, 50)
        RaCc0oNImg.Image = "rbxassetid://3821457207"
        RaCc0oNImg.Draggable = true
        RaCc0oNImg.Selectable = true
        RaCc0oNImg.Active = true

        UICorner.CornerRadius = UDim.new(0, 100)
        UICorner.Parent = RaCc0oNImg

        RaCc0oNImg.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                    VIM:SendKeyEvent(true, Keytosend, false, game)
            end
        end)
    end
local ItemFarm
local plyr = game.Players.LocalPlayer
misc:Toggle{
    Name = "AutoPick Items",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        ItemFarm = state
        while ItemFarm do 
            for _,v in pairs(workspace.ItemSpawns.StandardItems:GetDescendants()) do
                if v.Name == "ProximityAttachment" then
                    pcall(function()
                        plyr.Character.HumanoidRootPart.CFrame = v.Parent.CFrame * CFrame.new(0, 0, -4)
                        fireproximityprompt(v.Interaction)
                        repeat
                            task.wait()
                        until v.Parent ~= nil
                    end)
                end
            end 
            task.wait()      
        end
    end
}
