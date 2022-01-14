RegisterNetEvent("Stax:Location")
AddEventHandler("Stax:Location", function(veh,vehspawn,veheading,vehplaque,behkmh)
    local model = GetHashKey(veh)
    RequestModel(model)
    while not HasModelLoaded(model) do Citizen.Wait(10) end
    DoScreenFadeOut(1000)
    Wait(1000)
    local vehicle = CreateVehicle(model, vehspawn, veheading, true, false)
    SetVehicleNumberPlateText(vehicle, vehplaque)
    SetVehRadioStation(vehicle, false)
    SetVehicleMaxSpeed(vehicle, behkmh)
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
    DoScreenFadeIn(1000)
end)

function UpdateCam(model, coords, heading)
    if model == tempModel then
        return
    else
        if tempVeh ~= nil then
            DeleteEntity(tempVeh)
            tempVeh = nil
        end

        RequestModel(GetHashKey(model))
        while not HasModelLoaded(GetHashKey(model)) do
            Wait(1)
        end

        tempModel = model
        tempVeh = CreateVehicle(GetHashKey(model), coords, heading, 0, 0)
        FreezeEntityPosition(tempVeh, true)
        SetVehicleDoorsLocked(tempVeh, 4)
        SetEntityAlpha(tempVeh, 180, 180)

        local camCoords = GetOffsetFromEntityInWorldCoords(tempVeh, 3.0, 2.0, 2.0)
    end
end

function stopprevue()
    RenderScriptCams(0, 0, 500, 0, 0)
    TriggerEvent("InitCamModulePause", false)
    DeleteEntity(tempVeh)
    tempVeh = nil
    tempModel = nil
    DestroyAllCams(true)
end

function camVoiture()
    for _,v in pairs (Config.Camera.Voiture) do  
        local camvoiture = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
        SetCamActive(camvoiture, true)
        SetCamParams(camvoiture, v.PositionCamVoiture , 0.0 , 0.0 , v.HeadingCamVoiture, 42.2442, 0, 1, 1, 2)
        SetCamFov(camvoiture, 60.0 --[[ distance (Field Of View) ]])
        RenderScriptCams(true, true --[[ activer l'animation ]], 2000 --[[ temps de l'animation ]], true, true)
    end
end
function camMotos()
    for _,v in pairs (Config.Camera.Motos) do  
        local cammoto = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
        SetCamActive(cammoto, true)
        SetCamParams(cammoto, v.PositionCamMoto , 0.0 , 0.0 , v.HeadingCamMoto, 42.2442, 0, 1, 1, 2)
        SetCamFov(cammoto, 60.0 --[[ distance (Field Of View) ]])
        RenderScriptCams(true, true --[[ activer l'animation ]], 2000 --[[ temps de l'animation ]], true, true)
    end
end
function camBateaux()
    for _,v in pairs (Config.Camera.Bateaux) do  
        local cambateau = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
        SetCamActive(cambateau, true)
        SetCamParams(cambateau, v.PositionCamBateau , 0.0 , 0.0 , v.HeadingCamBateau, 42.2442, 0, 1, 1, 2)
        SetCamFov(cambateau, 60.0 --[[ distance (Field Of View) ]])
        RenderScriptCams(true, true --[[ activer l'animation ]], 2000 --[[ temps de l'animation ]], true, true)
    end
end
function camAvions()
    for _,v in pairs (Config.Camera.Avions) do  
        local camavions = CreateCam("DEFAULT_SCRIPTED_CAMERA", false)
        SetCamActive(camavions, true)
        SetCamParams(camavions, v.PositionCamAvion , 0.0 , 0.0 , v.HeadingCamAvion, 42.2442, 0, 1, 1, 2)
        SetCamFov(camavions, 60.0 --[[ distance (Field Of View) ]])
        RenderScriptCams(true, true --[[ activer l'animation ]], 2000 --[[ temps de l'animation ]], true, true)
    end
end
