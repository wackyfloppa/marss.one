-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("marss.one - Lucky Blocks Battlegrounds", "BloodTheme")
-- Movement Tab
local Movement = Window:NewTab("Movement")
local MovementSection = Movement:NewSection("Main movement")
MovementSection:NewSlider("Speedhack", "Change your speed", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MovementSection:NewSlider("Jumphack", "Change your jumppower", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
-- Exploit Tab
local Exploit = Window:NewTab("Exploit")
local ExploitSection = Exploit:NewSection("Lucky blocks giver")
ExploitSection:NewButton("Obtain lucky block", "Obtain a lucky block", function()
    game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
end)
ExploitSection:NewButton("Obtain diamond block", "Obtain a lucky block", function()
    game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
end)
ExploitSection:NewButton("Obtain super block", "Obtain a lucky block", function()
    game.ReplicatedStorage.SpawnSuperBlock:FireServer()
end)
ExploitSection:NewButton("Obtain rainbow block", "Obtain a lucky block", function()
    game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
end)
ExploitSection:NewButton("Obtain galaxy block", "Obtain a lucky block", function()
    game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
end)
local ExploitSection2 = Exploit:NewSection("Destroy")
ExploitSection2:NewButton("Destroy forcefields", "You will be able to enter enemy bases (its broken now)", function()
    for num,ins in pairs(game.Workspace:GetDescendants()) do
        if ins.Name == "ForceFieldCheck" then
           ins:Destroy()
        elseif ins.Name == "Walls" and ins:FindFirstChild("Script") then
           ins:Destroy()
        end
    end
end)
