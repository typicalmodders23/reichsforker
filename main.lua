-- Gui to Lua
-- Version: 3.2

-- Instances:

local Magic = Instance.new("ScreenGui")
local traning = Instance.new("Frame")
local closePointer = Instance.new("TextButton")
local Inferum = Instance.new("TextButton")
local protego_diabolica = Instance.new("TextButton")
local pruina_temperstatis = Instance.new("TextButton")
local Name = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

Magic.Name = "Magic"
Magic.Parent = game.CoreGui

traning.Name = "traning"
traning.Parent = Magic
traning.BackgroundColor3 = Color3.fromRGB(32, 28, 28)
traning.Position = UDim2.new(0.211294144, 0, 0.170523852, 0)
traning.Size = UDim2.new(0, 607, 0, 361)

closePointer.Name = "closePointer"
closePointer.Parent = traning
closePointer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closePointer.BackgroundTransparency = 1.000
closePointer.Position = UDim2.new(0.901153207, 0, 0.0277008303, 0)
closePointer.Size = UDim2.new(0, 52, 0, 50)
closePointer.Font = Enum.Font.SourceSans
closePointer.Text = "╳"
closePointer.TextColor3 = Color3.fromRGB(255, 255, 255)
closePointer.TextSize = 28.000

Inferum.Name = "Inferum"
Inferum.Parent = traning
Inferum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inferum.BackgroundTransparency = 1.000
Inferum.Position = UDim2.new(0.062602967, 0, 0.335180044, 0)
Inferum.Size = UDim2.new(0, 111, 0, 45)
Inferum.Font = Enum.Font.SourceSansBold
Inferum.Text = "Inferum"
Inferum.TextColor3 = Color3.fromRGB(0, 0, 0)
Inferum.TextScaled = true
Inferum.TextSize = 14.000
Inferum.TextWrapped = true

protego_diabolica.Name = "protego_diabolica"
protego_diabolica.Parent = traning
protego_diabolica.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
protego_diabolica.BackgroundTransparency = 1.000
protego_diabolica.Position = UDim2.new(0.718286633, 0, 0.335180044, 0)
protego_diabolica.Size = UDim2.new(0, 111, 0, 45)
protego_diabolica.Font = Enum.Font.SourceSansBold
protego_diabolica.Text = "protego diabolica"
protego_diabolica.TextColor3 = Color3.fromRGB(0, 0, 0)
protego_diabolica.TextScaled = true
protego_diabolica.TextSize = 14.000
protego_diabolica.TextWrapped = true

pruina_temperstatis.Name = "pruina_ temperstatis"
pruina_temperstatis.Parent = traning
pruina_temperstatis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pruina_temperstatis.BackgroundTransparency = 1.000
pruina_temperstatis.Position = UDim2.new(0.408566713, 0, 0.335180044, 0)
pruina_temperstatis.Size = UDim2.new(0, 111, 0, 45)
pruina_temperstatis.Font = Enum.Font.SourceSansBold
pruina_temperstatis.Text = "Pruina temperatisits"
pruina_temperstatis.TextColor3 = Color3.fromRGB(0, 0, 0)
pruina_temperstatis.TextScaled = true
pruina_temperstatis.TextSize = 14.000
pruina_temperstatis.TextWrapped = true

Name.Name = "Name"
Name.Parent = traning
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.Position = UDim2.new(0.0918816552, 0, 0.0493298844, 0)
Name.Size = UDim2.new(0, 446, 0, 62)
Name.Image = "rbxassetid://2851926732"
Name.ImageColor3 = Color3.fromRGB(16, 14, 14)
Name.ScaleType = Enum.ScaleType.Slice
Name.SliceCenter = Rect.new(12, 12, 12, 12)

TextLabel.Parent = Name
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.15919283, 0, 0.0483870953, 0)
TextLabel.Size = UDim2.new(0, 323, 0, 56)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "Magic training v1.0"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function XARUE_fake_script() -- closePointer.LocalScript 
	local script = Instance.new('LocalScript', closePointer)

	local Frame = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		Frame.Visible = false
	end)
end
coroutine.wrap(XARUE_fake_script)()
local function HTMLLEG_fake_script() -- traning.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', traning)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(HTMLLEG_fake_script)()


Inferum.MouseButton1Click:Connect(function()
	local args = {
		[1] = {
			["distance"] = 32.01683034571534,
			["spellName"] = "infernum"
		}
	}

	game:GetService("InsertService").Events.uniqueSpell:FireServer(unpack(args))

end)


protego_diabolica.MouseButton1Click:Connect(function()
	local args = {
		[1] = {
			["distance"] = 32.01683034571534,
			["spellName"] = "protego diabolica"
		}
	}

	game:GetService("InsertService").Events.uniqueSpell:FireServer(unpack(args))

end)



pruina_temperstatis.MouseButton1Click:Connect(function()
	local args = {
		[1] = {
			["distance"] = 21.665488686355722,
			["spellName"] = "pruina tempestatis"
		}
	}

	game:GetService("InsertService").Events.uniqueSpell:FireServer(unpack(args))
end)
