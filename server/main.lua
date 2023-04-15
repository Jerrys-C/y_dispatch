local QBCore = exports['qbx-core']:GetCoreObject()
local calls = {}

RegisterServerEvent("qbx-dispatch:server:AddCall", function(info)
    local data = not info.TenCode and info or info.data
    data.time = os.time() * 1000
    local callId = #calls + 1
    local call = {
        source = source,
        id = callId,
        UnitsResponding = {},
        DispatcherResponses = {},
        time = data.time,
    }
	calls[callId] = call
    table.insert( calls[callId], data )
    TriggerClientEvent('qbx-dispatch:client:AddCall', -1, data, callId)
    if not info.TenCode then
        TriggerClientEvent("qbx-dispatch:client:AddBlip", -1, data.coords, Config.TenCodes[data.tencodeid], callId)
    else
        TriggerClientEvent("qbx-dispatch:client:AddBlip", -1, data.coords, info.TenCode, callId)
    end
end)