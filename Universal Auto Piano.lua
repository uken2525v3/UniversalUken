local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")

local test_AP = Instance.new("ScreenGui")
local bg = Instance.new("Frame")
local test = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local step1 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local step2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local close = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local UICorner_6 = Instance.new("UICorner")
local stop = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local play = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local toggle = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local display = Instance.new("TextLabel")
local UICorner_10 = Instance.new("UICorner")

test_AP.Name = "test_AP"
test_AP.Parent = game:GetService("CoreGui") and game:GetService("CoreGui") or game.Players.LocalPlayer:WaitForChild("PlayerGui")
test_AP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

bg.Name = "bg"
bg.Parent = test_AP
bg.Active = true
bg.Draggable = true
bg.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
bg.BorderColor3 = Color3.fromRGB(0, 0, 0)
bg.BorderSizePixel = 0
bg.Position = UDim2.new(0.299546927, 0, 0.335206985, 0)
bg.Size = UDim2.new(0.0957215354, 0, 0.218579233, 0)

test.Name = "test"
test.Parent = bg
test.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
test.BorderColor3 = Color3.fromRGB(0, 0, 0)
test.BorderSizePixel = 0
test.Position = UDim2.new(-0.0813008174, 0, -0.0662251636, 0)
test.Size = UDim2.new(1, 0, 1, 0)

UICorner.Parent = test

TextBox.Parent = bg
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(-0.0265417397, 0, 0.0378573425, 0)
TextBox.Size = UDim2.new(0.883407116, 0, 0.49186492, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.PlaceholderText = "Put your note here!"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.RichText = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.Parent = TextBox

display.Name = "display"
display.Parent = bg
display.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
display.BorderColor3 = Color3.fromRGB(0, 0, 0)
display.BorderSizePixel = 0
display.Position = UDim2.new(-0.0270000007, 0, 0.0379999988, 0)
display.Size = UDim2.new(0.883000016, 0, 0.492000014, 0)
display.Font = Enum.Font.SourceSans
display.TextColor3 = Color3.fromRGB(255, 255, 255)
display.TextSize = 14.000
display.Visible = false
display.TextWrapped = true
display.RichText = true
display.TextXAlignment = Enum.TextXAlignment.Left
display.TextYAlignment = Enum.TextYAlignment.Top

UICorner_10.Parent = display

step1.Name = "step1"
step1.Parent = bg
step1.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
step1.BorderColor3 = Color3.fromRGB(0, 0, 0)
step1.BorderSizePixel = 0
step1.Position = UDim2.new(-0.0196295083, 0, 0.757173896, 0)
step1.Size = UDim2.new(0.420670122, 0, 0.135910124, 0)
step1.Font = Enum.Font.RobotoMono
step1.Text = "["
step1.TextColor3 = Color3.fromRGB(255, 255, 255)
step1.TextSize = 14.000

UICorner_3.Parent = step1

step2.Name = "step2"
step2.Parent = bg
step2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
step2.BorderColor3 = Color3.fromRGB(0, 0, 0)
step2.BorderSizePixel = 0
step2.Position = UDim2.new(0.435557276, 0, 0.757173896, 0)
step2.Size = UDim2.new(0.420670033, 0, 0.135910124, 0)
step2.Font = Enum.Font.RobotoMono
step2.Text = "]"
step2.TextColor3 = Color3.fromRGB(255, 255, 255)
step2.TextSize = 14.000

UICorner_4.Parent = step2

close.Name = "close"
close.Parent = bg
close.BackgroundColor3 = Color3.fromRGB(126, 0, 0)
close.BorderColor3 = Color3.fromRGB(0, 0, 0)
close.BorderSizePixel = 0
close.Position = UDim2.new(0.834138274, 0, -0.13432838, 0)
close.Size = UDim2.new(0.211382121, 0, 0.172185436, 0)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 14.000

UICorner_5.Parent = close

UICorner_6.Parent = bg

stop.Name = "stop"
stop.Parent = bg
stop.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
stop.BorderColor3 = Color3.fromRGB(0, 0, 0)
stop.BorderSizePixel = 0
stop.Position = UDim2.new(0.435557276, 0, 0.582432568, 0)
stop.Size = UDim2.new(0.420670033, 0, 0.135910004, 0)
stop.Font = Enum.Font.RobotoMono
stop.Text = "Stop"
stop.TextColor3 = Color3.fromRGB(255, 255, 255)
stop.TextSize = 14.000

UICorner_7.Parent = stop

play.Name = "play"
play.Parent = bg
play.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
play.BorderColor3 = Color3.fromRGB(0, 0, 0)
play.BorderSizePixel = 0
play.Position = UDim2.new(-0.0196295083, 0, 0.582432568, 0)
play.Size = UDim2.new(0.420670122, 0, 0.135910004, 0)
play.Font = Enum.Font.RobotoMono
play.Text = "Play"
play.TextColor3 = Color3.fromRGB(255, 255, 255)
play.TextSize = 14.000

UICorner_8.Parent = play

toggle.Name = "toggle"
toggle.Parent = test_AP
toggle.AnchorPoint = Vector2.new(0.5, 0.5)
toggle.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
toggle.BorderSizePixel = 0
toggle.Position = UDim2.new(0.158085585, 0, 0.292349696, 0)
toggle.Size = UDim2.new(0.049311094, 0, 0.0846994519, 0)
toggle.Font = Enum.Font.RobotoMono
toggle.Text = "Piano AutoPlayer Toggle"
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.TextScaled = true
toggle.TextSize = 14.000
toggle.TextWrapped = true

UICorner_9.Parent = toggle

UIAspectRatioConstraint.Parent = toggle

local IsOpenning = true
local IsPlaying = false
local IsPressed = false
local IsHolding = false
local test = false

local PlayingColor = "'#D6FFFD'"
local SelectedColor = "'#00CFFF'"

local CurrentNotes = ""
local DisplayNote = ""
local ColoredText = ""
local CurrentIndex = 1

local stepKeybinds = {
	Enum.KeyCode.LeftBracket,
	Enum.KeyCode.RightBracket
}

-- lowercase / unshifted characters
local cap_off = {
	-- letters
	["a"] = Enum.KeyCode.A; ["b"] = Enum.KeyCode.B; ["c"] = Enum.KeyCode.C;
	["d"] = Enum.KeyCode.D; ["e"] = Enum.KeyCode.E; ["f"] = Enum.KeyCode.F;
	["g"] = Enum.KeyCode.G; ["h"] = Enum.KeyCode.H; ["i"] = Enum.KeyCode.I;
	["j"] = Enum.KeyCode.J; ["k"] = Enum.KeyCode.K; ["l"] = Enum.KeyCode.L;
	["m"] = Enum.KeyCode.M; ["n"] = Enum.KeyCode.N; ["o"] = Enum.KeyCode.O;
	["p"] = Enum.KeyCode.P; ["q"] = Enum.KeyCode.Q; ["r"] = Enum.KeyCode.R;
	["s"] = Enum.KeyCode.S; ["t"] = Enum.KeyCode.T; ["u"] = Enum.KeyCode.U;
	["v"] = Enum.KeyCode.V; ["w"] = Enum.KeyCode.W; ["x"] = Enum.KeyCode.X;
	["y"] = Enum.KeyCode.Y; ["z"] = Enum.KeyCode.Z;

	-- numbers
	["1"] = Enum.KeyCode.One; ["2"] = Enum.KeyCode.Two; ["3"] = Enum.KeyCode.Three;
	["4"] = Enum.KeyCode.Four; ["5"] = Enum.KeyCode.Five; ["6"] = Enum.KeyCode.Six;
	["7"] = Enum.KeyCode.Seven; ["8"] = Enum.KeyCode.Eight; ["9"] = Enum.KeyCode.Nine;
	["0"] = Enum.KeyCode.Zero;

	-- common punctuation (unshifted)
	[","] = Enum.KeyCode.Comma; ["."] = Enum.KeyCode.Period; ["/"] = Enum.KeyCode.Slash;
	[";"] = Enum.KeyCode.Semicolon; ["'"] = Enum.KeyCode.Quote;
	["["] = Enum.KeyCode.LeftBracket; ["]"] = Enum.KeyCode.RightBracket;
	["\\"] = Enum.KeyCode.BackSlash; ["-"] = Enum.KeyCode.Minus; ["="] = Enum.KeyCode.Equals;
	["`"] = Enum.KeyCode.Backquote; [" "] = Enum.KeyCode.Space;
}

-- uppercase / shifted characters (CapsLock or Shift)
local cap_on = {
	-- letters (uppercase)
	["A"] = Enum.KeyCode.A; ["B"] = Enum.KeyCode.B; ["C"] = Enum.KeyCode.C;
	["D"] = Enum.KeyCode.D; ["E"] = Enum.KeyCode.E; ["F"] = Enum.KeyCode.F;
	["G"] = Enum.KeyCode.G; ["H"] = Enum.KeyCode.H; ["I"] = Enum.KeyCode.I;
	["J"] = Enum.KeyCode.J; ["K"] = Enum.KeyCode.K; ["L"] = Enum.KeyCode.L;
	["M"] = Enum.KeyCode.M; ["N"] = Enum.KeyCode.N; ["O"] = Enum.KeyCode.O;
	["P"] = Enum.KeyCode.P; ["Q"] = Enum.KeyCode.Q; ["R"] = Enum.KeyCode.R;
	["S"] = Enum.KeyCode.S; ["T"] = Enum.KeyCode.T; ["U"] = Enum.KeyCode.U;
	["V"] = Enum.KeyCode.V; ["W"] = Enum.KeyCode.W; ["X"] = Enum.KeyCode.X;
	["Y"] = Enum.KeyCode.Y; ["Z"] = Enum.KeyCode.Z;

	-- shifted numbers -> symbols
	["!"] = Enum.KeyCode.One; ["@"] = Enum.KeyCode.Two; ["#"] = Enum.KeyCode.Three;
	["$"] = Enum.KeyCode.Four; ["%"] = Enum.KeyCode.Five; ["^"] = Enum.KeyCode.Six;
	["&"] = Enum.KeyCode.Seven; ["*"] = Enum.KeyCode.Eight; ["("] = Enum.KeyCode.Nine;
	[")"] = Enum.KeyCode.Zero;

	-- shifted punctuation
	["<"] = Enum.KeyCode.Comma; [">"] = Enum.KeyCode.Period; ["?"] = Enum.KeyCode.Slash;
	[":"] = Enum.KeyCode.Semicolon; ['"'] = Enum.KeyCode.Quote;
	["{"] = Enum.KeyCode.LeftBracket; ["}"] = Enum.KeyCode.RightBracket;
	["|"] = Enum.KeyCode.BackSlash; ["_"] = Enum.KeyCode.Minus; ["+"] = Enum.KeyCode.Equals;
	["~"] = Enum.KeyCode.Backquote; [" "] = Enum.KeyCode.Space;
}

function ToggleGUI ()
	local currentBgVisible = bg.Visible
	bg.Visible = not currentBgVisible
	IsOpenning = not currentBgVisible
end

function Play (IsPlaying2)
	IsPlaying = IsPlaying2
	TextBox.TextEditable = not IsPlaying
	display.Visible = IsPlaying
	if IsPlaying then
		CurrentIndex = 0
		DisplayNote = TextBox.ContentText
		CurrentNotes = TextBox.ContentText:gsub("[%c%s]", "")
	end
end

function FindEndIndex ()
	local currentText = CurrentNotes:sub(CurrentIndex, CurrentIndex)
	
	if currentText == "[" then
		local CanEnd = false
		
		for i = CurrentIndex, #CurrentNotes do
			local currentText = CurrentNotes:sub(i, i)
			if currentText == "]" then
				CanEnd = true
			end
		end
		
		if CanEnd then
			local AttemptIndex = 0
			local AttemptText = ""
			for i = CurrentIndex, #CurrentNotes do
				AttemptIndex+=1
				AttemptText = CurrentNotes:sub(CurrentIndex+AttemptIndex, CurrentIndex+AttemptIndex)
				--print("AttemptIndex:", AttemptIndex, "AttemptText:", AttemptText)
				if AttemptText == "]" then
					break
				end
			end
			return CurrentIndex+AttemptIndex
		else
			return CurrentIndex+1
		end
	else
		return CurrentIndex
	end
end

function UpdateTextColor()
	local currentText = ""
	local endIndex = FindEndIndex()
	local firstText = CurrentNotes:sub(1, CurrentIndex-1)
	local highlightedText = CurrentNotes:sub(CurrentIndex, endIndex)
	local lastText = CurrentNotes:sub(endIndex+1, #CurrentNotes+1)
	
	if CurrentIndex ~= 0 then
		currentText = currentText.."<font color="..PlayingColor..">"..firstText.."</font>"..
			"<font color="..SelectedColor..">"..highlightedText.."</font>"..
			"<font color="..PlayingColor..">"..lastText.."</font>"
	elseif CurrentIndex <= 0 then
		currentText = currentText.."<font color="..PlayingColor..">"..lastText.."</font>"
	end
	
	ColoredText = currentText
	return currentText
end

function SendKeyEvent (key, holding)
	game:GetService("VirtualInputManager"):SendKeyEvent(holding, key, false, game)
end

function PressSingleKey (key)
	local isCapOn_KeyCode = cap_on[key]
	local isCapOff_KeyCode = cap_off[key]
	
	local function Press(Cap, Keycode)
		if test then
			print(Cap, Keycode)
		else
			if Cap then
				SendKeyEvent(Enum.KeyCode.LeftShift, true)
			end
			SendKeyEvent(Keycode, true)
			repeat wait() print(IsHolding) until not IsHolding
			SendKeyEvent(Keycode, false)
			SendKeyEvent(Enum.KeyCode.LeftShift, false)
		end
	end
	
	if isCapOn_KeyCode then
		Press(isCapOn_KeyCode, isCapOn_KeyCode)
	elseif isCapOff_KeyCode then
		Press(isCapOn_KeyCode, isCapOff_KeyCode)
	end
end

function PressKey (currentText:string)
	IsPressed = true
	
	local filteredText:string = currentText:gsub("[%[%]]", "")
	
	-- Lowercase First
	for index = 1,#filteredText do
		local text = filteredText:sub(index, index)
		local isLowercase = cap_off[text]
		if isLowercase then
			print("Lowercase", isLowercase)
			spawn(function()
				PressSingleKey(text)
			end)
		end
	end
	
	-- Uppercase then
	for index = 1,#filteredText do
		local text = filteredText:sub(index, index)
		local isLowercase = cap_off[text]
		if not isLowercase then
			print("Uppercase", isLowercase)
			spawn(function()
				PressSingleKey(text)
			end)
		end
	end
end

function StepIndex ()
	if IsPlaying then
		local EndIndex = FindEndIndex()
		CurrentIndex=EndIndex+1

		IsHolding = true
		IsPressed = false
		
		if CurrentNotes:sub(CurrentIndex, CurrentIndex) == "" then
			Play(false)
		end
	end
end

function StopHolding ()
	IsHolding = false
end



toggle.MouseButton1Click:Connect(ToggleGUI)
close.MouseButton1Click:Connect(ToggleGUI)

step1.MouseButton1Down:Connect(StepIndex)
step2.MouseButton1Down:Connect(StepIndex)

step1.MouseButton1Up:Connect(StopHolding)
step2.MouseButton1Up:Connect(StopHolding)

play.MouseButton1Click:Connect(function()
	Play(true)
end)
stop.MouseButton1Click:Connect(function()
	Play(false)
end)

UserInputService.InputBegan:Connect(function(input)
	if table.find(stepKeybinds, input.KeyCode) then
		StepIndex()
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if table.find(stepKeybinds, input.KeyCode) then
		StopHolding()
	end
end)

while task.wait() do
	UpdateTextColor()
	
	TextBox.Visible = not display.Visible
	display.Text = ColoredText

	local EndIndex = FindEndIndex()
	
	local Text = CurrentNotes:sub(CurrentIndex, EndIndex)
	
	if not IsPressed then
		PressKey(Text)
	end
end
