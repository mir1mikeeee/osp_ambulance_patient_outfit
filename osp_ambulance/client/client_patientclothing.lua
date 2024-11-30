--[[
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Github Repo: https://github.com/mir1mikeeee/osp_ambulance_patient_outfit

Add this file to the client folder

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

]]

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

    local function convertToOData(clothingConfig)
        local oData = {outfitData = {}}
        for key, value in pairs(clothingConfig) do
            local part = key == 'arms' and 'arms' or key:match("^(%w+)_")
            local isTexture = key:match("_2$")
            local drawableOrTexture = isTexture and "texture" or "item"
            
            if not oData.outfitData[part] then
                oData.outfitData[part] = { item = 0, texture = 0 }
            end
            
            oData.outfitData[part][drawableOrTexture] = value
        end
        return oData
    end

    if Config.PatientClothing.framework == 'esx' then
        TriggerEvent("skinchanger:getSkin", function(skin)
            TriggerEvent('skinchanger:loadClothes', skin, Character)
            Wait(500)
            TriggerEvent("skinchanger:getSkin", function(newskin)
                TriggerServerEvent("esx_skin:save", newskin)
            end)
        end)
    elseif Config.PatientClothing.framework == 'qb' then
        TriggerEvent('qb-clothing:client:loadOutfit', convertToOData(Character))
    elseif Config.PatientClothing.framework == 'standalone' then
        if Character['ears_1'] == -1 or Character['ears_1'] == nil then
            ClearPedProp(playerPed, 2)
        else
            SetPedPropIndex(playerPed, 2, Character['ears_1'], Character['ears_2'], 2) -- Ears Accessories
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