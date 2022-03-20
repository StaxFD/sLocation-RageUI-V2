ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("Stax:Buy")
AddEventHandler("Stax:Buy", function(price,label,veh,vehspawn,veheading,vehplaque,behkmh)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local xMoney = xPlayer.getMoney()
        if xMoney >= price then
            xPlayer.removeMoney(price)
            TriggerClientEvent('Stax:Location', _source, veh, vehspawn, veheading, vehplaque, behkmh)
            TriggerClientEvent('esx:showAdvancedNotification', _source, 'Information', '~o~Locations~s~','Vous avez loué~o~ x 1 ~s~' ..label..' pour ~g~'..price..'$~s~','CHAR_ARTHUR', 8)
        else
            TriggerClientEvent('esx:showNotification', _source, "~r~Vous n'avez pas assez d'argent")
        end
end)



print("Created by Staxx // discord.gg/HSCcZGHxsD //")
