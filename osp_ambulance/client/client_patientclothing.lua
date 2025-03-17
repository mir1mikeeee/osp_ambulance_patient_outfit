--[[
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Github Repo: https://github.com/mir1mikeeee/osp_ambulance_patient_outfit

Add this file to the client folder

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

]]

local temp_stash = {}
local componentIds = {
    tshirt = 8,
    torso = 11,
    decals = 10,
    arms = 3,
    pants = 4,
    shoes = 6,
    helmet = 0,
    watches = 7,
    glasses = 1,
    mask = 1,
    chain = 7,
    ears = 2,
    bags = 5,
    bproof = 9
}

RegisterNUICallback('PatientClothing', function(data, cb)
    TriggerServerEvent('osp_ambulance:s:custom:addPatientClothing', data.PlayerId)
end)

RegisterNetEvent('osp_ambulance:c:custom:addPatientClothing', function()
    local playerPed = PlayerPedId()
    local Character
    if GetEntityModel(playerPed) == GetHashKey("mp_m_freemode_01") then
        Character = Config.PatientClothing.clothes['male']
    elseif GetEntityModel(playerPed) == GetHashKey("mp_f_freemode_01") then
        Character = Config.PatientClothing.clothes['female']
    end
    if Character == nil then return end

    if not LocalPlayer.state.inPatientClothing then
        LocalPlayer.state:set('inPatientClothing', true, true)
        for key, val in pairs(Character) do
            local baseKey = key:match("(.+)_%d$")
            local componentId = componentIds[baseKey] or 0

            temp_stash[key] = key:match("_2$") and GetPedTextureVariation(playerPed, componentId) or GetPedDrawableVariation(playerPed, componentId)
        end

        SetPedComponentVariation(playerPed, 8, Character['tshirt_1'], Character['tshirt_2'], 2)  -- Tshirt
        SetPedComponentVariation(playerPed, 11, Character['torso_1'], Character['torso_2'], 2)   -- torso parts
        SetPedComponentVariation(playerPed, 3, Character['arms'], Character['arms_2'], 2)        -- Arms
        SetPedComponentVariation(playerPed, 10, Character['decals_1'], Character['decals_2'], 2) -- decals
        SetPedComponentVariation(playerPed, 4, Character['pants_1'], Character['pants_2'], 2)    -- pants
        SetPedComponentVariation(playerPed, 6, Character['shoes_1'], Character['shoes_2'], 2)    -- shoes
        SetPedComponentVariation(playerPed, 1, Character['mask_1'], Character['mask_2'], 2)      -- mask
        SetPedComponentVariation(playerPed, 9, Character['bproof_1'], Character['bproof_2'], 2)  -- bulletproof
        SetPedComponentVariation(playerPed, 7, Character['chain_1'], Character['chain_2'], 2)    -- chain
        SetPedComponentVariation(playerPed, 5, Character['bags_1'], Character['bags_2'], 2)      -- Bag

        if Character['helmet_1'] == -1 or Character['helmet_1'] == nil then
            ClearPedProp(playerPed, 0)
        else
            SetPedPropIndex(playerPed, 0, Character['helmet_1'], Character['helmet_2'], 2) -- Helmet
        end

        if Character['glasses_1'] == -1 or Character['glasses_1'] == nil then
            ClearPedProp(playerPed, 1)
        else
            SetPedPropIndex(playerPed, 1, Character['glasses_1'], Character['glasses_2'], 2) -- Glasses
        end

        if Character['watches_1'] == -1 or Character['watches_1'] == nil then
            ClearPedProp(playerPed, 6)
        else
            SetPedPropIndex(playerPed, 6, Character['watches_1'], Character['watches_2'], 2) -- Watches
        end

        if Character['bracelets_1'] == -1 or Character['bracelets_1'] == nil then
            ClearPedProp(playerPed, 7)
        else
            SetPedPropIndex(playerPed, 7, Character['bracelets_1'], Character['bracelets_2'], 2) -- Bracelets
        end
    end    
end)

RegisterNetEvent('osp_ambulance:c:custom:removePatientClothing', function()
    local playerPed = PlayerPedId()
    if not LocalPlayer.state.inPatientClothing or json.encode(temp_stash) == "[]" then return end
    SetPedComponentVariation(playerPed, 8, temp_stash['tshirt_1'], temp_stash['tshirt_2'], 2)  -- Tshirt
    SetPedComponentVariation(playerPed, 11, temp_stash['torso_1'], temp_stash['torso_2'], 2)   -- torso parts
    SetPedComponentVariation(playerPed, 3, temp_stash['arms'], temp_stash['arms_2'], 2)        -- Arms
    SetPedComponentVariation(playerPed, 10, temp_stash['decals_1'], temp_stash['decals_2'], 2) -- decals
    SetPedComponentVariation(playerPed, 4, temp_stash['pants_1'], temp_stash['pants_2'], 2)    -- pants
    SetPedComponentVariation(playerPed, 6, temp_stash['shoes_1'], temp_stash['shoes_2'], 2)    -- shoes
    SetPedComponentVariation(playerPed, 1, temp_stash['mask_1'], temp_stash['mask_2'], 2)      -- mask
    SetPedComponentVariation(playerPed, 9, temp_stash['bproof_1'], temp_stash['bproof_2'], 2)  -- bulletproof
    SetPedComponentVariation(playerPed, 7, temp_stash['chain_1'], temp_stash['chain_2'], 2)    -- chain
    SetPedComponentVariation(playerPed, 5, temp_stash['bags_1'], temp_stash['bags_2'], 2)      -- Bag

    LocalPlayer.state:set('inPatientClothing', false, true)
    Wait(1000)
    temp_stash = {}
end)