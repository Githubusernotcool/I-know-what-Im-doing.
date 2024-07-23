repeat
	wait()
until game:IsLoaded()



local camera = game.Workspace.CurrentCamera
print(camera)
local focusCamera = false
local player = game.Players.LocalPlayer
local character = player.Character
local part = Instance.new("Part", character)
part.Anchored = true
part.CanCollide = false

local tweenService = game:GetService("TweenService")
local runService = game:GetService("RunService")

runService.RenderStepped:Connect(function()
 local tween = tweenService:Create(part, TweenInfo.new(1, Enum.EasingStyle.Circular), {CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 6)})
 tween:Play()
 camera.CFrame = part.CFrame
end)



game.UserInputService.InputBegan:Connect(function(input)	
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		focusCamera = false
		print("Rightclicked.")
	end
end)

game.UserInputService.InputEnded:Connect(function(input: InputObject, gameProcessedEvent: boolean) 
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		focusCamera = true
		print("STOP")
		while focusCamera == true do

			camera.CFrame = CFrame.lookAt(camera.CFrame.Position, game.Workspace.Part.Position)
			wait(.01)
		end
	end	
end)




