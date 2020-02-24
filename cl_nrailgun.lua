RegisterNetEvent('nrailgun:railgun')
AddEventHandler('nrailgun:railgun', function()
	local playerPed  = PlayerPedId()
    local weaponHash = GetHashKey("weapon_railgun")
    if HasPedGotWeapon(playerPed, weaponHash) then
        RemoveWeaponFromPed(playerPed, weaponHash)
        ShowNotification("~r~Railgun retiré")
    else
        GiveWeaponToPed(playerPed, weaponHash, 999, false, false)
        ShowNotification("~g~Railgun reçu")
    end
end)

function ShowNotification(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentSubstringPlayerName(msg)
	DrawNotification(false, true)
end