if game.PlaceId == 3851622790 or game.PlaceId == 4620170611 then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Break in (Story) game has Loaded!")
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Break in (Story) hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == 286090429 then
	if game:IsLoaded() then
		warn("[ServerScriptAPI]: Arsenal has Loaded!")	
	end
	if not game:IsLoaded() then
		error("[ServerScriptAPI]: Arsenal hasent Loaded. Pls wait until its loaded")
	end
end

if game.PlaceId == 286090429 then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/286090429.lua", true))()
	end
end

if game.PlaceId == 3851622790 or game.PlaceId == 4620170611 then
	if game:IsLoaded() then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SubnauticaLaserMain/script_2/main/Break%20in%20Story%20Script.lua", true))()
	end
end
