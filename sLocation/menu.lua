ESX = nil TriggerEvent('esx:getSharedObject', function(obj)ESX = obj end)

local cooldownvoiture = false
local cooldownmotos = false
local cooldownbateaux = false
local cooldownavions = false
OpenMenuLocation = function(Type)
    local voitures = RageUI.CreateMenu(Type, 'Locations')
    local moto = RageUI.CreateMenu(Type, 'Locations')
    local bateau = RageUI.CreateMenu(Type, 'Locations')
    local avion = RageUI.CreateMenu(Type, 'Locations')
    if Type == 'Voitures' then 
        RageUI.Visible(voitures, not RageUI.Visible(voitures))
    elseif Type == 'Motos' then 
        RageUI.Visible(moto, not RageUI.Visible(moto))
    elseif Type == 'Bateaux' then 
        RageUI.Visible(bateau, not RageUI.Visible(bateau))
    elseif Type == 'Avions' then 
        RageUI.Visible(avion, not RageUI.Visible(avion))
    end
    while voitures do
        Citizen.Wait(0)
        RageUI.IsVisible(voitures, function()
            camVoiture()
            FreezeEntityPosition(PlayerPedId(), true)
            if cooldownvoiture then 
                RageUI.Separator(Config.TextSeparator)
                RenderScriptCams(false, false ,0, false, false)
            else 
                RageUI.Separator(Config.Voitures.TextVoitures)
            end
            for k,v in pairs(Config.Voitures.VoituresListe) do
                RageUI.Button(v.label, nil, {RightLabel = v.pricelabel}, not cooldownvoiture, {
                    onActive = function()
                        UpdateCam(v.name , v.posSpawn, v.heading)
                    end,
                    onSelected = function()
                        cooldownvoiture = true
                        TriggerServerEvent("Stax:Buy",v.price,v.label,v.name,v.posSpawn, v.heading, v.plaque,v.kmh)
                        RageUI.CloseAll()
                        Wait(25000)
                        cooldownvoiture = false
                    end
                })
            end
        end)
        if not RageUI.Visible(voitures) then 
            voitures = RMenu:DeleteType(Type, true,stopprevue(),FreezeEntityPosition(PlayerPedId(), false))
        end
    end
    while moto do
        Citizen.Wait(0)
        RageUI.IsVisible(moto, function()
            camMotos()
            FreezeEntityPosition(PlayerPedId(), true)
            if cooldownmotos then 
                RageUI.Separator(Config.TextSeparator)
                RenderScriptCams(false, false ,0, false, false)
            else 
                RageUI.Separator(Config.Motos.TextMotos)
            end
            for k,v in pairs(Config.Motos.MotosListe) do
                RageUI.Button(v.label, nil, {RightLabel = v.pricelabel}, not cooldownmotos, {
                    onActive = function()
                        UpdateCam(v.name , v.posSpawn, v.heading)
                    end,
                    onSelected = function()
                        cooldownmotos = true
                        TriggerServerEvent("Stax:Buy",v.price,v.label,v.name,v.posSpawn, v.heading, v.plaque,v.kmh)
                        RageUI.CloseAll()
                        Wait(25000)
                        cooldownmotos = false
                    end
                })
            end
        end)
        if not RageUI.Visible(moto) then 
            moto = RMenu:DeleteType(Type, true,stopprevue(),FreezeEntityPosition(PlayerPedId(), false))
        end
    end
    while bateau do
        Citizen.Wait(0)
        RageUI.IsVisible(bateau, function()
            camBateaux()
            FreezeEntityPosition(PlayerPedId(), true)
            if cooldownbateaux then 
                RageUI.Separator(Config.TextSeparator)
                RenderScriptCams(false, false ,0, false, false)
            else 
                RageUI.Separator(Config.Bateaux.TextBateaux)
            end
            for k,v in pairs(Config.Bateaux.BateauxListe) do
                RageUI.Button(v.label, nil, {RightLabel = v.pricelabel}, not cooldownbateaux, {
                    onActive = function()
                        UpdateCam(v.name , v.posSpawn, v.heading)
                    end,
                    onSelected = function()
                        cooldownbateaux = true
                        TriggerServerEvent("Stax:Buy",v.price,v.label,v.name,v.posSpawn, v.heading, v.plaque,v.kmh)
                        RageUI.CloseAll()
                        Wait(25000)
                        cooldownbateaux = false
                    end
                })
            end
        end)
        if not RageUI.Visible(bateau) then 
            bateau = RMenu:DeleteType(Type, true,stopprevue(),FreezeEntityPosition(PlayerPedId(), false))
        end
    end
    while avion do
        Citizen.Wait(0)
        RageUI.IsVisible(avion, function()
            camAvions()
            FreezeEntityPosition(PlayerPedId(), true)
            if cooldownavions then 
                RageUI.Separator(Config.TextSeparator)
                RenderScriptCams(false, false ,0, false, false)
            else 
                RageUI.Separator(Config.Avions.TextAvions)
            end
            for k,v in pairs(Config.Avions.AvionsHelicoptereListe) do
                RageUI.Button(v.label, nil, {RightLabel = v.pricelabel}, not cooldownavions, {
                    onActive = function()
                        UpdateCam(v.name , v.posSpawn, v.heading)
                    end,
                    onSelected = function()
                        cooldownavions = true
                        TriggerServerEvent("Stax:Buy",v.price,v.label,v.name,v.posSpawn, v.heading, v.plaque,v.kmh)
                        RageUI.CloseAll()
                        Wait(25000)
                        cooldownavions = false
                    end
                })
            end
        end)
        if not RageUI.Visible(avion) then 
            avion = RMenu:DeleteType(Type, true,stopprevue(),FreezeEntityPosition(PlayerPedId(), false))
        end
    end
end
