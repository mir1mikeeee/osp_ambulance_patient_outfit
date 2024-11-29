--[[
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

Add this file to the server folder

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

]]

RegisterNetEvent('osp_ambulance:s:custom:addPatientClothing', function(target)
    TriggerClientEvent('osp_ambulance:c:custom:addPatientClothing', target)
end)

local po_command_option = {
    command = 'patientclothing',
    help = 'add patient clothing to player',
    args = {
        {name = 'id', help = 'Player ID', type = 'player'}
    }
}

if Config.Framework == 'qb' then
    QBCore.Commands.Add(po_command_option.command, po_command_option.help, po_command_option.args, true, function(source, args)
        local src = source
        local target = tonumber(args[1])
        local Player = QBCore.Functions.GetPlayer(src)
        if Player and Player.PlayerData then
            for _,x in pairs(Config.AmbulanceJobs) do
                if Player.PlayerData.job.name == x and Player.PlayerData.job.onduty then
                    TriggerClientEvent('osp_ambulance:c:custom:addPatientClothing', target)
                end
            end
        end
    end)
elseif Config.Framework == 'esx' then
    ESX.RegisterCommand(po_command_option.command, 'user', function(xPlayer, args, showError)
        local src = xPlayer.source
        if args.id  then
            for _,x in pairs(Config.AmbulanceJobs) do
                if xPlayer.job.name == x then
                    TriggerClientEvent('osp_ambulance:c:custom:addPatientClothing', target)
                end
            end
        end
    end, false, {help = po_command_option.help, validate = false, arguments = po_command_option.args})
end
