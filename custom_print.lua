--[[

Documentation: 

[Create new custom print] - local newText = Custom_Print.new(text: string, color: Color3 | BrickColor, image: number)

[Change text content] - newText:setText(text: string)
[Change text color (with Color3)] - newText:setColor3(color: Color3)
[Change text color (with BrickColor)] - newText:setBrickColor(color: BrickColor)
[Change image] - newText:setImage(image: string | number)


Example:

local Custom_Print = loadstring(game:HttpGet("https://github.com/uken2525v3/UniversalUken/raw/refs/heads/main/custom_print.lua"))()
local LoadingText = Custom_Print.new("", Color3.new(1, 1, 0))
for i = 1, 100 do
	local maxBar = 15
	local bar = math.floor(i / 100 * maxBar)

	LoadingText:setText(`[ Dick Hub ]: Loading [{string.rep("#", bar)}/{string.rep(" ", maxBar - bar)}]...`)
	task.wait(0.025)
end
LoadingText:setText("[ Dick Hub ]: Loaded!")
LoadingText:setColor3(Color3.new(0, 1, 0))

]]

local Custom_Print = {}
Custom_Print.__index = Custom_Print
Custom_Print._instances = {}

local CoreGui = game:GetService("CoreGui")

local getClientLog = function()
	local _, clientLog = pcall(function()
		return CoreGui:FindFirstChild("DevConsoleMaster"):FindFirstChild("DevConsoleWindow"):FindFirstChild("DevConsoleUI"):FindFirstChild("MainView"):FindFirstChild("ClientLog")
	end)

	return typeof(clientLog) == "Instance" and clientLog
end

local updateAllData = function()
	for uid, data in pairs(Custom_Print._instances) do
		local clientLog = getClientLog()

		if clientLog then
			for _, printedText in ipairs(clientLog:GetChildren()) do
				local msg = printedText:FindFirstChild("msg")

				if msg and msg.Text and (msg.Text:sub(13) == tostring(uid) or msg:GetAttribute("UID") == uid) then
					local dataTime = data.time
					local timeString = string.format("%02d:%02d:%02d -- ", dataTime.hour, dataTime.min, dataTime.sec)
					
					msg:SetAttribute("UID", uid)

					msg.RichText = true
					msg.Text = `<font color="#{data.color:ToHex()}">{timeString}{data.text}</font>`
				end
			end
		end
	end
end

local newUniqueId = function()
	local uid = ""
	for i = 1, 6 do
		uid ..= math.random(0, 9)
	end
	return uid
end

function Custom_Print.new(text: string, color: Color3 | BrickColor, image: string | number)
	local Uid = newUniqueId()
	local newMetatable = setmetatable({}, Custom_Print)
	newMetatable.text = text
	newMetatable.color = typeof(color) == "BrickColor" and color.Color or color
	newMetatable.image = typeof(image) == "number" and "rbxassetid://" .. tostring(image) or image
	newMetatable.uid = Uid
	newMetatable.time = os.date("*t")

	print(Uid)
	Custom_Print._instances[Uid] = newMetatable

	return newMetatable
end

function Custom_Print:setText(text: string)
	local newText = text

	Custom_Print._instances[self.uid].text = newText
	self.text = newText

	updateAllData()
end

function Custom_Print:setColor3(color: Color3)
	local newColor = color

	Custom_Print._instances[self.uid].color = newColor
	self.color = newColor

	updateAllData()
end

function Custom_Print:setBrickColor(color: BrickColor)
	local newColor = color.Color

	Custom_Print._instances[self.uid].color = newColor
	self.color = newColor

	updateAllData()
end

function Custom_Print:setImage(image: string | number)
	local newImage = typeof(image) == "number" and "rbxassetid://" .. tostring(image) or image


	Custom_Print._instances[self.uid].image = newImage
	self.image = newImage

	updateAllData()
end

task.spawn(function()
	local DevConsoleMaster: ScreenGui = CoreGui:WaitForChild("DevConsoleMaster")

	local onPrintLogged

	local function printLoggerMain(clientLog)
		updateAllData()
		onPrintLogged = clientLog.ChildAdded:Connect(function()
			updateAllData()
		end)
	end

	local currentClientLog = getClientLog()
	if currentClientLog then
		printLoggerMain(currentClientLog)
	end

	DevConsoleMaster.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "ClientLog" then
			printLoggerMain(descendant)
		end
	end)

	DevConsoleMaster.DescendantRemoving:Connect(function(descendant)
		if descendant.Name == "ClientLog" then
			if onPrintLogged ~= nil then
				onPrintLogged:Disconnect()
				onPrintLogged = nil
			end
		end
	end)
end)

return Custom_Print
