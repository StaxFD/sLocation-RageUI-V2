ESX = nil 

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)ESX = obj end)
        Citizen.Wait(80)
    end
end)
print("Created by Staxx \\ discord.gg/HSCcZGHxsD //")
Citizen.CreateThread(function()
    while true do
        local player = PlayerPedId()
        local playerPos = GetEntityCoords(PlayerPedId())
        local activerfps = false
        for k,v in pairs(Config.Coords) do
            local dst5 = GetDistanceBetweenCoords(playerPos, v.pos, true)
            if dst5 < 2.0 then
                activerfps = true
                if v.Type == "Voitures" then
                    ESX.ShowHelpNotification(Config.Voitures.NotifMarker)
                elseif v.Type == "Motos" then
                    ESX.ShowHelpNotification(Config.Motos.NotifMarker)
                elseif v.Type == "Bateaux" then 
                    ESX.ShowHelpNotification(Config.Bateaux.NotifMarker)
                elseif v.Type == "Avions" then
                    ESX.ShowHelpNotification(Config.Avions.NotifMarker)
                end
                if IsControlJustReleased(0, 38) then
                    OpenMenuLocation(v.Type)
                end
            end
        end
        if activerfps then
            Wait(1)
        else
            Wait(500)
        end
    end
end)

--- Blip ---
Citizen.CreateThread(function()
    Wait(1000)
    for _,v in ipairs(Config.Coords) do
        if v.Type == "Voitures" then
            if Config.Voitures.locationVoitures then
                local Blips = AddBlipForCoord(v.pos)
                SetBlipSprite (Blips, Config.Voitures.BlipSprite)
                SetBlipDisplay(Blips, Config.Voitures.BlipDisplay)
                SetBlipScale  (Blips, Config.Voitures.BlipScale)
                SetBlipColour (Blips, Config.Voitures.BlipColor)
                SetBlipAsShortRange(Blips, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Config.Voitures.BlipLabel)
                EndTextCommandSetBlipName(Blips)
                RequestModel(Config.Voitures.PedType)
                while not HasModelLoaded(Config.Voitures.PedType) do
                    RequestModel(Config.Voitures.PedType)
                    Citizen.Wait(10)
                end
                Peds = CreatePed(1, Config.Voitures.PedType, v.pos, 0.0, false, true)
                SetEntityHeading(Peds, v.heading)
                SetEntityInvincible(Peds, true)
                SetBlockingOfNonTemporaryEvents(Peds, true)
                FreezeEntityPosition(Peds,true)
            end
        elseif v.Type == "Motos" then
            if Config.Motos.locationMotos then
                local Blips = AddBlipForCoord(v.pos)
                SetBlipSprite (Blips, Config.Motos.BlipSprite)
                SetBlipDisplay(Blips, Config.Motos.BlipDisplay)
                SetBlipScale  (Blips, Config.Motos.BlipScale)
                SetBlipColour (Blips, Config.Motos.BlipColor)
                SetBlipAsShortRange(Blips, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Config.Motos.BlipLabel)
                EndTextCommandSetBlipName(Blips)
                RequestModel(Config.Motos.PedType)
                while not HasModelLoaded(Config.Motos.PedType) do
                    RequestModel(Config.Motos.PedType)
                    Citizen.Wait(10)
                end
                Peds = CreatePed(1, Config.Bateaux.PedType, v.pos, 0.0, false, true)
                SetEntityHeading(Peds, v.heading)
                SetEntityInvincible(Peds, true)
                SetBlockingOfNonTemporaryEvents(Peds, true)
                FreezeEntityPosition(Peds,true)
            end
        elseif v.Type == "Bateaux" then
            if Config.Bateaux.locationBateaux then
                local Blips = AddBlipForCoord(v.pos)
                SetBlipSprite (Blips, Config.Bateaux.BlipSprite)
                SetBlipDisplay(Blips, Config.Bateaux.BlipDisplay)
                SetBlipScale  (Blips, Config.Bateaux.BlipScale)
                SetBlipColour (Blips, Config.Bateaux.BlipColor)
                SetBlipAsShortRange(Blips, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Config.Bateaux.BlipLabel)
                EndTextCommandSetBlipName(Blips)
                RequestModel(Config.Bateaux.PedType)
                while not HasModelLoaded(Config.Bateaux.PedType) do
                    RequestModel(Config.Bateaux.PedType)
                    Citizen.Wait(10)
                end
                Peds = CreatePed(1, Config.Bateaux.PedType, v.pos, 0.0, false, true)
                SetEntityHeading(Peds, v.heading)
                SetEntityInvincible(Peds, true)
                SetBlockingOfNonTemporaryEvents(Peds, true)
                FreezeEntityPosition(Peds,true)
            end
        elseif v.Type == "Avions" then
            if Config.Avions.locationAvions then
                local Blips = AddBlipForCoord(v.pos)
                SetBlipSprite (Blips, Config.Avions.BlipSprite)
                SetBlipDisplay(Blips, Config.Avions.BlipDisplay)
                SetBlipScale  (Blips, Config.Avions.BlipScale)
                SetBlipColour (Blips, Config.Avions.BlipColor)
                SetBlipAsShortRange(Blips, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString(Config.Avions.BlipLabel)
                EndTextCommandSetBlipName(Blips)
                RequestModel(Config.Avions.PedType)
                while not HasModelLoaded(Config.Avions.PedType) do
                    RequestModel(Config.Avions.PedType)
                    Citizen.Wait(10)
                end
                Peds = CreatePed(1, Config.Avions.PedType, v.pos, 0.0, false, true)
                SetEntityHeading(Peds, v.heading)
                SetEntityInvincible(Peds, true)
                SetBlockingOfNonTemporaryEvents(Peds, true)
                FreezeEntityPosition(Peds,true)
            end
        end
    end
end)


