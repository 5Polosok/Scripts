local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/ReworkMercury"))()
---
local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
--- GUI create
local Plugins = GUI:Tab{
    Name = "Plugins",
    Icon = "rbxassetid://9087232887"
}
Plugins:Button{
    Name = "SimpleSpy",
    Description = nil,
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua"))()
    end
}
Plugins:Button{
    Name = "DarkDex",
    Description = nil,
    Callback = function()
        loadstring(game:HttpGet(
            "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua",
            true))()
    end
}
Plugins:Button{
    Name = "Awesome Explorer",
    Description = nil,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/awesome-explorer/main/source.lua"))()
    end
}
Plugins:Button{
    Name = "Anti-AFK",
    Description = nil,
    Callback = function()
        Plugins:Prompt{
            Followup = false,
            Title = "Anti-AFK",
            Text = "This function cannot be disabled. Enable it?",
            Buttons = {
                Y = function()
                    local vu = game:GetService("VirtualUser")
                    game:GetService("Players").LocalPlayer.Idled:connect(function()
                        vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                        wait(1)
                        vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
                    end)
                    GUI:set_Status("Anti-AFK WORKING")
                end,
                N = function()
                    return false
                end
            }
        }
    end
}
Plugins:Button{
    Name = "Infinite Yield",
    Description = nil,
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
}
Plugins:Button{
    Name = "FLY",
    Description = nil,
    Callback = function()
        loadstring(
            "\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end
}
Plugins:Button{
    Name = "Ctrl + LMB = TP",
    Description = nil,
    Callback = function()
        local UIS = game:GetService("UserInputService")
        local Player = game.Players.LocalPlayer
        local Mouse = Player:GetMouse()
        function GetCharacter()
            return game.Players.LocalPlayer.Character
        end
        function Teleport(pos)
            local Char = GetCharacter()
            if Char then
                Char:MoveTo(pos)
            end
        end
        UIS.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 and
                UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
                Teleport(Mouse.Hit.p)
            end
        end)
    end
}
------------------PlayerTab
local PlayerTab = GUI:Tab{
    Name = "Player",
    Icon = "rbxassetid://9179124493"
}
local WalkSpeedD = 16
local WalkSpeedSlider = 16
local WalkSpeedON
PlayerTab:Slider{
    Name = "WalkSpeedNum",
    Default = 16,
    Min = 16,
    Max = 200,
    Callback = function(WalkSpeedSlider)
        WalkSpeedD = WalkSpeedSlider
    end
}
PlayerTab:Toggle{
    Name = "WalkSpeed",
    StartingState = false,
    Description = "If u Die UPD BTNS and Num",
    Callback = function(state)
        if state then
            WalkSpeedON = true
        else
            WalkSpeedON = false
        end
        while WalkSpeedON do
            while game:GetService("RunService").RenderStepped:wait() do
                if WalkSpeedON then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = WalkSpeedD
                else
                    break
                end
            end
        end
    end
}

local JumpHeightSlider = 50.145

PlayerTab:Slider{
    Name = "JumpPowerNum",
    Default = 50.145,
    Min = 1,
    Max = 500,
    Callback = function(JumpHeightSlider)
        game.Players.LocalPlayer.Character.Humanoid.JumpHeight = JumpHeightSlider
    end
}
local Notif = loadstring(game:HttpGet("https://api-sirclub.onrender.com/scripts/raw/notifybottom.lua"))()
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
            for _,v in pairs(workspace.ItemSpawns.StandardItems:GetChildren()) do
                if v:GetChildren()[1] ~= nil then
                    pcall(function()
                        plyr.Character.HumanoidRootPart.CFrame = v:GetChildren()[1].CFrame * CFrame.new(0, 0.5, 0)
                        repeat
                            if not ItemFarm then break end
                            task.wait()
                        until v:GetChildren()[1].ProximityAttachment.Interaction
                        task.wait(0.5)
                        repeat
                            if not ItemFarm then break end
                            fireproximityprompt(v:GetChildren()[1].ProximityAttachment.Interaction)
                            task.wait()
                        until not v:GetChildren()[1]
                    end)
                end
            end 
            task.wait()      
        end
    end
}
local AutoStore_Selected = {}
misc:Dropdown{
    Name = "Items To Store",
    StartingText = "Select...",
    Description = nil,
    Items = {
        "Bone", "Tales Of The Universe", "Watch", "Mysterious Fragment", "Gojo`s Blindfold", "Dragon Ball", "Cursed Orb", "Saint`s Corpse", "Heart", "Corrupted Soul", "Corrupted Arrow"
    },
    Callback = function(item)
        local string = "Current AutoStore:"
        local state = false
        for _,v in pairs(AutoStore_Selected) do
            if v == item then
                state = true
                break
            end
        end
        if not state then
            table.insert(AutoStore_Selected, item)
        else
            for k, q in pairs(AutoStore_Selected) do
                if q == item then
                    table.remove(AutoStore_Selected, k)
                end
            end
        end
        for _,v in pairs(AutoStore_Selected) do
            string = " "..string..v..";"
        end
        print(string)
    end
}
misc:Button{
    Name = "Reset Save List",
    Description = nil,
    Callback = function()
        AutoStore_Selected = {}
    end
}
local itemsell
misc:Toggle{
    Name = "Sell Items",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        itemsell = state
        while itemsell do
            for _,v in pairs(plyr.Backpack:GetChildren()) do
                if v:IsA("Tool") then
                    local bulshit = false
                    for _,q in pairs(AutoStore_Selected) do
                        if v.Name == q then
                            bulshit = true
                            break
                        end
                    end
                    if not bulshit then
                        local args = {
                            [1] = "BlackMarketBulkSellItems",
                            [2] = {
                                [1] = {
                                    [1] = tostring(v:GetAttributes()["ItemId"]),
                                    [2] = tostring(v:GetAttributes()["UUID"]),
                                    [3] = 1
                                }
                            }
                        }
                        
                        game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.ShopService.RE.Signal:FireServer(unpack(args))
                    end
                end
            end
            task.wait()      
        end
    end
}

local Main = GUI:Tab{
	Name = "Main Feauters",
	Icon = "rbxassetid://8569322835"
}
local AFarm
local AutoOpen
Main:Toggle{
    Name = "AutoFarm Last Zone",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AFarm = state
        plyr.Character.HumanoidRootPart.CFrame = CFrame.new(2006,942,-1443)
        while AFarm do
            local cs
            if AutoOpen then
                for _,v in pairs(workspace:GetChildren()) do
                    if v:IsA("Model") then
                        cs = true
                        break    
                    end 
                end
            end 
            for _,v in pairs(workspace.Living:GetChildren()) do
                if tostring(v) ~= tostring(game.Players.LocalPlayer) and (v:GetPivot().p-game.Players.LocalPlayer.Character:GetPivot().p).Magnitude <= 400 and not cs then
                    pcall(function()
                        repeat
                            if not AFarm then break end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame + Vector3.new(0, 4, 0)
                            plyr.Character.HumanoidRootPart.CFrame.LookVector = v.CFrame
                            local args = {
                                [1] = "MOUSEBUTTON1"
                            }
                                
                            game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.MoveInputService.RF.FireInput:InvokeServer(unpack(args))
                            task.wait()
                        until not v
                    end)
                else
                    plyr.Character.HumanoidRootPart.CFrame = CFrame.new(2006,942,-1443)
                end
            end
            task.wait()      
        end
    end
}
Main:Toggle{
    Name = "AutoOpen Chest",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoOpen = state
        while AutoOpen do
            for _,v in pairs(workspace:GetChildren()) do
                if v:IsA("Model") then
                    plyr.Character.HumanoidRootPart.CFrame = v.RootPart.CFrame * CFrame.new(0, 0.5, 0)
                    task.wait(0.5)
                    repeat
                        if not AutoOpen then break end
                        fireproximityprompt(v.RootPart.ProximityAttachment.Interaction)
                        task.wait()
                    until not v.RootPart
                end
            end
            task.wait()      
        end
    end
}
