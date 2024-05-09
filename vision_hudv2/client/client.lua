-- Made By Benni (Vision-Service) with <3 for the Community.

ESX = nil
ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('esx:playerLoaded',function(xPlayer, isNew, skin)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            shield = GetPedArmour(PlayerPedId()),
            life = GetEntityHealth(PlayerPedId()) - 100,
            thirst = math.floor(thirst),
            hunger = math.floor(hunger),
            accounts = accounts,
        })
    end)
end)

RegisterNetEvent('esx:setAccountMoney', function(account)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            shield = GetPedArmour(PlayerPedId()),
            life = GetEntityHealth(PlayerPedId()) - 100,
            thirst = math.floor(thirst),
            hunger = math.floor(hunger),
            accounts = accounts,
        })
    end)
end)

RegisterNetEvent('esx_status:onTick', function(status)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            shield = GetPedArmour(PlayerPedId()),
            life = GetEntityHealth(PlayerPedId()) - 100,
            thirst = math.floor(thirst),
            hunger = math.floor(hunger),
            accounts = accounts,
        })
    end)
end)






















RegisterCommand("update", function(source, args, rawCommand)
    TriggerEvent('esx_status:getStatus', 'thirst', function(status)
        thirst = status.val / 10000
    end)
    TriggerEvent('esx_status:getStatus', 'hunger', function(status)
        hunger = status.val / 10000
    end)

    ESX.TriggerServerCallback('vision_hudv2:getaccounts', function(accounts)    
        SendNUIMessage({
            id = GetPlayerServerId(PlayerId()),
            shield = GetPedArmour(PlayerPedId()),
            life = GetEntityHealth(PlayerPedId()) - 100,
            thirst = math.floor(thirst),
            hunger = math.floor(hunger),
            accounts = accounts,
        })
    end)
end, false)