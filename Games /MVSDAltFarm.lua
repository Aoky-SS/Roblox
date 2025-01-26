local VirtualUser = game:GetService("VirtualUser")
local Player = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")

Player.Idled:Connect(function()
    if _G.AntiAFK then
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end
end)

if _G.AutoFarmV2 then
    if not OriPosV2 then
        OriPosV2 = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end

    autoFarmV2Connection = RunService.RenderStepped:Connect(function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.69468116760254, -106.62535095214844, -194.1999053955078)
        end
    end)
else
    if autoFarmV2Connection then
        autoFarmV2Connection:Disconnect()
        autoFarmV2Connection = nil
    end
    if OriPosV2 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OriPosV2
        OriPosV2 = nil
    end
end
