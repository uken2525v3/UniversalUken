local SaveFolderName = "saves TAS ukhub"
if not game:GetService("RunService"):IsStudio() then
if not isfolder(SaveFolderName) then
	makefolder(SaveFolderName)
end
end
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
Character:WaitForChild("HumanoidRootPart")
Character:WaitForChild("Torso")
Character:WaitForChild("Humanoid")
local Humanoid = Character:FindFirstChildOfClass("Humanoid")
local HumanoidRootPart = Humanoid.RootPart
local Torso = Character:FindFirstChild("Torso")
local FileType = ".TAS"
function respawn()
	Character = LocalPlayer.Character
	Character:WaitForChild("HumanoidRootPart")
	Character:WaitForChild("Torso")
	Character:WaitForChild("Humanoid")
	Humanoid = Character:FindFirstChildOfClass("Humanoid")
	HumanoidRootPart = Humanoid.RootPart
	Torso = Character:FindFirstChild("Torso")
end
LocalPlayer.CharacterAdded:Connect(function(char)
	respawn()
end)
local RunService = game:GetService("RunService")

local UKENTAS = Instance.new("ScreenGui")
local tip = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local template = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")

local linearvelo = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local linearanguvelo = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")

local currentkeyframe = Instance.new("TextLabel")


UKENTAS.Name = "UKENTAS"
UKENTAS.Parent = game:FindFirstChild("CoreGui") and game:GetService("CoreGui") or LocalPlayer.PlayerGui
UKENTAS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

currentkeyframe.Name = "currentkeyframe"
currentkeyframe.Parent = UKENTAS
currentkeyframe.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
currentkeyframe.BackgroundTransparency = 1.000
currentkeyframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
currentkeyframe.BorderSizePixel = 0
currentkeyframe.Position = UDim2.new(-4.6662965e-08, 0, 0.846910536, 0)
currentkeyframe.Size = UDim2.new(0.374539882, 0, 0.0374149643, 0)
currentkeyframe.Font = Enum.Font.Cartoon
currentkeyframe.Text = "Frame : %d"
currentkeyframe.TextColor3 = Color3.fromRGB(255, 255, 255)
currentkeyframe.TextScaled = true
currentkeyframe.TextSize = 14.000
currentkeyframe.TextWrapped = true
currentkeyframe.TextXAlignment = Enum.TextXAlignment.Left

tip.Name = "tip"
tip.Parent = UKENTAS
tip.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
tip.BackgroundTransparency = 1.000
tip.BorderColor3 = Color3.fromRGB(0, 0, 0)
tip.BorderSizePixel = 0
tip.Position = UDim2.new(-4.68061003e-08, 0, 0.961248159, 0)
tip.Size = UDim2.new(0.374539882, 0, 0.0374149643, 0)
tip.Font = Enum.Font.Cartoon
tip.Text = "HumanoidStateType : %s"
tip.TextColor3 = Color3.fromRGB(255, 255, 255)
tip.TextScaled = true
tip.TextSize = 14.000
tip.TextWrapped = true
tip.TextXAlignment = Enum.TextXAlignment.Left

UICorner.Parent = tip

linearvelo.Name = "linearvelo"
linearvelo.Parent = UKENTAS
linearvelo.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
linearvelo.BackgroundTransparency = 1.000
linearvelo.BorderColor3 = Color3.fromRGB(0, 0, 0)
linearvelo.BorderSizePixel = 0
linearvelo.Position = UDim2.new(-4.68780001e-08, 0, 0.923101008, 0)
linearvelo.Size = UDim2.new(0.374539882, 0, 0.0374149643, 0)
linearvelo.Font = Enum.Font.Cartoon
linearvelo.Text = "Linear Velocity : %s"
linearvelo.TextColor3 = Color3.fromRGB(255, 255, 255)
linearvelo.TextScaled = true
linearvelo.TextSize = 14.000
linearvelo.TextWrapped = true
linearvelo.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.Parent = linearvelo

linearanguvelo.Name = "linearanguvelo"
linearanguvelo.Parent = UKENTAS
linearanguvelo.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
linearanguvelo.BackgroundTransparency = 1.000
linearanguvelo.BorderColor3 = Color3.fromRGB(0, 0, 0)
linearanguvelo.BorderSizePixel = 0
linearanguvelo.Position = UDim2.new(-4.68780001e-08, 0, 0.884953856, 0)
linearanguvelo.Size = UDim2.new(0.374539882, 0, 0.0374149643, 0)
linearanguvelo.Font = Enum.Font.Cartoon
linearanguvelo.Text = "Linear AngularVelocity : %s"
linearanguvelo.TextColor3 = Color3.fromRGB(255, 255, 255)
linearanguvelo.TextScaled = true
linearanguvelo.TextSize = 14.000
linearanguvelo.TextWrapped = true
linearanguvelo.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.Parent = linearanguvelo

Frame.Parent = UKENTAS
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.625, 0, 0.961000025, 0)
Frame.Size = UDim2.new(0, 488, 0, 27)

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(-2, 0)

template.Name = "template"
template.Parent = Frame
template.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
template.BackgroundTransparency = 1.000
template.BorderColor3 = Color3.fromRGB(0, 0, 0)
template.BorderSizePixel = 0
template.Size = UDim2.new(1, 0, 1, 0)
template.Visible = false
template.Font = Enum.Font.Cartoon
template.Text = "%s"
template.TextColor3 = Color3.fromRGB(0, 255, 0)
template.TextScaled = true
template.TextSize = 14.000
template.TextWrapped = true
template.TextXAlignment = Enum.TextXAlignment.Right

UICorner_2.Parent = template

local TextBoxFocus = false

UIS.TextBoxFocused:Connect(function()
	TextBoxFocus = true
	print("A")
end)
UIS.TextBoxFocusReleased:Connect(function()
	TextBoxFocus = false
end)

local Mode = 1

local Keybinds = {
	["Step1Forward"] = {Enum.KeyCode.G, false, "OneTap"};
	["Step1Backward"] = {Enum.KeyCode.F, false, "OneTap"};
	["StepForward"] = {Enum.KeyCode.T, false, "Hold"};
	["Stepbackward"] = {Enum.KeyCode.R, false, "Hold"};
	["Pause"] = {Enum.UserInputType.MouseButton1, true, "Toggle"};
	["Copy"] = {Enum.KeyCode.C, false, "OneTap"};
	["Load"] = {Enum.KeyCode.V, false, "OneTap"};
	["Delete"] = {Enum.KeyCode.Backspace, false, "OneTap"};

	["Mode1"] = Enum.KeyCode.One;
	["Mode2"] = Enum.KeyCode.Two;
	["Mode3"] = Enum.KeyCode.Three;
}
local Settings = {
	["CameraLockWhenTest"] = true;
	["CameraLockWhenEdit"] = false
}

local ReverseValue = 0
local StartAt = 1
local Data = {}
local CurrentKeyframe = 1
local FrameSpeed = 60
local StopRender = false
local CopyUI = false

function Table(t)
	local SimulateTable = "{"
	local function add(str,a)
		SimulateTable=SimulateTable..a
	end
	local function createIndex(k)
		if typeof(k) == "number" then
			add(SimulateTable,string.format("[%d]",k))
			print("number")
		else
			add(SimulateTable,string.format("['%s']",k))
		end
		add(SimulateTable,"=")
	end
	for k, v in pairs(t) do
		if type(v) == "table" then
			createIndex(k)
			local tablestr = Table(v)
			add(SimulateTable,tostring(tablestr))
			add(SimulateTable,";\n")
		else
			createIndex(k)
			if typeof(v) == "CFrame" then
				add(SimulateTable,string.format("CFrame.new(%s)",tostring(v)))
			elseif typeof(v) == "Vector3" then
				add(SimulateTable,string.format("Vector3.new(%s)",tostring(v)))
			elseif typeof(v) == "EnumItem" then
				add(SimulateTable,string.format("Enum.%s.%s",tostring(v.EnumType),tostring(v.Name)))
			else
				add(SimulateTable,v)
			end
			add(SimulateTable,";\n")
		end
	end
	add(SimulateTable,"}")
	return SimulateTable
end
function StringToTable(str)
	return loadstring("return "..str)()
end
function getListOfFiles()
	return listfiles(SaveFolderName)
end
function saveTable(input)
	setclipboard(Table(input))
	print("Copied")
end
function TableToVector3(Table)
	if typeof(Table) == "table" then
		return Vector3.new(unpack(Table)) or Vector3.zero
	else
		return Vector3.zero
	end
end
function GetBooleanOf(Name:string)
	if Keybinds[Name] and typeof(Keybinds[Name]) == "table" then
		return Keybinds[Name][2]
	else
		return false
	end
end
function AddKeyframe()
	if StopRender or CopyUI then return end
	local Information = {
		["CFrame"] = HumanoidRootPart.CFrame;
		["State"] = Humanoid:GetState();
		["LinearVelocity"] = HumanoidRootPart.AssemblyLinearVelocity;
		["LinearAngularVelocity"] = HumanoidRootPart.AssemblyAngularVelocity;
		["CamCF"] = workspace.CurrentCamera.CFrame
	}
	table.insert(Data,Information)
end
function SetValueOf(Name:string, value)
	if Keybinds[Name] and typeof(Keybinds[Name]) == "table" then
		Keybinds[Name][2] = value
	else
		return
	end
end
function updateUI(a)
	--string.format("HumanoidStateType : %s", Data[a]["State"].Name)
	--string.format("HumanoidStateType : %s", tostring(Humanoid:GetState().Name)
	linearanguvelo.Text = string.format("Linear AngularVelocity : %s", tostring(HumanoidRootPart.AssemblyAngularVelocity))
	linearvelo.Text = string.format("Linear Velocity : %s", tostring(HumanoidRootPart.AssemblyLinearVelocity))
end
function PlayFrame(number)
	if Data[number] then
		HumanoidRootPart.CFrame = Data[number]["CFrame"]
		HumanoidRootPart.AssemblyLinearVelocity = Data[number]["LinearVelocity"]
		HumanoidRootPart.AssemblyAngularVelocity = Data[number]["LinearAngularVelocity"]
		if GetBooleanOf("Pause") == true then
			if Settings["CameraLockWhenEdit"] then
				workspace.CurrentCamera.CFrame = Data[number]["CamCF"]
			end
		else
			if Settings["CameraLockWhenTest"] then
				workspace.CurrentCamera.CFrame = Data[number]["CamCF"]
			end
		end
		Humanoid:ChangeState(Data[number]["State"])
	else
		warn("CANT FIND DATA!")
	end
end
local Freezea = Instance.new("BodyVelocity")
function Freeze(bool)
	HumanoidRootPart.Anchored = bool
	Humanoid.AutoRotate = not bool
end
function saveTofile()
	if CopyUI then return end
	CopyUI = true
	local savebackground = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")

	savebackground.Name = "savebackground"
	savebackground.Parent = UKENTAS
	savebackground.AnchorPoint = Vector2.new(0.5, 0.5)
	savebackground.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	savebackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
	savebackground.BorderSizePixel = 0
	savebackground.Position = UDim2.new(0.5, 0, 0.82079345, 0)
	savebackground.Size = UDim2.new(0.268759578, 0, 0.232558146, 0)

	TextBox.Parent = savebackground
	TextBox.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.0740740746, 0, 0.352941185, 0)
	TextBox.Size = UDim2.new(0.849002838, 0, 0.294117659, 0)
	TextBox.Font = Enum.Font.Highway
	TextBox.PlaceholderText = "filename"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true

	TextButton.Parent = savebackground
	TextButton.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.213675216, 0, 0.717647076, 0)
	TextButton.Size = UDim2.new(0.569800556, 0, 0.19411765, 0)
	TextButton.Font = Enum.Font.Highway
	TextButton.Text = "Save"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextLabel.Parent = savebackground
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 0, 0.0647058859, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.229411766, 0)
	TextLabel.Font = Enum.Font.Highway
	TextLabel.Text = "Save to file"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	
	local X = Instance.new("TextButton")

	X.Name = "X"
	X.Parent = savebackground
	X.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	X.BorderColor3 = Color3.fromRGB(0, 0, 0)
	X.BorderSizePixel = 0
	X.Position = UDim2.new(0.880341887, 0, 0.0647058859, 0)
	X.Size = UDim2.new(0.0968660936, 0, 0.182352945, 0)
	X.Font = Enum.Font.Highway
	X.Text = "X"
	X.TextColor3 = Color3.fromRGB(255, 255, 255)
	X.TextScaled = true
	X.TextSize = 14.000
	X.TextWrapped = true
	
	X.MouseButton1Click:Connect(function()
		savebackground:Destroy()
		CopyUI = false
	end)
	TextButton.MouseButton1Click:Connect(function()
		local fileContent = Table(Data)
		local SaveTxtName = nil
		if TextBox.ContentText~="" then
			SaveTxtName = TextBox.ContentText
		else
			SaveTxtName = "SaveFile".."_"..game.GameId
		end
		local fileName = SaveFolderName.."\\"..SaveTxtName..FileType
		if isfile(fileName) then
			delfile(fileName)
		end
		local Txt = SaveFolderName.."/"..SaveTxtName..FileType
		writefile(Txt, fileContent)
		savebackground:Destroy()
		CopyUI = false
	end)
end
function LoadFromFile()
	if CopyUI then return end
	CopyUI = true
	local load = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local TextButton = Instance.new("TextButton")
	local TextLabel = Instance.new("TextLabel")
	local X = Instance.new("TextButton")

	load.Name = "load"
	load.Parent = UKENTAS
	load.AnchorPoint = Vector2.new(0.5, 0.5)
	load.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	load.BorderColor3 = Color3.fromRGB(0, 0, 0)
	load.BorderSizePixel = 0
	load.Position = UDim2.new(0.5, 0, 0.82079345, 0)
	load.Size = UDim2.new(0.268759578, 0, 0.232558146, 0)

	TextBox.Parent = load
	TextBox.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BorderSizePixel = 0
	TextBox.Position = UDim2.new(0.0740740746, 0, 0.352941185, 0)
	TextBox.Size = UDim2.new(0.849002838, 0, 0.294117659, 0)
	TextBox.Font = Enum.Font.Highway
	TextBox.PlaceholderText = "file name"
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true

	TextButton.Parent = load
	TextButton.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BorderSizePixel = 0
	TextButton.Position = UDim2.new(0.213675216, 0, 0.717647076, 0)
	TextButton.Size = UDim2.new(0.569800556, 0, 0.19411765, 0)
	TextButton.Font = Enum.Font.Highway
	TextButton.Text = "Load"
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true

	TextLabel.Parent = load
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0, 0, 0.0647058859, 0)
	TextLabel.Size = UDim2.new(1, 0, 0.229411766, 0)
	TextLabel.Font = Enum.Font.Highway
	TextLabel.Text = "Load from file"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true

	X.Name = "X"
	X.Parent = load
	X.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
	X.BorderColor3 = Color3.fromRGB(0, 0, 0)
	X.BorderSizePixel = 0
	X.Position = UDim2.new(0.880341887, 0, 0.0647058859, 0)
	X.Size = UDim2.new(0.0968660936, 0, 0.182352945, 0)
	X.Font = Enum.Font.Highway
	X.Text = "X"
	X.TextColor3 = Color3.fromRGB(255, 255, 255)
	X.TextScaled = true
	X.TextSize = 14.000
	X.TextWrapped = true
	
	X.MouseButton1Click:Connect(function()
		load:Destroy()
		CopyUI = false
	end)
	TextButton.MouseButton1Click:Connect(function()
		local filelists = getListOfFiles()
		local fileName = SaveFolderName.."\\"..TextBox.ContentText..FileType
		print(fileName)
		for i,v in pairs(filelists) do
			print(v)
		end
		if isfile(fileName) then
			local result = StringToTable(readfile(fileName))
			print(#result)
			Data = result
			print(#Data)
		else
			print("Cant find")
		end
		CopyUI = false
	end)
end
function InputBegan(input, bool)
	if TextBoxFocus then return end
	for i:string,v in pairs(Keybinds) do
		if typeof(v) == "table" then
			if input.KeyCode == v[1] or input.UserInputType == v[1] then
				local Boolean = GetBooleanOf(i)
				if v[3] == "Toggle" then
					if bool then
						SetValueOf(i, not Boolean)
					end
					if i == "Pause" then
						removeaa(ReverseValue)
					end
				elseif v[3] == "Hold" then
					SetValueOf(i, bool)
				elseif v[3] == "OneTap" then
					if bool then
						SetValueOf(i, bool)
					end
				end
			end
		elseif i:match("Mode") then
			if input.KeyCode == v or input.UserInputType == v then
				local modeselect = tonumber(i:sub(5,5))
				Mode = modeselect
				--print("Mode "..Mode)
				--print(Mode)
				if bool then
					local modeselect = modeselect
					if modeselect == 3 then
						CurrentKeyframe = 1
					end
					if modeselect ~= 2 then
						removeaa(ReverseValue)
					end
					if modeselect == 2 then
						SetValueOf("Pause",true)
					end
				end
			end
		end
	end
end
function removeaa(a)
	if ReverseValue > 0 then
		StopRender = true
		local saved = {}
		for i,v in pairs(Data) do
			if i < #Data-ReverseValue then
				table.insert(saved,v)
			end
		end
		Data = saved
		--print(saved)
		ReverseValue = 0
		StopRender = false
	end
end
UIS.InputBegan:Connect(function(input)
	InputBegan(input, true)
end)
UIS.InputEnded:Connect(function(input)
	InputBegan(input, false)
end)

RunService.RenderStepped:Connect(function(deltatime)
	if not Freezea then
		Freezea = Instance.new("BodyVelocity")
	end
	local PauseValue = GetBooleanOf("Pause")
	FrameSpeed = deltatime/1
	if Mode ~= 2 then
		if PauseValue then
			SetValueOf("Pause",false)
		end
	end
	local PauseValue = GetBooleanOf("Pause")
	local Forward = GetBooleanOf("StepForward")
	local Backward = GetBooleanOf("Stepbackward")
	local Step1Forward = GetBooleanOf("Step1Forward")
	local Step1Backward = GetBooleanOf("Step1Backward")
	local Copy = GetBooleanOf("Copy")
	local Load = GetBooleanOf("Load")
	if Mode == 1 then
	elseif Mode == 2 then
		StartAt = #Data
		if PauseValue then
			PlayFrame(StartAt-ReverseValue)
		end
		--print(Data)
	elseif Mode == 3 then
		if Data[CurrentKeyframe] then
			PlayFrame(CurrentKeyframe)
		end
	end
	--print(GetBooleanOf("Stepbackward"))
end)
RunService.Heartbeat:Connect(function(de)
	if de<60/1 then
		local PauseValue = GetBooleanOf("Pause")
		local Forward = GetBooleanOf("StepForward")
		local Backward = GetBooleanOf("Stepbackward")
		local Step1Forward = GetBooleanOf("Step1Forward")
		local Step1Backward = GetBooleanOf("Step1Backward")
		local Copy = GetBooleanOf("Copy")
		local Load = GetBooleanOf("Load")
		if GetBooleanOf("Delete") then
			SetValueOf("Delete",false)
			table.clear(Data)
			CurrentKeyframe = 1
		end
		if CopyUI == true then
			SetValueOf("Pause",true)
		end
		if Forward or Backward or Step1Forward or Step1Backward then
			Mode = 2
			SetValueOf("Pause",true)
		end
		if Backward then
			if ReverseValue < #Data then
				ReverseValue+=1
			end
		elseif Forward then
			if ReverseValue > 1 then
				ReverseValue-=1
			end
		end
		if Step1Forward then
			SetValueOf("Step1Forward",false)
			if ReverseValue > 1 then
				ReverseValue-=1
			end
		elseif Step1Backward then
			SetValueOf("Step1Backward",false)
			if ReverseValue < #Data then
				ReverseValue+=1
			end
		end
		if Copy then
			if not CopyUI then
				saveTofile()
			end	
			SetValueOf("Copy",false)
		end
		if Load then
			if not CopyUI then
				LoadFromFile()
			end	
			SetValueOf("Load",false)
		end
		if Mode == 1 then
			currentkeyframe.Text = string.format("Frame speed : %s", FrameSpeed)
			tip.Text = string.format("HumanoidStateType : %s", tostring(Humanoid:GetState().Name))
			Freeze(false)
		elseif Mode == 2 then
			StartAt = #Data
			if PauseValue then
				tip.Text = string.format("HumanoidStateType : %s", tostring(Humanoid:GetState().Name))
				Freeze(true)
				PlayFrame(StartAt-ReverseValue)
				currentkeyframe.Text = string.format("Current Frame : %s", StartAt-ReverseValue)
			else
				tip.Text = string.format("HumanoidStateType : %s", tostring(Humanoid:GetState().Name))
				Freeze(false)
				AddKeyframe()
				currentkeyframe.Text = string.format("Current Frame : %s", #Data)
			end
			--print(Data)
		elseif Mode == 3 then
			if Data[CurrentKeyframe] then
				Freeze(false)
				PlayFrame(CurrentKeyframe)
				CurrentKeyframe+=1
			else
				Freeze(false)
				Mode = 1
			end
			currentkeyframe.Text = string.format("Current Frame : %s", CurrentKeyframe)
			if Data[CurrentKeyframe] then
				tip.Text = string.format("HumanoidStateType : %s", Data[CurrentKeyframe]["State"].Name)
			end
		end
		--print(Mode, PauseValue)
		--print(ReverseValue)
		updateUI(StartAt)
	end
end)

