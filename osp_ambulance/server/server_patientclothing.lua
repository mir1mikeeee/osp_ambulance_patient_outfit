--[[
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Github Repo: https://github.com/mir1mikeeee/osp_ambulance_patient_outfit

Add this file to the server folder

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

]]

RegisterNetEvent('osp_ambulance:s:custom:addPatientClothing', function(target)
    if Player(target).state.inPatientClothing then
        TriggerClientEvent('osp_ambulance:c:custom:removePatientClothing', target)
    else
        TriggerClientEvent('osp_ambulance:c:custom:addPatientClothing', target)
    end
end)

if Config.PatientClothing.command_option.enable then
    if Config.Framework == 'qb' then
        QBCore.Commands.Add(Config.PatientClothing.command_option.command, Config.PatientClothing.command_option.help, Config.PatientClothing.command_option.args, true, function(source, args)
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
        ESX.RegisterCommand(Config.PatientClothing.command_option.command, 'user', function(xPlayer, args, showError)
            local src = xPlayer.source
            if args.id  then
                for _,x in pairs(Config.AmbulanceJobs) do
                    if xPlayer.job.name == x then
                        TriggerClientEvent('osp_ambulance:c:custom:addPatientClothing', target)
                    end
                end
            end
        end, false, {help = Config.PatientClothing.command_option.help, validate = false, arguments = Config.PatientClothing.command_option.args})
    end
end