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

local plyr = game.Players.LocalPlayer
local char = plyr.Character
local HRT = char.HumanoidRootPart
local Main = GUI:Tab{
	Name = "Main Feauters",
	Icon = "rbxassetid://8569322835"
}
local Main2 = GUI:Tab{
    Name = "AutoFarm Feauters",
	Icon = "rbxassetid://8569322835"
}

local AutoClick
Main:Toggle{
    Name = "Auto Energy",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoClick = state
        while AutoClick do
            local args = {
                [1] = "Attack",
                [2] = "Click",
                [3] = {
                    ["Type"] = "ProtectCrystal"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            task.wait()      
        end
    end
}
local AutoCollect
Main:Toggle{
    Name = "AutoCollect Drop",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoCollect = state
        while AutoCollect do
            for _,v in pairs(workspace.Debris:GetChildren()) do
                pcall(function()
                    v.CFrame = HRT.CFrame
                    v.CanCollide = false
                end)
            end
            task.wait(1)
        end
    end
}
local egg_chosen
local Eggs = Main:Dropdown{
	Name = "Star Selection",
	StartingText = "Select...",
	Description = nil,
	Items = {

	},
	Callback = function(item)
        egg_chosen = item
    end
} 

local worldzq = {}

for _,v in pairs(workspace.Server.Enemies.World:GetChildren()) do
    table.insert(worldzq, v.Name)
end

table.sort(worldzq)

for _,v in pairs(worldzq) do
    Eggs:AddItems({v})
end

local AutoOpenEgg
Main:Toggle{
    Name = "AutoOpen Star",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoOpenEgg = state
        while AutoOpenEgg do
            local args = {
                [1] = "Stars",
                [2] = "Roll",
                [3] = {
                    ["Map"] = egg_chosen,
                    ["Type"] = "Multi"
                }
            }
            
            game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            task.wait()
        end
    end
}

local world = "Leaf City"
local Worlds = Main:Dropdown{
	Name = "World Farm Selection",
	StartingText = "Select...",
	Description = nil,
	Items = {

	},
	Callback = function(item)
        world = item
    end
}
local worldz = {}
for _,v in pairs(workspace.Server.Enemies.World:GetChildren()) do
    table.insert(worldz, v.Name)
end
table.sort(worldz)
for _,v in pairs(worldz) do
    Worlds:AddItems({v})
end
local AFarmSelected = {}
local Mobs = Main:Dropdown{
    Name = "Mobs Selection",
    StartingText = "Select...",
    Description = nil,
    Items = {

    },
    Callback = function(item)
        local string = "Current AutoFarm:"
        local state = false
        for _,v in pairs(AFarmSelected) do
            if v == item then
                state = true
                break
            end
        end
        if not state then
            table.insert(AFarmSelected, item)
        else
            for k, q in pairs(AFarmSelected) do
                if q == item then
                    table.remove(AFarmSelected, k)
                end
            end
        end
        for _,v in pairs(AFarmSelected) do
            string = " "..string..v..";"
        end
        Notif.New(string)
    end
}
local mobs_table = {}
for _,v in pairs(workspace.Server.Enemies.World[world]:GetChildren()) do
    local state = true
    for _, z in pairs(mobs_table) do
        if z == v.Name then
            state = false
            break
        end
    end
    if state then
        table.insert(mobs_table, v.Name)
    end
end
table.sort(mobs_table)
for _,v in pairs(mobs_table) do
    Mobs:AddItems({v})
end
Main:Button{
    Name = "Refresh Mobs DropDown",
    Description = nil,
    Callback = function()
        for _,v in pairs(mobs_table) do
            pcall(function()
                Mobs:RemoveItems({v})
            end)
        end
        mobs_table = {}
        for _,v in pairs(workspace.Server.Enemies.World[world]:GetChildren()) do
            local state = true
            for _, z in pairs(mobs_table) do
                if z == v.Name then
                    state = false
                    break
                end
            end
            if state then
                table.insert(mobs_table, v.Name)
            end
        end
        table.sort(mobs_table)
        for _,v in pairs(mobs_table) do
            Mobs:AddItems({v})
        end
    end
}
Main:Button{
    Name = "Reset Mob List",
    Description = nil,
    Callback = function()
            AFarmSelected = {}
    end
}
local raidboss = false
Main:Toggle{
    Name = "RaidBoss Farm",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        raidboss = state
    end
}
local sboss
Main:Toggle{
    Name = "Summon Boss Farm",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        sboss = state
        while sboss do
            local melio
            local rboss
            if not workspace.Server.Enemies.SummonBoss:GetChildren()[1] then
                local args = {
                    [1] = "Enemies",
                    [2] = "Bridge",
                    [3] = {
                        ["Module"] = "SummonBoss",
                        ["FunctionName"] = "Spawn"
                    }
                }
                
                game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            else
                melio = workspace.Server.Enemies.SummonBoss:GetChildren()[1]
            end
            if workspace.Server.Enemies.RaidBoss:GetChildren()[1] and raidboss and tostring(workspace.Server.Enemies.RaidBoss:GetChildren()[1]) ~= "Titan Colossal" then
                rboss = workspace.Server.Enemies.RaidBoss:GetChildren()[1]
            end
            if melio and not rboss then
                if (melio:GetPivot().p - char:GetPivot().p).Magnitude >= 6 then
                    if tostring(workspace.Client.Maps:GetChildren()[1]) ~= "Criminal Village" then
                        local args = {
                            [1] = "Teleport",
                            [2] = "Spawn",
                            [3] = "Criminal Village"
                        }
                        game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                        task.wait(1)
                        HRT.CFrame = melio.CFrame + Vector3.new(0, 4, 0)
                    else
                        HRT.CFrame = melio.CFrame + Vector3.new(0, 4, 0)
                    end
                end
                repeat 
                    if not sboss then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = melio,
                            ["Type"] = "SummonBoss"
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until melio:GetAttributes()["Health"] ~= 0
            elseif rboss and raidboss then
                if (rboss:GetPivot().p-char:GetPivot().p).Magnitude >= 6 then
                    local args = {
                        [1] = "Teleport",
                        [2] = "Spawn",
                        [3] = rboss:GetAttributes()["World"]
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait(1)
                    HRT.CFrame = rboss.CFrame + Vector3.new(0, 4, 0)
                end
                repeat
                    if not sboss then break end
                    local args5 = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = rboss,
                            ["Type"] = "RaidBoss"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args5))
                    task.wait()
                until rboss:GetAttributes()["Health"] ~= 0
            end
            task.wait()
        end
    end
}
local WorldFarm
Main:Toggle{
    Name = "World Farm",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        WorldFarm = state
        while WorldFarm do
            local mob
            local boss
            for _,v in pairs(workspace.Server.Enemies.World[world]:GetChildren()) do
                for _, z in pairs(AFarmSelected) do
                    if v.Name == z and v:GetAttributes()["Health"] > 0 then
                        mob = v
                        break
                    end
                end
                if mob then break end
            end
            if workspace.Server.Enemies.RaidBoss:GetChildren()[1] and raidboss and tostring(workspace.Server.Enemies.RaidBoss:GetChildren()[1]) ~= "Titan Colossal" then
                boss = workspace.Server.Enemies.RaidBoss:GetChildren()[1]
            end
            if mob and not boss then
                if (mob:GetPivot().p-char:GetPivot().p).Magnitude >= 4 then
                    if tostring(workspace.Client.Maps:GetChildren()[1]) ~= world then
                        local args = {
                            [1] = "Teleport",
                            [2] = "Spawn",
                            [3] = world
                        }
                        game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                        task.wait(1.5)
                        HRT.CFrame = mob.CFrame + Vector3.new(0, 1.5, 0)
                    else
                        HRT.CFrame = mob.CFrame + Vector3.new(0, 1.5, 0)
                    end
		        end
                repeat
                    if not WorldFarm then break end
                    local args2 = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = mob,
                            ["Type"] = "World"
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args2))
                    task.wait()
                until mob:GetAttributes()["Health"] == 0
            elseif boss and raidboss then
                if (boss:GetPivot().p-char:GetPivot().p).Magnitude >= 6 then
                    local args = {
                        [1] = "Teleport",
                        [2] = "Spawn",
                        [3] = boss:GetAttributes()["World"]
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait(1)
                    HRT.CFrame = boss.CFrame + Vector3.new(0, 4, 0)
                end
                repeat
                    if not WorldFarm then break end
                    local args5 = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = boss,
                            ["Type"] = "RaidBoss"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args5))
                    task.wait()
                until boss:GetAttributes()["Health"] ~= 0
            end
            task.wait()
        end
    end
}

----- MAIN2
local autoraid
Main2:Toggle{
    Name = "AutoRaid",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        autoraid = state
        while autoraid do
            local boss
            if (workspace.Server.Raid.Map.Map:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then
                --tp to raid
                if raidboss and workspace.Server.Enemies.RaidBoss:GetChildren()[1] and tostring(workspace.Server.Enemies.RaidBoss:GetChildren()[1]) ~= "Titan Colossal" then
                    boss = workspace.Server.Enemies.RaidBoss:GetChildren()[1]
                else
                    local args = {
                        [1] = "Enemies",
                        [2] = "Bridge",
                        [3] = {
                            ["Module"] = "Raid",
                            ["FunctionName"] = "Start",
                            ["Args"] = "Friend"
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                end
            end
            local mob
            for _,v in pairs(workspace.Server.Raid.Enemies:GetChildren()) do
                if v:GetAttributes()["Health"] > 0 then
                    mob = v
                    break
                end
            end
            if mob and (workspace.Server.Raid.Map.Map:GetPivot().p-char:GetPivot().p).Magnitude <= 250 and not boss then
	            if (mob:GetPivot().p-char:GetPivot().p).Magnitude >= 4 then
                    HRT.CFrame = mob.CFrame + Vector3.new(0, 1.5, 0)
		        end
                repeat
                    if not autoraid then break end
	                if (workspace.Server.Raid.Map.Map:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = mob,
                            ["Type"] = "Raid"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until mob
            elseif boss and raidboss then
                if (boss:GetPivot().p-char:GetPivot().p).Magnitude >= 6 then
                    local args = {
                        [1] = "Teleport",
                        [2] = "Spawn",
                        [3] = boss:GetAttributes()["World"]
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait(1)
                    HRT.CFrame = boss.CFrame + Vector3.new(0, 4, 0)
                end
                repeat
                    if not autoraid then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = boss,
                            ["Type"] = "RaidBoss"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until boss:GetAttributes()["Health"] ~= 0
            end
            task.wait()
        end
    end
}
local room
Main2:Textbox{
	Name = "AutoLeave Room Raid",
	Callback = function(text)
        room = text
    end
}
local AutoLeave
Main2:Toggle{
        Name = "AutoLeave Raid",
        StartingState = false,
        Description = nil,
        Callback = function(state)
        AutoLeave = state
        while AutoLeave do
	        task.wait(3)
            if plyr.PlayerGui.UI.HUD.Raid.Room.Text == "Room "..room then
                local args = {
                    [1] = "Teleport",
                    [2] = "Spawn",
                    [3] = "Desert Piece"
		        }
                game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
	        end
        end
    end
}
local AutoInvasion
Main2:Toggle{
    Name = "AutoInvasion",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoInvasion = state
        while AutoInvasion do
            local boss
            if (workspace.Server.InvasionShip.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then
                if raidboss and workspace.Server.Enemies.RaidBoss:GetChildren()[1] and tostring(workspace.Server.Enemies.RaidBoss:GetChildren()[1]) ~= "Titan Colossal"  then
                    boss = workspace.Server.Enemies.RaidBoss:GetChildren()[1]
                else
                    --tp to invasion
                    local args = {
                        [1] = "Enemies",
                        [2] = "Bridge",
                        [3] = {
                            ["Module"] = "InvasionShip",
                            ["FunctionName"] = "Start",
                            ["Args"] = "Friend"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                end
            end
      
            local mob
            for _,v in pairs(workspace.Server.InvasionShip.Enemies:GetChildren()) do
                if v:GetAttributes()["Health"] > 0 then
                    mob = v
                    break
                end
            end
            if mob and (workspace.Server.InvasionShip.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude <= 250 and not boss then
                if (mob:GetPivot().p-char:GetPivot().p).Magnitude >= 4 then
                    HRT.CFrame = mob.CFrame + Vector3.new(0, 1.5, 0)
                end
                repeat
                    if not AutoInvasion then break end  
                    if (workspace.Server.InvasionShip.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = mob,
                            ["Type"] = "InvasionShip"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until mob
            elseif boss and raidboss then
                if (boss:GetPivot().p-char:GetPivot().p).Magnitude >= 6 then
                    local args = {
                        [1] = "Teleport",
                        [2] = "Spawn",
                        [3] = boss:GetAttributes()["World"]
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait(1)
                    HRT.CFrame = boss.CFrame + Vector3.new(0, 4, 0)
                end
                repeat
                    if not AutoInvasion then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = boss,
                            ["Type"] = "RaidBoss"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until boss:GetAttributes()["Health"] ~= 0
            end
            task.wait()
        end
    end
}
local room2
Main2:Textbox{
	Name = "AutoLeave Room InvasionShip",
	Callback = function(text)
        room2 = text
    end
}
local AutoLeave2
Main2:Toggle{
    Name = "AutoLeave Invasion",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoLeave2 = state
        while AutoLeave2 do
            task.wait(3)
            if plyr.PlayerGui.UI.HUD.InvasionShip.Room.Text == "Room "..room2 then
                local args = {
                    [1] = "Teleport",
                    [2] = "Spawn",
                    [3] = "Desert Piece"
                }
                game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            end
        end
    end
} 

local AutoDefense
Main2:Toggle{
    Name = "AutoDefense",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoDefense = state
        while AutoDefense do
            local boss
            if (workspace.Server.Defense.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then
                if raidboss and workspace.Server.Enemies.RaidBoss:GetChildren()[1] and tostring(workspace.Server.Enemies.RaidBoss:GetChildren()[1]) ~= "Titan Colossal" then
                    boss = workspace.Server.Enemies.RaidBoss:GetChildren()[1]
                else
                    --tp to defense
                    local args = {
                        [1] = "Enemies",
                        [2] = "Bridge",
                        [3] = {
                            ["Module"] = "Defense",
                            ["FunctionName"] = "Start",
                            ["Args"] = "Friend"
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                end
            end

            local mob
            for _,v in pairs(workspace.Server.Defense.Enemies:GetChildren()) do
                if v:GetAttributes()["Health"] > 0 then
                    mob = v
                    break
                end
            end
            if mob and (workspace.Server.Defense.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude <= 250 and not boss then
		        if (mob:GetPivot().p-char:GetPivot().p).Magnitude >= 4 then
                    HRT.CFrame = mob.CFrame + Vector3.new(0, 1.5, 0)
	            end
                repeat
                    if not AutoDefense then break end
                    if (workspace.Server.Defense.Map.Model:GetPivot().p-char:GetPivot().p).Magnitude >= 250 then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = mob,
                            ["Type"] = "Defense"
                        }
                    }
                    
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until mob
            elseif boss and raidboss then
                if (boss:GetPivot().p-char:GetPivot().p).Magnitude >= 6 then
                    local args = {
                        [1] = "Teleport",
                        [2] = "Spawn",
                        [3] = boss:GetAttributes()["World"]
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait(1)
                    HRT.CFrame = boss.CFrame + Vector3.new(0, 4, 0)
                end
                repeat
                    if not AutoDefense then break end
                    local args = {
                        [1] = "Attack",
                        [2] = "Click",
                        [3] = {
                            ["Enemy"] = boss,
                            ["Type"] = "RaidBoss"
                        }
                    }
                    game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
                    task.wait()
                until boss:GetAttributes()["Health"] ~= 0
            end
            task.wait()
        end
    end
}
local room3
Main2:Textbox{
	Name = "AutoLeave Room Defense",
	Callback = function(text)
        room3 = text
    end
}
local AutoLeave3
Main2:Toggle{
    Name = "AutoLeave Defense",
    StartingState = false,
    Description = nil,
    Callback = function(state)
        AutoLeave3 = state
        while AutoLeave3 do
            task.wait(3)
            if plyr.PlayerGui.UI.HUD.Defense.Room.Text == "Wave "..room3 then
                local args = {
                    [1] = "Teleport",
                    [2] = "Spawn",
                    [3] = "Desert Piece"
                }
                game:GetService("ReplicatedStorage").Bridge:FireServer(unpack(args))
            end
        end
    end
} 
