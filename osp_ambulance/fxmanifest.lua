-- Created by OSP-Development
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Complete Medical System Overhaul'
author 'OSP Development'
version '1.6.0'

shared_script {
    'lang/lang.lua',
    'config/general.lua',
    'config/locations.lua',
    'config/weapons.lua',
    'config/fractures.lua',
    'config/medications.lua',
    'config/shop.lua',
    'config/vehicles.lua',
    'config/wounds.lua',
    'config_patientclothing.lua',
    '@ox_lib/init.lua',
}

client_script {
    'lang/lang.lua',
    'client/*.lua',
}

server_script {
    -- '@async/async.lua',                      -- Uncomment these two lines if you are using mysql-async instead of oxmysql
	-- '@mysql-async/lib/MySQL.lua',
    '@oxmysql/lib/MySQL.lua',
    'lang/lang.lua',
    'config/webhook.lua',
    'server/server_open.lua',
    'server/server.lua',
    'server/server_patientclothing.lua',
}


files {
    'html/*',
    'html/img/*',
    'sound/data/ambulance_sounds.dat54.rel',
	'sound/audiodirectory/ambulance_sounds.awc',
	'vehicles.meta',
	'carvariations.meta',
	'handling.meta',
}




data_file 'DLC_ITYP_REQUEST' 'stream/v_med_crutch01.ytyp'
data_file 'HANDLING_FILE'			'handling.meta'
data_file 'VEHICLE_METADATA_FILE'	'vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE'	'carvariations.meta'
data_file 'DLC_ITYP_REQUEST' 'stream/ems_props.ytyp'

data_file 'AUDIO_WAVEPACK' 'sound/audiodirectory'
data_file 'AUDIO_SOUNDDATA' 'sound/data/ambulance_sounds.dat'


ui_page {
    'html/ui.html'
}

escrow_ignore {
    'config/*.lua',
    'client/client_open.lua',
    'server/server_open.lua',
    'lang/lang.lua',
    'stream/*',
}

export {
    'GetAmbulanceData',
    'isDead',
}

dependency {
    'ox_lib',
    'screenshot-basic',
}

dependency '/assetpacks'