local HumanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local UIS = game:GetService'UserInputService'
local Sound = Instance.new("Sound")
Sound.Parent = workspace

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Server Script", HidePremium = false, SaveConfig = true, ConfigFolder = "ServerConfig"})

local TPTab = Window:MakeTab({
	Name = "TP",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = TPTab:AddSection({
	Name = "House"
})

TPTab:AddButton({
	Name = "Middle House",
	Callback = function()
      	HumanoidRootPart.CFrame = CFrame.new(-29, 3, -205)
  	end    
})

TPTab:AddButton({
	Name = "Basement",
	Callback = function()
		HumanoidRootPart.CFrame = CFrame.new(68, -14, -162)
	end
})

TPTab:AddButton({
	Name = "Attic",
	Callback = function()
		HumanoidRootPart.CFrame = CFrame.new(-15, 36, -210)
	end
})

local Section_1 = TPTab:AddSection({
	Name = "Other TP's",
})

TPTab:AddButton({
	Name = "Store",
	Callback = function()
		HumanoidRootPart.CFrame = CFrame.new(-425, 4, -117)
	end
})

TPTab:AddButton({
	Name = "BossRoom",
	Callback = function()
		HumanoidRootPart.CFrame = CFrame.new(-39, -287, -1480)
	end
})

TPTab:AddButton({
	Name = "Lid",
	Callback = function()
		HumanoidRootPart.CFrame = CFrame.new(129, 3, -125)
	end    
})

local Section_2 = TPTab:AddSection({
	Name = "Somthing Else",
})

TPTab:AddButton({
	Name = "Get Code",
	Callback = function()
		game.workspace.CodeNote.CFrame = HumanoidRootPart.CFrame
	end
})

local GiveTool = Window:MakeTab({
	Name = "Give Items",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

GiveTool:AddButton({
	Name = "Apple",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Apple")
	end
})

GiveTool:AddButton({
	Name = "Cookie",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cookie")
	end
})

GiveTool:AddButton({
	Name = "Chips",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Chips")
	end
})

GiveTool:AddButton({
	Name = "Lollipop",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Lollipop")
	end
})

GiveTool:AddButton({
	Name = "Cure",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Cure")
	end
})

GiveTool:AddButton({
	Name = "Guest's Sword",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("LinkedSword")
	end
})

GiveTool:AddButton({
	Name = "Teddy Bloxpin",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("TeddyBloxpin")
	end
})

GiveTool:AddButton({
	Name = "Bat",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Bat")
	end
})

GiveTool:AddButton({
	Name = "Plank",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Plank")
	end
})

GiveTool:AddButton({
	Name = "Bloxy Cola",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("BloxyCola")
	end
})

GiveTool:AddButton({
	Name = "Pizza",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.GiveTool:FireServer("Pizza3")
	end
})

GiveTool:AddButton({
	Name = "Bloxy Pack | Only Once",
	Callback = function()
		game.ReplicatedStorage.RemoteEvents.BloxyPack:FireServer(1)
	end
})

GiveTool:AddButton({
	Name = "MedKit",
	Callback = function()
		game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("MedKit")
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

local Events = Window:MakeTab({
	Name = "Events",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Events:AddButton({
	Name = "Best Friend Cat",
	Callback = function()
	
		local args = {
    [1] = 244,
    [2] = true
}

game:GetService("ReplicatedStorage").RemoteEvents.DoDialogue:FireServer(unpack(args))



game:GetService("ReplicatedStorage").RemoteEvents.Cattery:FireServer()
	end
})

local BuyItems = Window:MakeTab({
	Name = "BuyItems",
	Icon = nil,
	PremiumOnly = false
})

BuyItems:AddButton({
	Name = "Pan",
	Callback = function()
		
		local args = {
			[1] = "Pan",
			[2] = 0
		}
		
		game:GetService("ReplicatedStorage").RemoteEvents.BuyItem:FireServer(unpack(args))
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
