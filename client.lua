
local vehfixed = "Your vehicle have been fixed!"
local NotInVeh = "You are not in any vehicle!"
local MecanoOnline = "Mecano online, go there instead!"

RegisterNetEvent('thaisen:repair')
AddEventHandler('thaisen:repair', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		TriggerEvent("pNotify:SendNotification",{ text = vehfixed, type = "success", timeout = (3000), layout = "bottomCenter", queue = "global", animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true,})
	else
		TriggerEvent("pNotify:SendNotification",{ text = NotInVeh, type = "success", timeout = (3000), layout = "bottomCenter", queue = "global", animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true,})
	end
end)


RegisterNetEvent('thaisenrepair:besked')
AddEventHandler('thaisenrepair:besked', function()

TriggerEvent("pNotify:SendNotification",{ text = MecanoOnline, type = "success", timeout = (3000), layout = "bottomCenter", queue = "global", animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true,})

end)