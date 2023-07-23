local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/RaCc0oN1/RobloxObf/main/ReworkMercury"))()

local Window = Mercury:Create{
   Name = "Mercury",
   Size = UDim2.fromOffset(600, 400),
   Theme = Mercury.Themes.Dark,
   Link = "https://github.com/deeeity/mercury-lib"
}

local Tab = Window:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://8569322835"
}
local inv_folder = game.Players.LocalPlayer.Backpack
local b_c1 = "Plastic Zombie"
local b_c2 = "BronzeSword"
local b_c3 = "Bronze"
local b_c4
local mob_folder = game.workspace.AllMobs
local ist1
local ist2
local ist3
local plyr = game.Players.LocalPlayer
local vu = game:GetService("VirtualUser") 
plyr.Idled:connect(function()    
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	task.wait(1)        
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

Tab:Dropdown{
	Name = "Dropdown",
	StartingText = "Select...",
	Description = "Mob Dropdown",
	Items = {
	  {"Plastic Zombie [Lv.0]", "Plastic Zombie"},
      {"Plastic Zombie Boss [Lv.3]", "Plastic Zombie Boss"},
	  {"Elite Zombie [Common Boss]", "EliteZombie"},
      {"Sand Elemental [Lv.5]", "Sand Elemental"},
      {"Big Sand Elemental [Lv.5]", "Sand Elemental MiniBoss"},
	  {"Ultimate Sand Elemental [Lv.10]", "Sand Elemental Boss"},
	  {"Vap008 [Rare Boss]", "Vap008"},
	  {"Rock [Lv.15]", "Rock"},
	  {"Bandit [Lv.25]", "Bandit"},
	  {"Big Bandit [Lv.25]", "BanditBoss"},
	  {"Goblin Lord", "GoblinLord"},
	  {"Frozen [Lv.40]", "Frozen"},
	  {"Frozen Shibi [Epic Boss]", "FrozenShibi"},
	  {"Hell Elemental [Lv.75]", "Fire Elemental"},
	  {"Fire's Servant [Lv.75]", "Fire's Servant"},
	  {"Monarch of Flame [Lv.75]", "Monarch of Flame"},
	  {"Water Elemental [Lv.100]", "Water Elemental"},
	  {"Big Water Elemental [Lv.100]", "Big Water Elemental"},
	  {"Enraged Industrial Robot [Lv.150]", "Enraged Industrial Robot"}, 
	  {"Industrial Robot [Lv.150]", "Industrial Robot"},
	  {"Slime [Lv.200]", "Slime"},
	  {"Big Slime [Lv.200]", "Big Slime"},
	  {"Noob Knight [Lv.300]", "Noob Knight"},
	  {"Pro Knight [Lv.300]", "Pro Knight"},
	  {"Colored Monster [Lv.600]", "Colored Monster"},
	  {"Skeleton [Lv.1250]", "Skeleton"},
	  {"Grim Reaper [Lv.1250]", "Grim Reaper"},
	  {"Candy [Lv.2000]", "Candy"},
	  {"Monkey [Lv.3000]", "Monkey"},
	  {"Panda [Lv.3000]", "Panda"},
	  {"Miner [Lv.5000]", "Miner"},
	  {"AngryMiner [Lv.5000]", "AngryMiner"},
	  {"Air", "Air"},
	  {"Chance [Lv.1]", "Chance"},
	  {"Godzilla [Lv.550]", "Godzilla"},
	  {"Gygax [Lv.1000]", "Gygax"},
	  {"Kovik12 [Lv.800]", "Kovik12"},
	  {"Martinsokol502 [Lv.10]", "Martinsokol502"},
	  {"Kitsu [Lv.200]", "Protogen_Dev"},
	  {"Tomas [Lv.1250]", "Tomas"},
	  {"Raffel [Lv.1]", "raffel080108"}
   },
	Callback = function(item)
      b_c1 = item
   end
}

Tab:Slider{
	Name = "Distance",
	Default = 1,
	Min = 1,
	Max = 90,
	Callback = function(getValue) b_c4 = getValue end
}

Tab:Toggle{
	Name = "Toggle Auto Farm",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		ist1 = state
		while ist1 do AutoFarm() end
 	end
}


local Dropdown2 = Tab:Dropdown{
	Name = "Weapons",
	StartingText = "Select...",
	Description = "Weapons Dropdown",
	Items = {},
	Callback = function(item)
      b_c2 = item
   end
}

Tab:Button{
	Name = "Refresh Weapons dropdown",
	Description = nil,
	Callback = function()
		Refresh_Inv_dd()	
      end
}

Tab:Toggle{
	Name = "Toggle Auto Equip Selected",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		ist2 = state
		while ist2 do Autoequip() end
 	end
}

Tab:Dropdown{
	Name = "Dropdown",
	StartingText = "Select...",
	Description = "Armors Dropdown",
	Items = {"Bronze", "Iron", "Silver", "Gold", "Fire", "Water", "Industrial", "EnragedIndustrial", "Slime", "Knight's", "Colored", "Spooky Armor", "Candy Armor", "Jungle"},
	Callback = function(item)
      b_c3 = item
   end
}

Tab:Toggle{
	Name = "Toggle Auto Equip Selected Armor",
	StartingState = false,
	Description = nil,
	Callback = function(state)
		ist3 = state
		while ist3 do AutoequipArmor() end
 	end
}


function AutoFarm()
   while task.wait() do
         for _ ,v in ipairs(mob_folder:GetChildren()) do
            if not ist1 then break end
            if v.Name == b_c1 then   
               local success, failure pcall(function()
                  repeat
                     	if not ist1 then break end
						local success, failure = pcall(function() 
							if tostring(v.Parent) == "AllMobs" then
							v.HumanoidRootPart.CanCollide = false
							workspace[tostring(plyr)].HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame - v.HumanoidRootPart.CFrame.lookVector * (b_c4/10)
							end
						end)
						
							local args = {
								[1] = v:FindFirstChild("HumanoidRootPart"),
								[2] = v.Enemy,
								[3] = game:GetService("Players").LocalPlayer.Character[b_c2]
							}
					
							game:GetService("ReplicatedStorage").GameRemotes.DamageEvent:FireServer(unpack(args))
                     task.wait(0)
                  until v.Enemy.Health <= 0
               end)
         end
      end
   end
end


function Refresh_Inv_dd()
   for _ , v in pairs(inv_folder:GetChildren()) do
	print(v.Name)
		Dropdown2:RemoveItems({
			v.Name	-- just the names to get removed (upper/lower case ignored)
		})
		Dropdown2:AddItems({
			v.Name
		})
   end  
end


function Autoequip()
   while task.wait(3) do
      if not ist2 then break end
      local args = {
         [1] = b_c2,
         [2] = false
      }
      game:GetService("ReplicatedStorage").EquipTool:FireServer(unpack(args))
   end
end

function AutoequipArmor()
	while task.wait(3) do
	   		if not ist3 then break end
			local args = {
				[1] = workspace.Armors:FindFirstChild(b_c3)
			}
			game:GetService("ReplicatedStorage").EquipArmor:FireServer(unpack(args))
	end
 end
 