--[[
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
Github Repo: https://github.com/mir1mikeeee/osp_ambulance_patient_outfit

Add this file to the main folder

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

]]

Config.PatientClothing = {
    command_option = {
        enable = true,
        command = 'patientclothing',
        help = 'add patient clothing to player',
        args = {
            {name = 'id', help = 'Player ID', type = 'player'}
        }
    },
    clothes = {
        male = {
            ['tshirt_1'] = 15,
            ['tshirt_2'] = 0,
            ['torso_1'] = 568,
            ['torso_2'] = 1,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['arms'] = 215,
            ['arms_2'] = 0,
            ['pants_1'] = 61,
            ['pants_2'] = 11,
            ['shoes_1'] = 113,
            ['shoes_2'] = 14,
            ['helmet_1'] = -1,
            ['helmet_2'] = 0,
            ['watches_1'] = -1,
            ['watches_2'] = 0,
            ['glasses_1'] = -1,
            ['glasses_2'] = 0,
            ['mask_1'] = -1,
            ['mask_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['ears_1'] = -1,
            ['ears_2'] = -1,
            ['bags_1'] = 0,
            ['bags_2'] = 0,
            ['bproof_1'] = -1,
            ['bproof_2'] = 0
        },
        female = {
            ['tshirt_1'] = 10,
            ['tshirt_2'] = 0,
            ['torso_1'] = 607,
            ['torso_2'] = 1,
            ['decals_1'] = 0,
            ['decals_2'] = 0,
            ['arms'] = 248,
            ['arms_2'] = 0,
            ['pants_1'] = 244,
            ['pants_2'] = 0,
            ['shoes_1'] = 117,
            ['shoes_2'] = 14,
            ['helmet_1'] = -1,
            ['helmet_2'] = 0,
            ['watches_1'] = -1,
            ['watches_2'] = 0,
            ['glasses_1'] = -1,
            ['glasses_2'] = 0,
            ['mask_1'] = -1,
            ['mask_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['ears_1'] = -1,
            ['ears_2'] = -1,
            ['bags_1'] = 0,
            ['bags_2'] = 0,
            ['bproof_1'] = -1,
            ['bproof_2'] = 0
        }
    }
}