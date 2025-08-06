repeat task.wait() until game:IsLoaded()
local codes = {"FORGOT40KLIKES", "THANKSFOR50KLIKES", "UPDATEONE", "BONIMARU", "MBFORDELAY", "15MVISITS", "100KBLUEAPP", "SORRYFORTHESHUTDOWN", "THANKSFORALLTHESUPPORT", "UPDATEHALF", "TOBITO",  "RELEASE", "THANKSFOR20KLIKES", "THANKSFOR5KLIKES", "SORRY4SHUTDOWN", "15KCCU", "TRAILER", "THANKSFOR20K", "ILUVAFS"}
--Redeem codes from table
if getgenv().RedeemCodes then
	for _,v in pairs(codes) do
		local args = {
			"RedeemCode",
			v
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RemoteFunction"):InvokeServer(unpack(args))
	end
end
--Collect Daily reward
if getgenv().CollectDaily then
	game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("DailyRewards"):FireServer()
end
--Spin fortune wheel
if getgenv().BuyRRS then
	local args = {
		true
	}
	game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("SpinWheelFunction"):InvokeServer(unpack(args))
end
--Buy goldshop
if getgenv().SpinWheel then
	for i=1,5 do
		local args = {
			"BuyShopItem",
			"GoldShop",
			7,
			1
		}
		game:GetService("ReplicatedStorage"):WaitForChild("LobbyRemotes"):WaitForChild("ShopRemote"):FireServer(unpack(args))
	end
end
