if not game:IsLoaded() then
	game.Loaded:Wait()
end

local server = {}
local totalServer = {}

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local JobId = game.JobId
local PlaceId = game.PlaceId

local LocalPlayer = Players.LocalPlayer

function server.hop()
	local serverList = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
	local serverListTable = HttpService:JSONDecode(serverList)

	if serverListTable then
		totalServer = {}
		for _, serverData in pairs(serverListTable.data) do
			print(serverData.id)
			table.insert(totalServer, serverData.id)
		end
	end

	local selectJobId = totalServer[math.random(1, #totalServer)]
	TeleportService:TeleportToPlaceInstance(PlaceId, selectJobId, LocalPlayer)
end

function server.rejoin()
	TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
end

return server
