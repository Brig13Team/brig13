
if (getText(configFile >> "CfgPatches" >> "task_force_radio" >> "versionStr") isEqualTo "0.9.12") then {
    // TFAR 0.9.12
    switch profileName do {
        case "public": {
            missionNamespace setVariable ["tf_radio_channel_name", "Publicserver_Funk", true];
            missionNamespace setVariable ["tf_radio_channel_name", "TFAR", true];
        };
        case "event1": {
            missionNamespace setVariable ["tf_radio_channel_name", "Eventserver1_Funk", true];
            missionNamespace setVariable ["tf_radio_channel_name", "TFAR", true];
        };
        case "event2": {
            missionNamespace setVariable ["tf_radio_channel_name", "Eventserver2_Funk", true];
            missionNamespace setVariable ["tf_radio_channel_name", "TFAR", true];
        };
    };
} else {
    // No TFAR was loaded
    if (isNil "TFAR_core_SettingsInitialized") exitWith {};
    // TFAR version >= 1.0
    [
        "TFAR_core_SettingsInitialized",
        {
            switch profileName do {
                case "public": {
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Publicserver_Funk", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_refreshAllSettings"] call CBA_fnc_globalEvent;
                };
                case "event1": {
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Eventserver1_Funk", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_refreshAllSettings"] call CBA_fnc_globalEvent;
                };
                case "event2": {
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Eventserver2_Funk", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    ["cba_settings_refreshAllSettings"] call CBA_fnc_globalEvent;
                };
            };
        }
    ] call CBA_fnc_addEventHandlerArgs;
};

