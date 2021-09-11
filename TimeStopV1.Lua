-- Gui to Lua
-- Version: 3.2
------TIME STOP V1----Made By Lua Boy
 
 
 
-- Instances:
local Tween = game:GetService("TweenService")
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame1 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Frame1ShowPos = "-0.01, 0,0, 0"
local Frame2ShowPos = "-0.01, 0,-0, 0"
local HideBoth = "0, 0,-4.54, 0"
local Zawarudo = Instance.new("Sound")
local ResumeTimeSound = Instance.new("Sound")
local Uis = game:GetService("UserInputService")
Zawarudo.Parent = game.SoundService
ResumeTimeSound.Parent = game.SoundService 
 
--Properties:
ResumeTimeSound.Volume = 1
Zawarudo.Volume = 1
ResumeTimeSound.SoundId = "rbxassetid://5687891658"
Zawarudo.SoundId = "rbxassetid://2415468768"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.294871807, 0, 0.49818182, 0)
Frame.Size = UDim2.new(0, 512, 0, 2)
 
Frame1.Name = "Frame1"
Frame1.Parent = Frame
Frame1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame1.BackgroundTransparency = 1.000
Frame1.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame1.BorderSizePixel = 0
Frame1.ClipsDescendants = true
Frame1.Position = UDim2.new(0.009765625, 0, -50, 0)
Frame1.Size = UDim2.new(0, 502, 0, 100)
 
TextLabel.Parent = Frame1
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0, 0, 2.01999998, 0)
TextLabel.Size = UDim2.new(0, 502, 0, 100)
TextLabel.Font = Enum.Font.Jura
TextLabel.Text = "Made By LuaBoy#9111"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
 
Frame2.Name = "Frame2"
Frame2.Parent = Frame
Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame2.BackgroundTransparency = 1.000
Frame2.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame2.BorderSizePixel = 0
Frame2.ClipsDescendants = true
Frame2.Position = UDim2.new(0.009765625, 0, 1, 0)
Frame2.Size = UDim2.new(0, 502, 0, 100)
 
TextLabel_2.Parent = Frame2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0, 0, -1.9000001, 0)
TextLabel_2.Size = UDim2.new(0, 502, 0, 100)
TextLabel_2.Font = Enum.Font.Jura
TextLabel_2.Text = "Learning While Making"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
 
wait(0.2)
TextLabel:TweenPosition(UDim2.new(Frame1ShowPos),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,1,true,nil)
wait(0.6)
TextLabel_2:TweenPosition(UDim2.new(Frame2ShowPos),Enum.EasingDirection.InOut,Enum.EasingStyle.Back,1,true,nil)
wait(2)
TextLabel.Transparency = 1
wait(0.1)
TextLabel_2.Transparency = 1
wait(0.4)
Frame:TweenSize(UDim2.new(0, 0,0, 2),Enum.EasingDirection.InOut,Enum.EasingStyle.Bounce,2,true,nil)
wait(5)
ScreenGui:Destroy()
 
print("Gui Made By LuaBoy#9111")
print("Script by LuaBoy#9111")
print("Have Fun Cheatin")
 
local player = game.Players.LocalPlayer
local TimeStopped = false
local ChangParts = {}
 
 
local function getGround()
    local char = player.Character or player.CharacterAdded:Wait()
    local hrp = char:WaitForChild('HumanoidRootPart')
    local rp = RaycastParams.new()
    rp.FilterDescendantsInstances = {char}
    rp.FilterType = Enum.RaycastFilterType.Blacklist
    rp.IgnoreWater = true
    local rr = workspace:Raycast(hrp.Position, hrp.Position-Vector3.new(0, 10, 0), rp)
    if not rr then return false end
    if rr.Instance then
        if rr.Instance:IsA("Part") or  rr.Instance:IsA("BasePart") then
            rr.Instance.CanCollide = true
        end
    end
    return false
end
 
 
local TimeStop = function()
    local GetParts = workspace:GetDescendants()
    local HR = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i,v in pairs(GetParts) do
        if v:IsA("Part") or v:IsA("BasePart") then
            table.insert(ChangParts,1,v)
            v.CanCollide = false
            for  _,ChangedPart in pairs(ChangParts) do
                if ChangParts.CanCollide == false then
                    
                else
                    getGround()
                end
            end
        end
    end
end
local ResumeTime = function()
    local GetParts = workspace:GetDescendants()
    local HR = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i,WorkspaceParts in pairs(GetParts) do
        for i,Part in pairs(ChangParts) do
            if Part.Name == WorkspaceParts.Name then
                print(ChangParts)
                repeat WorkspaceParts.CanCollide = true
                until WorkspaceParts.CanCollide == true
                wait(5)
                table.clear(ChangParts)
            elseif Part.CanCollide == false then
                Part.CanCollide = true
            end
        end
    end
end
local AntiFall = function()
    local HR = game.Players.LocalPlayer.Character.HumanoidRootPart
    local AntiFallPart = Instance.new("Part")
    AntiFallPart.Parent = workspace
    AntiFallPart.Name = "ANTIFALLDONTDELETE"
    AntiFallPart.Size = Vector3.new(5,5,5)
    AntiFallPart.Anchored = true
    while true do
        wait()
        if TimeStopped == true then
            AntiFallPart.CFrame = CFrame.new(HR.CFrame.X,-1,HR.CFrame.Z)
        else
            AntiFallPart:Destroy()
            break
        end
    end
    AntiFallPart.Changed:Connect(function()
        AntiFallPart.CanCollide = true
    end)
end
 
Uis.InputBegan:Connect(function(Key,GameProc)
    if GameProc then return end
    if Key.KeyCode == Enum.KeyCode.G then
        if TimeStopped == false then
            TimeStopped = true
            Zawarudo:Play()
            AntiFall()
            TimeStop()
        else
            if TimeStopped == true then
                TimeStopped = false
                ResumeTime()
                ResumeTimeSound:Play()
            end
        end
    end
end)
