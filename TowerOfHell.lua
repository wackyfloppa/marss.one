local reg = getreg()
for i, Function in next, reg do
    if type(Function) == 'function' then
        local info = getinfo(Function)
        
        if info.name == 'kick' then
            if (hookfunction(info.func, function(...)end)) then
                print("Client kick disabled")
            else
                print("There was a error disabling it")
            end
        end
    end
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("marss.one - Tower Of Hell", "BloodTheme")

local MainCheats = Window:NewTab("Main")
local MainSection = MainCheats:NewSection("MainCheats")
MainSection:NewSlider("SpeedHack", "Lets you change you walkspeed", 500, 10, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
MainSection:NewSlider("JumpHack", "Lets you change you jumppower", 500, 10, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
MainSection:NewButton("Flight", "Enables flying", function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/WxmvCLLH'),true))()
end)
MainSection:NewToggle("Godmode", "Makes you a god", function(state)
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local check = true
    if state then
        check = true
        local function Invincibility()
        if LocalPlayer.Character then
            for i, v in pairs(LocalPlayer.Character:GetChildren()) do
                if check == true then
                    if v.Name == "hitbox" then
                        v:Destroy()
                    end
                end
            end
        end
    end
    while wait(0.5) do
        Invincibility(LocalPlayer)
    end
    else
        check = false
    end
end)
