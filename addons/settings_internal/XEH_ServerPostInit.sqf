[
    "CBA_settingsInitialized",
    {
        If !(TF_ADDON_VERSION isEqualTo "0.9.12") then {

            if (isNil "TFAR_core_SettingsInitialized") exitWith {};

            switch profileName do {
                case "public": {
                    [{TFAR_core_SettingsInitialized},{
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Publicserver_Funk", 2]] call CBA_fnc_serverEvent;
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    },[]] call CBA_fnc_waitUntilAndExecute;
                };
                case "event1": {
                    [{TFAR_core_SettingsInitialized},{
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Eventserver1_Funk", 2]] call CBA_fnc_serverEvent;
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    },[]] call CBA_fnc_waitUntilAndExecute;
                };
                case "event2": {
                    [{TFAR_core_SettingsInitialized},{
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Name", "Eventserver2_Funk", 2]] call CBA_fnc_serverEvent;
                        ["cba_settings_setSettingServer", ["TFAR_Teamspeak_Channel_Password", "TFAR", 2]] call CBA_fnc_serverEvent;
                    },[]] call CBA_fnc_waitUntilAndExecute;
                };
            };
            ["cba_settings_refreshAllSettings"] call CBA_fnc_globalEvent;
        };
    }
] call CBA_fnc_addEventHandlerArgs;

