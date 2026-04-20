local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

local printedData = {}
local customPrint = {}
customPrint.__index = customPrint

local function GenUID(digit: number)
	local r = ""
	for i = 1, digit do
		r ..= math.random(0, 9)
	end
	return r
end

local function Update(ClientLog)
	for _, data in ipairs(printedData) do
		local function getPrintedMessage()
			local Logs = ClientLog:GetChildren()
			for _, Log in ipairs(Logs) do
				if Log:IsA("Frame") and Log:FindFirstChild("msg") then
					local msg = Log:FindFirstChild("msg")

					if msg:IsA("TextLabel") and (msg.Text:sub(13) == data.uid or msg:GetAttribute(data.uid)) then
						if not msg:GetAttribute(data.uid) then
							msg:SetAttribute(data.uid, true)
						end
						return msg
					end
				end
			end

			return nil
		end

		if ClientLog then
			local printed = getPrintedMessage()

			local printTime = data.time
			local printContent = data.msg
			local printColor = data.color

			if printed then
				printed.TextColor3 = printColor
				printed.Text = string.format("%02d:%02d:%02d -- %s", printTime.hour, printTime.min, printTime.sec, printContent)
			end
		end
	end
end

function customPrint.new(message: string, color: Color3 | BrickColor)
	local data = {}

	data.msg = message and tostring(message) or "Hello, World!"
	data.time = os.date("*t")
	data.uid = GenUID(6)
	data.index = #printedData + 1
	data.color = typeof(color) == "BrickColor" 
		and color.Color
		or (color ~= nil and color or Color3.new(1, 1, 1))

	print(data.uid)

	table.insert(printedData, data)

	local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
	local DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
	local DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")

	local MainView = DevConsoleUI and DevConsoleUI:FindFirstChild("MainView")

	if MainView then
		local ClientLog = MainView:WaitForChild("ClientLog", 0.5)
		task.wait(0.05)
		Update(ClientLog)
	end

	return setmetatable(data, customPrint)
end

function customPrint:setColor3(color3: Color3)
	assert(color3, "you forgot to put Color3, buddy.")
	assert(typeof(color3) == "Color3", "wrong datatype, color3 should be Color3, buddy.")

	local value = color3

	printedData[self.index].color = value
	self.color = value
	customPrint:update()
end

function customPrint:setBrickColor(brickColor: BrickColor)
	assert(brickColor, "you forgot to put BrickColor, buddy.")
	assert(typeof(brickColor) == "BrickColor", "wrong datatype, brickColor should be BrickColor, buddy.")

	local value = brickColor.Color

	printedData[self.index].color = value
	self.color = value
	customPrint:update()
end

function customPrint:setText(text: string)
	local value = text and tostring(text) or "Hello, World!"

	printedData[self.index].msg = value
	self.msg = value
	customPrint:update()
end

function customPrint:update()
	local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
	local DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
	local DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")

	local MainView = DevConsoleUI and DevConsoleUI:FindFirstChild("MainView")
	local ClientLog = MainView and MainView:FindFirstChild("ClientLog")

	repeat
		task.wait()
		DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
		DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
		DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")

		MainView = DevConsoleUI and DevConsoleUI:FindFirstChild("MainView")
		ClientLog = MainView and MainView:FindFirstChild("ClientLog")
	until ClientLog

	Update(ClientLog)
end

function customPrint:getPrintInfo()
	return self
end

task.spawn(function()
	local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
	local DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
	local DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")

	local MainView = DevConsoleUI and DevConsoleUI:FindFirstChild("MainView")
	local ClientLog = MainView and MainView:FindFirstChild("ClientLog")

	if ClientLog then
		repeat
			Update(ClientLog)
			task.wait()
		until not MainView:FindFirstChild("ClientLog")
	end

	task.spawn(function()
		repeat task.wait()
			DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
			DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
			DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")
		until DevConsoleUI
	end)

	local Checking
	DevConsoleUI.ChildAdded:Connect(function(MainView)
		if MainView.Name == "MainView" and MainView:IsA("Frame") then
			local ClientLog = MainView:WaitForChild("ClientLog", 1)

			Update(ClientLog)
			Checking = ClientLog.ChildAdded:Connect(function()
				Update(ClientLog)
			end)
		end
	end)

	DevConsoleUI.ChildRemoved:Connect(function(MainView)
		if MainView.Name == "MainView" and MainView:IsA("Frame") and Checking then
			Checking:Disconnect()
			Checking = nil
		end
	end)
end)

return customPrint

--[[

EXAMPLE:

local customPrint = loadstring(game:HttpGet("https://raw.githubusercontent.com/uken2525v3/UniversalUken/refs/heads/main/custom_print.lua"))()

local load = customPrint.new("-", Color3.new(0, 1, 0))
task.wait()
for i = 1, 100 do
	local maxbar = 10
	local bar = math.floor(i / 100) * maxbar
	load:setText(`[Dick Hub]: Loading [{string.rep("#", bar)}|{string.rep(" ", maxbar - bar)}]...`)
	task.wait(0.05)
end
load:setText("[Dick Hub]: Loading successfully")
]]
