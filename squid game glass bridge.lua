local P=game:GetService("Players").LocalPlayer
local g=Instance.new("ScreenGui",P:WaitForChild("PlayerGui"))
g.ResetOnSpawn=false
local b=Instance.new("TextButton")
b.Parent=g
b.Size,b.Position=UDim2.new(0,150,0,60),UDim2.new(1,-160,1,-70)
b.BackgroundColor3,b.TextColor3=Color3.fromRGB(0,170,255),Color3.new(1,1,1)
b.Text,b.TextSize="HIỆN KÍNH\n(Bấm R PC)",18
b.Font,b.TextWrapped=Enum.Font.GothamBold,true
local function s()for _,x in pairs(workspace.GameRunningService.GlassBridges.CorrectGlass:GetDescendants())do if x:IsA("BasePart")then x.Transparency,x.Color=0.7,Color3.fromRGB(0,255,0)end end end
b.MouseButton1Click:Connect(s)
game:GetService("UserInputService").InputBegan:Connect(function(i,gp)if not gp and i.KeyCode==Enum.KeyCode.R then s()end end)
