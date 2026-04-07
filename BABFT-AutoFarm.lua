local StarterText = "[BABFT Auto Farm]:"

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local UserInputService = game:GetService("UserInputService")
local VirtualUser = game:GetService("VirtualUser")

local BoatStages : Model = workspace:WaitForChild("BoatStages")
local FirstWater : Part = workspace:WaitForChild("Water")

local LocalPlayer = Players.LocalPlayer

local Character : Model = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid : Humanoid = Character:WaitForChild("Humanoid")
local HumanoidRootPart : Part = Character:WaitForChild("HumanoidRootPart")

local ClaimGoldRemote : RemoteEvent = workspace:WaitForChild("ClaimRiverResultsGold")

local AutoFarmToggle = false
local AutoFarmSpeed = 300

-- UI
do
	local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

	local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
	local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
	local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

	local Window = Library:CreateWindow({
		Title = "BABFT Auto Farm",
		Center = false,
		AutoShow = true,
		TabPadding = 8,
		MenuFadeTime = 0.1
	})

	local Tabs = {
		Main = Window:AddTab("Main"),
		["UI Settings"] = Window:AddTab("UI Settings")
	}

	local FarmSection1 = Tabs.Main:AddLeftGroupbox('Farm')
	FarmSection1:AddToggle('Auto-Farm-Toggle', {
		Text = "Auto Farm Toggle",
		Default = false,
		Tooltip = "Toggle auto farm.",

		Callback = function(Value)
			AutoFarmToggle = Value
		end,
	})
	
	local FarmSection1_Settings = Tabs.Main:AddRightGroupbox('Farm configs')
	FarmSection1_Settings:AddSlider("Auto-Farm-Speed", {
		Text = "Auto Farm Speed",
		Default = 300,
		Min = 100,
		Max = 650,
		Rounding = 1,
		Compact = false,
		
		Callback = function(Value)
			AutoFarmSpeed = Value
		end,
	})
	FarmSection1_Settings:AddButton({
		Text = "Reset Character",
		Tooltip = "Reset Character after changed Auto Farm Settings.",
		
		Func = function()
			Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
			Humanoid = Character:WaitForChild("Humanoid")
			HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
			
			Humanoid:TakeDamage(9e9)
		end,
	})

	ThemeManager:SetLibrary(Library)
	SaveManager:SetLibrary(Library)

	ThemeManager:SetFolder('UkenHub')
	SaveManager:SetFolder('UkenHub/BABFT-AutoFarm')

	SaveManager:BuildConfigSection(Tabs['UI Settings'])
	ThemeManager:ApplyToTab(Tabs['UI Settings'])

	SaveManager:LoadAutoloadConfig()
end

local function Farm()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.zero)
	RunService:UnbindFromRenderStep("Platform")

	Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	Humanoid = Character:WaitForChild("Humanoid")
	HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

	local CurrentAutoFarmValue = AutoFarmToggle
	task.spawn(function()
		repeat
			task.wait(0.1)
		until AutoFarmToggle ~= CurrentAutoFarmValue
		Humanoid:TakeDamage(9e9)
	end)

	if not AutoFarmToggle then
		return
	end

	local NewPlatform = Instance.new("Part", Character)
	NewPlatform.Transparency = 1
	NewPlatform.Size = Vector3.new(5, 0.2, 5)
	NewPlatform.Anchored = true

	local StartPos = CFrame.new(-65, -45, 658)
	local EndPos = CFrame.new(-65, -45, 8600)
	local TreasurePos_01 = CFrame.new(-65, -375, 8600)
	local TreasurePos_02 = CFrame.new(-55, -375, 9492)
	local TreasurePos_03 = CFrame.new(-55, -360, 9485)

	local Distance = (StartPos.Position - EndPos.Position).Magnitude
	local Distance2 = (TreasurePos_01.Position - TreasurePos_02.Position).Magnitude
	local TweenTime = Distance / AutoFarmSpeed
	local TweenTime2 = Distance2 / AutoFarmSpeed

	local function NoDamage(Enabled : boolean)
		-- Set the center water touch detection to the opposite of the "Enabled" variable
		FirstWater.CanTouch = not Enabled

		-- Set all water touch detection to the opposite of the "Enabled" variable
		for _, Water in pairs(BoatStages:QueryDescendants("#Water")) do -- Get all parts in "BoatStages" with name "Water"
			if not Water:IsA("BasePart") then continue end

			Water.CanTouch = not Enabled
		end

		-- Set all rocks touch detection to the opposite of the "Enabled" variable
		for _, RockScript in pairs(BoatStages:QueryDescendants("#RockScript")) do -- Get all parts in "BoatStages" with name "RockScript"
			if not RockScript:IsA("Script") then continue end

			local Rock : BasePart? = RockScript.Parent

			if not Rock:IsA("BasePart") then continue end

			Rock.CanTouch = not Enabled
		end
	end

	ClaimGoldRemote:FireServer()

	NoDamage(true)
	RunService:BindToRenderStep("Platform", 1, function()
		HumanoidRootPart.CFrame = NewPlatform.CFrame * CFrame.new(0, 3.1, 0)
		HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
		HumanoidRootPart.AssemblyAngularVelocity = Vector3.zero
	end)

	NewPlatform.CFrame = StartPos
	task.wait()
	TweenService:Create(NewPlatform, TweenInfo.new(TweenTime, Enum.EasingStyle.Linear), {CFrame = EndPos * CFrame.new(0, -3.1, 0)}):Play()
	task.wait(TweenTime)
	NewPlatform.CFrame = TreasurePos_01
	TweenService:Create(NewPlatform, TweenInfo.new(TweenTime2, Enum.EasingStyle.Linear), {CFrame = TreasurePos_02 * CFrame.new(0, -3.1, 0)}):Play()
	task.wait(TweenTime2)
	task.wait()
	NewPlatform.CFrame = TreasurePos_03
	NoDamage(false)
	RunService:UnbindFromRenderStep("Platform")
	NewPlatform:Destroy()
end

LocalPlayer.CharacterAdded:Connect(Farm)
Humanoid:TakeDamage(999e999)
LocalPlayer.CharacterAdded:Wait()
