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

local ItemFarm
misc:Toggle{
    Name = "AutoPick Items",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        ItemFarm = state
        while ItemFarm do
            for _,v in pairs(workspace.ItemSpawns.StandardItems:GetDescendants()) do
                repeat
                    task.wait()
                    fireproximityprompt(v.ProximityAttachment.Interaction)
                until v.Parent ~= nil
            end 
            task.wait()      
        end
    end
}