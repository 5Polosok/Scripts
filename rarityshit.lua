
    local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/ReworkMercury"))()
    --- GUI create
    local GUI = Mercury:Create{
        Name = "Mercury",
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Dark,
        Link = "https://github.com/deeeity/mercury-lib";
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
    ---
    -------------------------PluginsTab
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
    --------------------------------------------------------------------
    local Notif = loadstring(game:HttpGet("https://api-sirclub.onrender.com/scripts/raw/notifybottom.lua"))()
    local Main = GUI:Tab{
        Name = "Main Functions",
        Icon = "rbxassetid://9179124493"
    }
    local clover
    Main:Toggle{
        Name = "AutoClover",
        StartingState = false,
        Description = nil,
        Callback = function(state)
            clover = state
            while clover do
                for _,v in pairs(workspace.clova:GetChildren()) do
                    if not clover then break end
                    v:PivotTo(game.Players.LocalPlayer.Character:GetPivot())
                end
                task.wait()      
            end
        end
    }
    Main:Toggle{
        Name = "Toggle AutoRoll",
        StartingState = false,
        Description = nil,
        Callback = function(state)
            game.Players.LocalPlayer.PlayerData.ToggleAutoRoll.Value = state
        end
    }
