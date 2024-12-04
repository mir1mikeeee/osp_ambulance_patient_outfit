-- Created by OSP-Development
fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'Complete Medical System Overhaul'
author 'OSP Development'
version '1.5.4'

shared_script {
    'lang/lang.lua',
    'config.lua',
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
    'server/*.lua',
}


files {
    'html/*',
    'html/img/*',
    'sound/data/audioexample_sounds.dat54.rel',
	'sound/audiodirectory/custom_sounds.awc',
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
data_file 'AUDIO_SOUNDDATA' 'sound/data/audioexample_sounds.dat'


files {
	'vehicles.meta',
	'carvariations.meta',
	'handling.meta'
}

ui_page {
    'html/ui.html'
}

escrow_ignore {
    'config.lua',
    'client/client_open.lua',
    'server/server_open.lua',
    'lang/lang.lua',
    'stream/*',
}

export {
    'GetAmbulanceData',
    'isDead',
}



dependency '/assetpacks'