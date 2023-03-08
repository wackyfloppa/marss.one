-- this is a old script so its bad yea

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("marss.one - Prison Life", "BloodTheme")

local MainCheats = Window:NewTab("Main")
local MainSection = MainCheats:NewSection("MainCheats")
MainSection:NewSlider("SpeedHack", "Lets you change you walkspeed", 500, 10, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("JumpHack", "Lets you change you jumppower", 500, 10, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
MainSection:NewDropdown("GunGiver", "Gives you a gun", {"M9", "Remington 870", "AK-47"}, function(gun)
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[gun].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
end)
MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
    local module = nil
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
    elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
        module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
    end
    if module ~= nil then
        module["MaxAmmo"] = 9999999
        module["CurrentAmmo"] = 9999999
        module["StoredAmmo"] = 9999999
        module["FireRate"] = 0.000001
        module["Spread"] = 0
        module["Range"] = 999
        module["Bullets"] = 10
        module["ReloadTime"] = 0.000001
        module["AutoFire"] = true
    end
end)
MainSection:NewButton("InfJump", "Makes you infinite jump", function()
    game:GetService("UserInputService").JumpRequest:connect(function()
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end)
end)
