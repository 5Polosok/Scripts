if game.PlaceId == 17687504411 then
    local CharLevel = 55
    local codes = {"UPDNEXTWEEKEND", "THANKYOUFOR500MVISITS", "2MGROUPMEMBERS", "MBSHUTDOWNB", "THANKYOUFORLIKES123", "NEXTLIKEGOAL500K", "UPD2", "FOLLOWS10KBREAD", "THREEHUNDREDTHOUSANDPLAYERS", "LIKEF5", "AFIRSTTIME3001", "FREENIMBUSMOUNT"}
    for _,v in pairs(codes) do
        local args = {
            {
                Type = "Code",
                Mode = "Redeem",
                Code = v
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetFunction"):InvokeServer(unpack(args))
        task.wait(.1)
    end
    repeat
        local args = {
            {
                Type = "Code",
                Mode = "Level",
                Code = CharLevel
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GetFunction"):InvokeServer(unpack(args))
        CharLevel -= 5
        print(CharLevel)
        task.wait(.1)
    until CharLevel == 0
end
