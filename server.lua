ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback("fn_atm_rob:win",function(source,cb)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local reward = math.random(Config.reward.min,Config.reward.max)
    xPlayer.addBank(tonumber(reward))
    cb()
    TriggerClientEvent("esx:showNotification",_source,"You received ~g~$"..reward)
end)