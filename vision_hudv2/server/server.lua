-- Made By Benni (Vision-Service) with <3 for the Community.

SetConvarServerInfo('tags', 'Vision-Scripts')

ESX.RegisterServerCallback('vision_hudv2:getaccounts', function(src, cb)
	local xPlayer = ESX.GetPlayerFromId(src)
  local accounts = {
    ['bank'] = xPlayer.getAccount('bank').money,
    ['money'] = xPlayer.getMoney()
  }
  cb(accounts)
end)





ESX = exports["es_extended"]:getSharedObject()

function ShowPlayers()
	local xPlayers = ESX.GetPlayers()
	PlayersOnline = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        PlayersOnline = PlayersOnline + 1
	end
    TriggerClientEvent('vision_hud:setPlayers', -1, PlayersOnline)
    SetTimeout(5000, ShowPlayers)
end

ShowPlayers()
