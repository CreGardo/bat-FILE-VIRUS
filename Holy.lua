local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Trojan Exploit",
   LoadingTitle = "Loading...",
   LoadingSubtitle = "by Trojan",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, 
      FileName = "Trojan Exploit"
   },
   Discord = {
      Enabled = true,
      Invite = "8j2c57gjKM", 
      RememberJoins = true 
   },
   KeySystem = true, 
   KeySettings = {
      Title = "Trojan HUB License",
      Subtitle = "Join Discord for get License",
      Note = "Join /https://discord.gg/8j2c57gjKM",
      FileName = "Key", 
        SaveKey = true, 
      GrabKeyFromSite = false, 
      Key = {"8pVB2XEAG4m3QrPeZ6HMyV7fJYt69NYwV4X6KRIkMggNUzoQwtHXZ3svnxxO3XmshpqGvR"} 
   }
})

local client = game.Players.LocalPlayer
local WhiteList = {6050924175, 987654321, 7207710785}

local isAllowed = false

for _, id in ipairs(WhiteList) do
    if client.UserId == id then 
        isAllowed = true
        break
    end
end

if not isAllowed then
    client:Kick("화이트 리스트에 등록 되어있지 않습니다! 디스코드에서 화이트리스트를 등록하세요. 디스코드 : 8j2c57gjKM")  
end

Rayfield:Notify({
   Title = "Trojan HUB",
   Content = "허브 준비 완료 권남게임을 조져봐요",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Best User!")
      end
   },
},
})

local Tab = Window:CreateTab("플레이어 스크립트", nil) -- Title, Image
local Section = Tab:CreateSection("플레이어")
 
local bladeTab = Window:CreateTab("블레이드볼 스크립트", nil) -- Title, Image
local bladeSection = bladeTab:CreateSection("블레이드볼")
 
local bedTab = Window:CreateTab("배드워즈 스크립트 ", nil) -- Title, Image
local bedSection = bedTab:CreateSection("배드워즈")
 
local buddaTab = Window:CreateTab("부대 테러 스크립트", nil) -- Title, Image
local buddaSection = buddaTab:CreateSection("부대 테러")
 
local fruitTab = Window:CreateTab("블피 스크립트", nil) -- Title, Image
local fruitSection = fruitTab:CreateSection("블피")
 
local anoTab = Window:CreateTab("다른 스크립트 ", nil) -- Title, Image
local anoSection = anoTab:CreateSection("스크립트들")
 
Rayfield:Notify({
   Title = "허브가 완벽하게 실행 되었습니다",
   Content = "Made by LocalX",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "가보자!",
         Callback = function()
         print("허브가 실행 되었습니다")
      end
   },
},
})
 
local Button = anoTab:CreateButton({
   Name = "어드민 스크립트 ",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})
 
local Button = anoTab:CreateButton({
   Name = "사람 날리기",
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))() 
   end,
})
 
local Button = bedTab:CreateButton({
   Name = "배드워즈 스크립트",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/AFGCLIENT/Snyware/main/Loader'))()
   end,
})
 
 
local Button = anoTab:CreateButton({
   Name = "맵복사",
   Callback = function()
    saveinstance()
   end,
})
 
local Button = Tab:CreateButton({
   Name = "체력 즉시 회복",
   Callback = function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 1000000000000000000000
   end,
})
 
local Slider = Tab:CreateSlider({
   Name = "스피드",
   Range = {10, 500},
   Increment = 1,
   Suffix = "스피드",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})
 
local Button = anoTab:CreateButton({
   Name = "ESP",
   Callback = function()
    local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"
 
for i, v in pairs(Players) do
    repeat wait() until v.Character
    if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = v.Character
        highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlightClone.Name = "Highlight"
    end
end
 
game.Players.PlayerAdded:Connect(function(player)
    repeat wait() until player.Character
    if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
        local highlightClone = highlight:Clone()
        highlightClone.Adornee = player.Character
        highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        highlightClone.Name = "Highlight"
    end
end)
 
game.Players.PlayerRemoving:Connect(function(playerRemoved)
    playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)
 
RunService.Heartbeat:Connect(function()
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
            task.wait()
        end
end
end)
   end,
})
 
local Slider = Tab:CreateSlider({
   Name = "점프 파워",
   Range = {10, 500},
   Increment = 1,
   Suffix = "점프 파워",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
 
local Button = buddaTab:CreateButton({
   Name = "Acs 2.0.1 킬올",
   Callback = function()
    --while wait() do
    local DR = game:GetService("ReplicatedStorage")["ACS_Engine"].Eventos.Damage
 
for PlayerIndex,GivenPlayer in pairs(game.Players:GetPlayers()) do
    local Char = GivenPlayer.Character
    DR:FireServer(Char.Humanoid,Char.Humanoid.MaxHealth,0,0)
            end
   end,
})
 
local Button = buddaTab:CreateButton({
   Name = "Acs 1.7.5 킬올",
   Callback = function()
    --while wait() do
    local DR = game:GetService("ReplicatedStorage")["ACS_Engine"].Eventos.Damage
 
for PlayerIndex,GivenPlayer in pairs(game.Players:GetPlayers()) do
    local Char = GivenPlayer.Character
    DR:FireServer(Char.Humanoid,Char.Humanoid.MaxHealth,0,0)
            end
   end,
})
 
local Button = buddaTab:CreateButton({
   Name = "CE 엔진 loopkill all 못멈춤",
   Callback = function()
    		while true do
    if game.ReplicatedStorage:FindFirstChild("CarbonResource") then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local event = game.ReplicatedStorage.CarbonResource.Events:GetChildren()[4]
                if event then
                    event:FireServer(player.Character and player.Character:FindFirstChild("Humanoid"), 1000, "Head", {'nil', 'Auth', 'nil', 'nil'})
                end
            end
        end
    end
    wait(0.0001)
end
   end,
})

local Button = buddaTab:CreateButton({
   Name = "CE 엔진 킬올",
   Callback = function()
    if game.ReplicatedStorage:FindFirstChild("CarbonResource") then
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local event = game.ReplicatedStorage.CarbonResource.Events:GetChildren()[4]
                if event then
                    event:FireServer(player.Character and player.Character:FindFirstChild("Humanoid"), 1000, "Head", {'nil', 'Auth', 'nil', 'nil'})
                end
            end
        end
    end
   end,
})
 
local Button = Tab:CreateButton({
   Name = "투명 (L) ",
   Callback = function()
    local ScriptStarted = false
local Keybind = "L" --Set to whatever you want, has to be the name of a KeyCode Enum.
local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
local NoClip = false --Will make your fake character no clip.
 
local Player = game:GetService("Players").LocalPlayer
local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
 
local IsInvisible = false
 
RealCharacter.Archivable = true
local FakeCharacter = RealCharacter:Clone()
local Part
Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
Part.CanCollide = true
FakeCharacter.Parent = workspace
FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
 
for i, v in pairs(RealCharacter:GetChildren()) do
  if v:IsA("LocalScript") then
      local clone = v:Clone()
      clone.Disabled = true
      clone.Parent = FakeCharacter
  end
end
if Transparency then
  for i, v in pairs(FakeCharacter:GetDescendants()) do
      if v:IsA("BasePart") then
          v.Transparency = 0.7
      end
  end
end
local CanInvis = true
function RealCharacterDied()
  CanInvis = false
  RealCharacter:Destroy()
  RealCharacter = Player.Character
  CanInvis = true
  isinvisible = false
  FakeCharacter:Destroy()
  workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
 
  RealCharacter.Archivable = true
  FakeCharacter = RealCharacter:Clone()
  Part:Destroy()
  Part = Instance.new("Part", workspace)
  Part.Anchored = true
  Part.Size = Vector3.new(200, 1, 200)
  Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
  Part.CanCollide = true
  FakeCharacter.Parent = workspace
  FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
 
  for i, v in pairs(RealCharacter:GetChildren()) do
      if v:IsA("LocalScript") then
          local clone = v:Clone()
          clone.Disabled = true
          clone.Parent = FakeCharacter
      end
  end
  if Transparency then
      for i, v in pairs(FakeCharacter:GetDescendants()) do
          if v:IsA("BasePart") then
              v.Transparency = 0.7
          end
      end
  end
 RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
 Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
end
RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
local PseudoAnchor
game:GetService "RunService".RenderStepped:Connect(
  function()
      if PseudoAnchor ~= nil then
          PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
      end
       if NoClip then
      FakeCharacter.Humanoid:ChangeState(11)
       end
  end
)
 
PseudoAnchor = FakeCharacter.HumanoidRootPart
local function Invisible()
  if IsInvisible == false then
      local StoredCF = RealCharacter.HumanoidRootPart.CFrame
      RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = StoredCF
      RealCharacter.Humanoid:UnequipTools()
      Player.Character = FakeCharacter
      workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
      PseudoAnchor = RealCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = false
          end
      end
 
      IsInvisible = true
  else
      local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
 
      RealCharacter.HumanoidRootPart.CFrame = StoredCF
 
      FakeCharacter.Humanoid:UnequipTools()
      Player.Character = RealCharacter
      workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
      PseudoAnchor = FakeCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = true
          end
      end
      IsInvisible = false
  end
end
 
game:GetService("UserInputService").InputBegan:Connect(
  function(key, gamep)
      if gamep then
          return
      end
      if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
          if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
              Invisible()
          end
      end
  end
)
local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisible Toggle Loaded",["Text"] = "Press "..Keybind.." to become change visibility.",["Duration"] = 20,["Button1"] = "Okay."})
   end,
})
 
local Button = Tab:CreateButton({
   Name = "투명 (L) ",
   Callback = function()
    local ScriptStarted = false
local Keybind = "L" --Set to whatever you want, has to be the name of a KeyCode Enum.
local Transparency = true --Will make you slightly transparent when you are invisible. No reason to disable.
local NoClip = false --Will make your fake character no clip.
 
local Player = game:GetService("Players").LocalPlayer
local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
 
local IsInvisible = false
 
RealCharacter.Archivable = true
local FakeCharacter = RealCharacter:Clone()
local Part
Part = Instance.new("Part", workspace)
Part.Anchored = true
Part.Size = Vector3.new(200, 1, 200)
Part.CFrame = CFrame.new(0, -500, 0) --Set this to whatever you want, just far away from the map.
Part.CanCollide = true
FakeCharacter.Parent = workspace
FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
 
for i, v in pairs(RealCharacter:GetChildren()) do
  if v:IsA("LocalScript") then
      local clone = v:Clone()
      clone.Disabled = true
      clone.Parent = FakeCharacter
  end
end
if Transparency then
  for i, v in pairs(FakeCharacter:GetDescendants()) do
      if v:IsA("BasePart") then
          v.Transparency = 0.7
      end
  end
end
local CanInvis = true
function RealCharacterDied()
  CanInvis = false
  RealCharacter:Destroy()
  RealCharacter = Player.Character
  CanInvis = true
  isinvisible = false
  FakeCharacter:Destroy()
  workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
 
  RealCharacter.Archivable = true
  FakeCharacter = RealCharacter:Clone()
  Part:Destroy()
  Part = Instance.new("Part", workspace)
  Part.Anchored = true
  Part.Size = Vector3.new(200, 1, 200)
  Part.CFrame = CFrame.new(9999, 9999, 9999) --Set this to whatever you want, just far away from the map.
  Part.CanCollide = true
  FakeCharacter.Parent = workspace
  FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
 
  for i, v in pairs(RealCharacter:GetChildren()) do
      if v:IsA("LocalScript") then
          local clone = v:Clone()
          clone.Disabled = true
          clone.Parent = FakeCharacter
      end
  end
  if Transparency then
      for i, v in pairs(FakeCharacter:GetDescendants()) do
          if v:IsA("BasePart") then
              v.Transparency = 0.7
          end
      end
  end
 RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
 Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
end
RealCharacter.Humanoid.Died:Connect(function()
 RealCharacter:Destroy()
 FakeCharacter:Destroy()
 end)
Player.CharacterAppearanceLoaded:Connect(RealCharacterDied)
local PseudoAnchor
game:GetService "RunService".RenderStepped:Connect(
  function()
      if PseudoAnchor ~= nil then
          PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
      end
       if NoClip then
      FakeCharacter.Humanoid:ChangeState(11)
       end
  end
)
 
PseudoAnchor = FakeCharacter.HumanoidRootPart
local function Invisible()
  if IsInvisible == false then
      local StoredCF = RealCharacter.HumanoidRootPart.CFrame
      RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = StoredCF
      RealCharacter.Humanoid:UnequipTools()
      Player.Character = FakeCharacter
      workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
      PseudoAnchor = RealCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = false
          end
      end
 
      IsInvisible = true
  else
      local StoredCF = FakeCharacter.HumanoidRootPart.CFrame
      FakeCharacter.HumanoidRootPart.CFrame = RealCharacter.HumanoidRootPart.CFrame
 
      RealCharacter.HumanoidRootPart.CFrame = StoredCF
 
      FakeCharacter.Humanoid:UnequipTools()
      Player.Character = RealCharacter
      workspace.CurrentCamera.CameraSubject = RealCharacter.Humanoid
      PseudoAnchor = FakeCharacter.HumanoidRootPart
      for i, v in pairs(FakeCharacter:GetChildren()) do
          if v:IsA("LocalScript") then
              v.Disabled = true
          end
      end
      IsInvisible = false
  end
end
 
game:GetService("UserInputService").InputBegan:Connect(
  function(key, gamep)
      if gamep then
          return
      end
      if key.KeyCode.Name:lower() == Keybind:lower() and CanInvis and RealCharacter and FakeCharacter then
          if RealCharacter:FindFirstChild("HumanoidRootPart") and FakeCharacter:FindFirstChild("HumanoidRootPart") then
              Invisible()
          end
      end
  end
)
local Sound = Instance.new("Sound",game:GetService("SoundService"))
Sound.SoundId = "rbxassetid://232127604"
Sound:Play()
game:GetService("StarterGui"):SetCore("SendNotification",{["Title"] = "Invisible Toggle Loaded",["Text"] = "Press "..Keybind.." to become change visibility.",["Duration"] = 20,["Button1"] = "Okay."})
   end,
})
 
local Button = fruitTab:CreateButton({
   Name = "블피 스크립트 (솔라라 노작동)",
   Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
   end,
})
 
local Slider = fruitTab:CreateSlider({
   Name = "대쉬 거리",
   Range = {10, 500},
   Increment = 1,
   Suffix = "대쉬 거리 ",
   CurrentValue = 10,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
    game.Players.LocalPlayer.Character:SetAttribute("DashLength", Value)
   end,
})
 
local Button = anoTab:CreateButton({
   Name = "고스트 허브",
   Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
   end,
})
 
local Button = anoTab:CreateButton({
   Name = "중력 바꾸기 (e)",
   Callback = function()
    loadstring(game:HttpGet('https://cdn.wearedevs.net/scripts/Gravity%20Switch.txt'))()
   end,
})
 
local Button = anoTab:CreateButton({
   Name = "사람 이름으로 날리기",
   Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/3ULUe5z4'))()
   end,
})
 
local Button = buddaTab:CreateButton({
   Name = "CE경로 체크 (폭발 실행전 먼저하기)",
   Callback = function()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CResource = ReplicatedStorage:WaitForChild("CarbonResource", 3)
local Players = game:GetService("Players")
local Events = {}

Players.LocalPlayer.Character.Humanoid.Health = 0
task.wait(0.3)

for idx, remote in pairs(CResource.Events:GetChildren()) do
    Events[remote.Name] = remote
end

print(Events["DamageEvent"])
   end,
})
 
local Button = buddaTab:CreateButton({
   Name = "CE엔진 폭발",
   Callback = function()
Events["ExplosiveEvent"]:FireServer("Xsi-On-Top", game:GetService("Players").LocalPlayer.Character:GetPivot().Position, 50000, 10, 10, nil, nil, nil, nil, nil, nil,nil, "Auth")
   end,
})

local Button = buddaTab:CreateButton({
   Name = "수갑 올킬 (수갑 있어야함)",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Applehollyday7/Apple_GUI/main/cave%20army%20killall", true))();
   end,
})

local Button = buddaTab:CreateButton({
   Name = "Acs 블록 설치",
   Callback = function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Event = ReplicatedStorage:WaitForChild("ACS_Engine", 3).Events.Breach 
local Players = game:GetService("Players")

Event:InvokeServer(3,{Fortified={},Destroyable=workspace},CFrame.new(),CFrame.new(),{CFrame=Players.LocalPlayer.Character:GetPivot().Position,Size=Vector3.new(10,10,10)})
   end,
})

local Button = Tab:CreateButton({
   Name = "무한 점프",
   Callback = function()
      game:GetService("UserInputService").JumpRequest:Connect(function()
         game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
      end)
   end
})
