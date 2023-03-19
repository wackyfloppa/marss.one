local Esp_Settings = {
  Enabled = false,
  Color = Color3.fromRGB(175,25,255),
}

local FillColor = Esp_Settings.Color
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.2
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    if Esp_Settings.Enabled == true then
      local Highlight = Instance.new("Highlight")
      Highlight.Name = plr.Name
      Highlight.FillColor = FillColor
      Highlight.DepthMode = DepthMode
      Highlight.FillTransparency = FillTransparency
      Highlight.OutlineColor = OutlineColor
      Highlight.OutlineTransparency = 0
      Highlight.Parent = Storage
    
      local plrchar = plr.Character
      if plrchar then
          Highlight.Adornee = plrchar
      end

      connections[plr] = plr.CharacterAdded:Connect(function(char)
          Highlight.Adornee = char
      end)
    end
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
