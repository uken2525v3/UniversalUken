local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local customPrint = {}
customPrint.__index = customPrint

function customPrint.new(message: string, color: Color3 | BrickColor)
	local data = {}

	data.msg = message and tostring(message) or "Hello, World!"
	data.time = os.date("*t")
	data.uid = HttpService:GenerateGUID()
	data.color = typeof(color) == "BrickColor" 
		and color.Color
		or (color ~= nil and color or Color3.new(1, 1, 1))
	
	print(data.uid)
	
	task.spawn(function()
		local CoreGui = game:GetService("CoreGui")
		while task.wait() do -- you can use another loop but i use this
			local DevConsoleMaster = CoreGui:FindFirstChild("DevConsoleMaster")
			local DevConsoleWindow = DevConsoleMaster and DevConsoleMaster:FindFirstChild("DevConsoleWindow")
			local DevConsoleUI = DevConsoleWindow and DevConsoleWindow:FindFirstChild("DevConsoleUI")
			local MainView = DevConsoleUI and DevConsoleUI:FindFirstChild("MainView")
			local ClientLog = MainView and MainView:FindFirstChild("ClientLog")

			local function getPrintedMessage()
				local msgLog = ClientLog:QueryDescendants("#msg TextLabel")
				for _, msg in ipairs(msgLog) do
					if msg.Text:find(data.uid) then
						return msg
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
					printed.Text = `<font color="#{printColor:ToHex()}">` .. string.format("%02d:%02d:%02d -- %s", printTime.hour, printTime.min, printTime.sec, printContent)
				end
			end
		end
	end)
	
	return setmetatable(data, customPrint)
end

function customPrint:setColor3(color3: Color3)
	assert(color3, "you forgot to put Color3, buddy.")
	assert(typeof(color3) == "string", "wrong datatype, color3 should be Color3, buddy.")

	self.color = color3
end

function customPrint:setBrickColor(brickColor: BrickColor)
	assert(brickColor, "you forgot to put BrickColor, buddy.")
	assert(typeof(brickColor) == "string", "wrong datatype, brickColor should be BrickColor, buddy.")

	self.color = brickColor.Color
end

function customPrint:setMessage(message: string)
	self.msg = message and tostring(message) or "Hello, World!"
end

function customPrint:getPrintInfo()
	return self
end

return customPrint
