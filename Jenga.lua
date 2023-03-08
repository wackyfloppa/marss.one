-- Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("marss.one - Jenga", "BloodTheme")
-- Library UI
-- Main Tab
local Main = Window:NewTab("Main")
local MovementSection = Main:NewSection("Movement")
MovementSection:NewSlider("Speedhack", "Change your speed", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MovementSection:NewSlider("Jumphack", "Change your jumppower", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
MovementSection:NewButton("Flight", "Enables flying", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/WxmvCLLH'),true))()
end)
local DestroySection = Main:NewSection("Destroy")
DestroySection:NewButton("Destroy kill brick", "Destroy the kill brick under the tower", function()
    game.Workspace.Map.Classic.KillBrick:Destroy()
end)
DestroySection:NewButton("Destroy objects", "Destroy the destroyer's objects", function()
    game.Workspace.Projectiles:Destroy()
end)
local OtherSection = Main:NewSection("Other")
OtherSection:NewButton("End game", "End the current game", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-65.85745239257812, 99.9999771118164, -18.305282592773438)
end)
