local HumanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local UIS = game:GetService'UserInputService'
local Sound = Instance.new("Sound")
Sound.Parent = workspace

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Server Script", HidePremium = false, SaveConfig = true, ConfigFolder = "ServerConfig"})

local Scripts = Window:MakeTab({
	Name = "Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Scripts:AddButton({
	Name = "Inf Ammo and Gun Mods",
	Callback = function()
game.UserInputService.InputBegan:Connect(function(i, g)
    if i.UserInputType == Enum.UserInputType.MouseButton1 and not g and not game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.equipping.Value then
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.DISABLED.Value = true -- idk
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 300 -- inf ammo
        game.Players.LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 300 -- inf ammo
        require(game.Players.LocalPlayer.PlayerGui.GUI.Client.Functions.Weapons).firebullet() -- more damage or double shoot
    end
end)

for _, v in pairs(game.ReplicatedStorage.Weapons:GetDescendants()) do if v.Name == 'RecoilControl' then v.Value = 0 end if v.Name == 'MaxSpread' then v.Value = 0 end if v.Name == 'Auto' then v.Value = true end end
	end	
})

Scripts:AddButton({
	Name = "Player Range",
	Callback = function()
		function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(13,13,13)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
	end
})

Scripts:AddButton({
	Name = "Owl Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
	end
})

local localPlayerScripts = Window:MakeTab({
	Name = "local Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

localPlayerScripts:AddButton({
	Name = "Infinite Yeld",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})

localPlayerScripts:AddToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(t)
		getgenv().infjump = t
	end    
})

UIS.InputBegan:Connect(function(UserInput,Typed)
	if getgenv().infjump == true and UserInput.KeyCode == Enum.KeyCode.Space then
		game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)

localPlayerScripts:AddSlider({
	Name = "JumpPower",
	Min = 35,
	Max = 200,
	Default = 35,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	--ValueName = "bananas",
	Callback = function(t)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = t
	end    
})

localPlayerScripts:AddSlider({
	Name = "WalkSpeed",
	Min = 15,
	Max = 500,
	Default = 15,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	--ValueName = "bananas",
	Callback = function(t)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = t
	end    
})

local SongBeatsTab = Window:MakeTab({
	Name = "SongBeats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

SongBeatsTab:AddButton({
	Name = "Tarantella Napoletana",
	Callback = function()
		Sound.SoundId = "rbxassetid://1846507211"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Tense Stories",
	Callback = function()
		Sound.SoundId = "rbxassetid://1836050803"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Relaxed Scene",
	Callback = function()
		Sound.SoundId = "rbxassetid://1848354536"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Happy Song",
	Callback = function()
		Sound.SoundId = "rbxassetid://1843404009"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Parry Gripp - Raining Tacos",
	Callback = function()
		Sound.SoundId = "rbxassetid://142376088"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Halloween Horrors Waltz",
	Callback = function()
		Sound.SoundId = "rbxassetid://1836009626"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddButton({
	Name = "Life in an Elevator",
	Callback = function()
		Sound.SoundId = "rbxassetid://1841647093"
		wait(.10)
		Sound:Play()
	end
})

SongBeatsTab:AddLabel("Custom Player Config")

SongBeatsTab:AddTextbox({
	Name = "Enter Sound ID | Numbers",
	Default = "default box input",
	TextDisappear = false, 
	Callback = function(Value)
		Sound.SoundId = "rbxassetid://"..Value
	end
})

SongBeatsTab:AddButton({
	Name = "Play",
	Callback = function()
		Sound:Play()
	end
})

local Settings = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Settings:AddSlider({
	Name = "Sound Volume",
	Min = 0,
	Max = 10,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		Sound.Volume = Value
	end    
})

Settings:AddToggle({
	Name = "PlayLooped Enabled",
	Default = false,
	Callback = function(Value)
		Sound.PlaybackRegionsEnabled = Value
		Sound.Looped = Value
	end    
})

if game:IsLoaded() then
	print("[ServerScriptAPI]: game is Loaded!")
end

if not game:IsLoaded() then
	warn("[ServerScriptAPI]: game isent Loaded")
end

if game.Players then
	print("[ServerScriptAPI]: Players are Loaded!")
end

if not game.Players.LocalPlayer then
	warn("[ServerScriptAPI]: LocalPlayer isent Loaded!")
end

game:GetService('TestService'):Message("\n[ServerScript_DiscordAPI]: Remember to join the Discord Server :) : https://discord.gg/Cre8ejpQ")
