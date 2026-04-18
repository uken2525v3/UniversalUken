local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer

function main()
    repeat task.wait() until game:IsLoaded()
    
    task.spawn(function()
        local Players = game:GetService("Players")
        local UserInputService = game:GetService("UserInputService")

        local LocalPlayer = Players.LocalPlayer

        local function touch(obj)
            local Character = LocalPlayer.Character
            local HumanoidRootPart = Character and Character.HumanoidRootPart

            if not Character or not HumanoidRootPart then
                return
            end
            firetouchinterest(HumanoidRootPart, obj, 1)
            task.wait()
            firetouchinterest(HumanoidRootPart, obj, 0)
        end

        local function aura()
            local CoinContainer = workspace:QueryDescendants("#CoinContainer")

            if CoinContainer[1] ~= nil then
                local Coins = CoinContainer[1]:GetChildren()

                for _, coin in ipairs(Coins) do
                    local Character = LocalPlayer.Character
                    local HumanoidRootPart = Character and Character.HumanoidRootPart
                    
                    if not Character or not HumanoidRootPart then
                        return
                    end
                    
                    if (coin.Position - HumanoidRootPart.Position).Magnitude < 75 then
                        touch(coin)
                    end
                end
            end
        end

        print("[Coin Aura]: Ready")
        while task.wait(0.25) do
            aura()
        end
    end)

    task.spawn(function()
        if raknet == nil then
             return
        end
            
        local uis = game:GetService("UserInputService")
        local hooked = false
        local toggleKey = Enum.KeyCode.U

        local function rakhook(packet)
            if packet.PacketId == 0x1B then
                local buf = packet.AsBuffer
                buffer.writeu32(buf, 1, 0xFFFFFFFF)
                packet:SetData(buf)
            end
        end

        uis.InputBegan:Connect(function(obj, gameProcessedEvent)
            if obj.KeyCode ~= toggleKey or gameProcessedEvent then return end

            if hooked then
                raknet.remove_send_hook(rakhook)
            else
                raknet.add_send_hook(rakhook)
            end 

            hooked = not hooked
            print("[Raknet Library]:", hooked)
        end)
            
        print("[Raknet Library]: Ready")
    end)
end

main()

queue_on_teleport([[loadstring(game:HttpGet("https://github.com/uken2525v3/UniversalUken/raw/refs/heads/main/Murderer_Mystery_2_OP.lua"))()]])
