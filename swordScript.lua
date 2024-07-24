repeat 
	wait(1)
until game:IsLoaded()
local player = game.Players.LocalPlayer
local sword = script.Parent.Union
local swordPos = player.PlayerScripts.swordPosition
local handle = script.Parent.Handle
local prevOr = nil
local prevPos = nil

local function moveSword(x, y, z)
	sword.PivotOffset = CFrame.new(0, -4, .5)
	handle.WeldConstraint.Part1 = nil
	sword.Anchored = true
	prevOr = sword.Orientation
	prevPos = sword.Position
	sword:PivotTo(sword:GetPivot() * CFrame.Angles(math.rad(x), math.rad(y), math.rad(z)))
	sword.Anchored = false
	handle.WeldConstraint.Part1 = sword
	task.wait(1)
	sword.Orientation = handle.Orientation
	sword.Position = handle.Position + Vector3.new(.5, 4, 0)
end


game.UserInputService.InputBegan:Connect(function(input: InputObject, gameProcessedEvent: boolean) 
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		print("Attacked")
		if swordPos.Value == 1 then
			print("BotomLeft")
			moveSword(-75, 45, 45)
		end
		if swordPos.Value == 2 then
			print("BotomLeft")
			moveSword(-65, 45, 5)
		end
		if swordPos.Value == 3 then
			print("BotomLeft")
			moveSword(-35, 45, -40)
		end		
		if swordPos.Value == 5 then
			print("BotomLeft")
			moveSword(-45, 45, -45)
		end
		if swordPos.Value == 5 then
			print("BotomLeft")
			moveSword(-45, 45, -45)
		end
		
		if swordPos.Value == 6 then
			print("BotomLeft")
			moveSword(-90, -45, 45)
		if swordPos.Value == 8 then
			print("BotomLeft")
			moveSword(-90, 45, -45)
		end
		
		
		
		end
	end
end)
game.UserInputService.InputBegan:Connect(function(input: InputObject, gameProcessedEvent: boolean) 
	if input.UserInputType == Enum.UserInputType.MouseButton2 then

	end
end)
