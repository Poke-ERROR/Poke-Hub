local Workspace = game:GetService("Workspace")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local colors = {
    SchemeColor = Color3.fromRGB(120,200,33);
    Background = Color3.fromRGB(32, 32, 32);
    Header = Color3.fromRGB(24, 24, 24);
    TextColor = Color3.fromRGB(255,255,255);
    ElementColor = Color3.fromRGB(75, 75, 75);
}

local player = game.Players.LocalPlayer

if game.PlaceId == 3956818381 then -- ninja legends

    local Window = Library.CreateLib("Poke's Hub | Poke#1390", colors)
    local mainTab = Window:NewTab("Main")
    local playerTab = Window:NewTab("Player")

    local a = mainTab:NewSection("Auto")

    a:NewToggle("Autoswing", "Auto Clicks", function(v)
        getgenv().Autoswing = v
        while true do
            if getgenv().Autoswing == false then return end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait()
        end
    end)

    a:NewToggle("Auto Sell Ninjitsu", "Auto Sells Ninjitsu", function(v)
        getgenv().SellNinjitsu = v
        local oldCFrame = game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame
        while true do
            if getgenv().SellNinjitsu == false then return end
            game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles.sellAreaCircle16.circleInner.CFrame = oldCFrame
            wait()
        end
    end)

    a:NewToggle("Auto Buy Swords", "Auto Buys All Swords", function(v)
        getgenv().BuySwords = v
        while true do
            if getgenv().BuySwords == false then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(1.5)
        end
    end)

    a:NewToggle("Auto Buy Belts", "Auto Buys All Belts", function(v)
        getgenv().BuyBelts = v
        while true do
            if getgenv().BuyBelts == false then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(2)
        end
    end)

    a:NewToggle("Auto Buy Ranks", "Auto Buys All Ranks", function(v)
        getgenv().buyRank = v
        local allRanks = {
            "Grasshopper";
            "Apprentice";
            "Samurai";
            "Stealth";
            "Shadow";
            "Ninja";
            "Master Ninja";
            "Sensei";
            "Master Sensei";
            "Ninja Legend";
            "Master Of Shadows";
            "Immortal Assassin";
            "Eternity Hunter";
            "Shadow Legend";
            "Dragon Warrior";
            "Dragon Master";
            "Chaos Sensei";
            "Chaos Legend";
            "Master Of Elements";
            "Elemental Legend";
            "Ancient Battle Master";
            "Ancient Battle Legend";
            "Legendary Shadow Duelist";
            "Master Legend Assassin";
            "Mythic Shadowmaster";
            "Legendary Shadowmaster";
            "Awakened Scythemaster";
            "Awakened Scythe Legend";
            "Master Legend Zephyr";
            "Golden Sun Shuriken Master";
            "Golden Sun Shuriken Legend";
            "Dark Sun Samurai Legend";
            "Dragon Evolution Form I";
            "Dragon Evolution Form II";
            "Dragon Evolution Form III";
            "Dragon Evolution Form IV";
            "Dragon Evolution Form V";
            "Cybernetic Electro Master";
            "Cybernetic Electro Legend";
            "Shadow Chaos Assassin";
            "Shadow Chaos Legend";
            "Infinity Sensei";
            "Infinity Legend";
            "Aether Genesis Master Ninja";
            "Master Legend Sensei Hunter";
            "Skystorm Series Samurai Legend";
            "Master Elemental Hero";
            "Eclipse Series Soul Master";
            "Starstrike Master Sensei";
            "Evolved Series Master Ninja";
            "Dark Elements Guardian";
            "Elite Series Master Legend";
            "Infinity Shadows Master";
            "Lightning Storm Sensei";
            "Dark Elements Blademaster";
            "Rising Shadow Eternal Ninja";
            "Skyblade Ninja Master";
            "Shadow Storm Sensei";
            "Comet Strike Lion";
            "Cybernetic Azure Sensei";
            "Ultra Genesis Shadow";
            } while true do
            if getgenv().buyRank == false then return end
            for _, rank in ipairs(allRanks) do
                local A_1 = "buyRank"
                local A_2 = rank
                local Event = game:GetService("Players").LocalPlayer.ninjaEvent
                Event:FireServer(A_1, A_2)
            end
            wait(5)
        end
    end)

    a:NewToggle("Auto Buy Skills", "Auto Buys All Skills", function(v)
        getgenv().BuySkills = v
        while true do
            if getgenv().BuySkills == false then return end
            local A_1 = "buyAllSkills"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(2)
        end
    end)

    a:NewToggle("Auto Buy Shurikens", "Auto Buys All Shurikens", function(v)
        getgenv().BuyShurikens = v
        while true do
            if getgenv().BuyShurikens == false then return end
            local A_1 = "buyAllShurikens"
            local A_2 = "Blazing Vortex Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(2)
        end
    end)

    a:NewToggle("Auto Collect Chi/Coins", "Auto Collects Chi/Coins", function(v)
        getgenv().collectCurrency = v
        while wait(.5) do
            if getgenv().collectCurrency == false then return end
            for _,part in pairs(game:GetService("Workspace").spawnedCoins:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end)

--------------------------------------------------------------------------------------------------------

    local b = mainTab:NewSection("Misc.")

    b:NewButton("Unlock All Islands", "Unlock All Islands", function()
        local oldCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.2)
        end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldCFrame
    end)

--------------------------------------------------------------------------------------------------------

    local CrystalTab = Window:NewTab("Crystals")
    local OpenCrystalSection = CrystalTab:NewSection("Open Crystal")


    local SelectedEgg
    OpenCrystalSection:NewDropdown("Select Crystal To Open", "Selects The Crystal To Open", {
        "Enchanted Crystal";
        "Astral Crystal";
        "Golden Crystal";
        "Inferno Crystal";
        "Galaxy Crystal";
        "Blue Crystal";
        "Purple Crystal";
        "Frozen Crystal";
        "Eternal Crystal";
        "Storm Crystal";
        "Thunder Crystal";
        "Ultra Shockwave Crystal";
        "Secret Blades Crystal";
        "Infinity Void Crystal";
        }, function(v)
            SelectedEgg = v
        end)
        OpenCrystalSection:NewToggle("Auto Open Egg", "Auto Open Eggs", function(v)
        getgenv().openEgg = v
        while wait(.5) do
            if getgenv().openEgg == false then return end
            local args = {
                [1] = "openCrystal",
                [2] = SelectedEgg
            }
            game:GetService("ReplicatedStorage").rEvents.openCrystalRemote:InvokeServer(unpack(args))
        end
    end)

    local EvolveSection = CrystalTab:NewSection("Evolve Pets")

    EvolveSection:NewToggle("Auto Evolve Pets", "Auto Evolves Your Pets", function(v)
        getgenv().autoEvolve = v
        while wait(.5) do
            if getgenv().autoEvolve == false then return end
            local A_1 = "autoEvolvePets"
            local Event = game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote
            Event:InvokeServer(A_1)
        end
    end)


--------------------------------------------------------------------------------------------------------

    local SettingTab = Window:NewTab("Settings")
    local SettingSection = SettingTab:NewSection("Settings")
    
    SettingSection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.LeftAlt, function()
        Library:ToggleUI()
    end)



elseif game.PlaceId == 9555732501 then --nen fighting simulator
    local Window = Library.CreateLib("Poke's Hub | Nen Fighting Simulator", colors)

    local AutoTab = Window:NewTab("Auto")
    local AutoSection = AutoTab:NewSection("Auto")

    AutoSection:NewToggle("Auto Train Strength", "Auto Trains", function(v)
        getgenv().AutoTrainStr = v
        while true do
            if getgenv().AutoTrainStr == false then return end
            local args = {[1] = "str"} game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            wait()
        end
    end)

    AutoSection:NewToggle("Auto Train Durability", "Auto Trains", function(v)
        getgenv().AutoTrainDur = v
        while true do
            if getgenv().AutoTrainDur == false then return end
            local args = {[1] = "dur"} game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            wait()
        end
    end)


    AutoSection:NewToggle("Auto Train Agility", "Auto Trains", function(v)
        getgenv().AutoTrainAgi = v
        while true do
            if getgenv().AutoTrainAgi == false then return end
            local args = {[1] = "agi"} game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
            wait()
        end
    end)

        AutoSection:NewToggle("Auto Train Nen", "Auto Trains", function(v)
            getgenv().AutoTrainNen = v
            while true do
                if getgenv().AutoTrainNen == false then return end
                local args = {[1] = "nen"} game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
                game:GetService("ReplicatedStorage").Remotes.train:FireServer(unpack(args))
                wait()
            end
        end)





    local SettingTab = Window:NewTab("Settings")
    local SettingSection = SettingTab:NewSection("Settings")
    
    SettingSection:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.LeftAlt, function()
        Library:ToggleUI()
    end)

elseif game.PlaceId == 5956785391 or 6152116144 then
    local Window = Library.CreateLib("Poke Hub | Project Slayers", colors)

    local AutoTab = Window:NewTab("Auto")
    local AutoSection = AutoTab:NewSection("Auto")

    AutoSection:NewToggle("Infinite Money", "Give Infinite Money", function(v)
        getgenv().InfMoney = v
        while true do
            if getgenv().InfMoney == false then return end
            if player.PlayerGui.ver.ver.Text == "v.121" then
                wait()
                local silly1 = 100
                local silly2 = 0
                local silly3 = -5000000
                game:GetService("ReplicatedStorage").purchase_elixirs:FireServer(silly1, silly2, silly3)
            else
                player:Kick("Incorrect server version join a server with the version v.121")
            end
        end
    end)
else local Window = Library.CreateLib("Poke's Hub | Game Not Supported!", colors) -- game not supported statement
end

