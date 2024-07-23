repeat
	wait(1)
until game:IsLoaded()



local camera = game.Workspace.CurrentCamera
local focusCamera = false
local player = game.Players.LocalPlayer
local character = player.Character
local HRP = character:WaitForChild("HumanoidRootPart")
local RS = game:GetService("RunService")


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

 
			RS:BindToRenderStep("LockCamera", 201, function()
				HRP.CFrame = CFrame.lookAt(HRP.Position, game.Workspace.Part.Position)
				camera.CameraType = Enum.CameraType.Scriptable
				camera.CFrame = HRP.CFrame * CFrame.new(3, 1, 6)
			end)
			wait(.01)
		end
	end	
end)
