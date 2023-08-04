local HumanoidRootPart = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local UIS = game:GetService'UserInputService'

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Server Script Pre-Release", HidePremium = false, SaveConfig = true, ConfigFolder = "ServerConfig"})

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
	Name = "JumpPower",
	Min = 15,
	Max = 100,
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
