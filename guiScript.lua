local topLeft = script.Parent.topLeft
local topMiddle = script.Parent.topMiddle
local topRight = script.Parent.topRight
local middleLeft = script.Parent.middleLeft
local middleRight = script.Parent.middleRight
local bottomLeft = script.Parent.bottomLeft
local bottomMiddle = script.Parent.bottomMiddle
local bottomRight = script.Parent.bottomRight

local debounce = false
local Player = script.Parent.Parent.Parent
local char = Player.Character
local value = Player.PlayerScripts:FindFirstChild("swordPosition")
print(topLeft)

topLeft.MouseEnter:Connect(function(x: number, y: number)
	if debounce == false then
		value.Value = 1
		debounce = true
	end

end)

topMiddle.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 2
		debounce = true
	end

end)
topRight.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 3
		print("NATHAN")
		debounce = true
	end

end)
middleLeft.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 4
		debounce = true
	end

end)
middleRight.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 5
		debounce = true
	end

end)
bottomLeft.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 6
		debounce = true
	end

end)
bottomMiddle.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 7
		debounce = true
	end

end)
bottomRight.MouseEnter:Connect(function(x: number, y: number) 
	if debounce == false then
		value.Value = 8
		debounce = true
	end

end)

topLeft.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
topMiddle.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
topRight.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
middleLeft.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
middleRight.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
bottomLeft.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
bottomMiddle.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
	end
end)
bottomRight.MouseLeave:Connect(function(x: number, y: number) 
	if debounce == true then
		debounce = false
		print(debounce)
	end
end)

game.UserInputService.InputBegan:Connect(function(input: InputObject, gameProcessedEvent: boolean) 

	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		print("MOUSECLICEKD")
	end
end)
