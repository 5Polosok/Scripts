local ContextActionService = game:GetService("ContextActionService")
local MarketplaceService = game:GetService("MarketplaceService")
--- Loading lib
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
--- Tab
local Tab = GUI:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://8569322835"
}
local money
local HRT = game.Players.LocalPlayer.Character.HumanoidRootPart
Tab:Toggle{
    Name = "Toggle",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        money = state
        while money do
            HRT.CFrame = workspace.Map.Obbies.Obbies.Hard.CFrame
            task.wait()      
        end
    end
}