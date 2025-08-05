repeat task.wait() until game:IsLoaded()
local codes = {"THANKSFOR50KLIKES", "UPDATEONE", "BONIMARU", "MBFORDELAY", "15MVISITS", "100KBLUEAPP", "SORRYFORTHESHUTDOWN", "THANKSFORALLTHESUPPORT", "UPDATEHALF", "TOBITO",  "RELEASE", "THANKSFOR20KLIKES", "THANKSFOR5KLIKES", "SORRY4SHUTDOWN", "15KCCU", "TRAILER", "THANKSFOR20K", "ILUVAFS"}
for _,v in pairs(codes) do
    local args = {
	    "RedeemCode",
	    v
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
end
task.wait(.1)
game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("DailyRewards"):FireServer()
task.wait(.1)
local args = {
	"ClaimBattlepass",
	"Season2"
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
task.wait(.1)
local args = {
	true
}
game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("SpinWheelFunction"):InvokeServer(unpack(args))
task.wait(.1)
local args = {
	"BuyShopItem",
	"GoldShop",
	7,
	5
}
game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("ShopRemote"):FireServer(unpack(args))
