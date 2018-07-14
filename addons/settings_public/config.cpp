class CfgPatches {
    class cba_settings_userconfig {
        author = "$Dorbedo";
        name = "Brigade 13 Settings";
        url = "https://github.com/Brig13Team/brig_settings";
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {"cba_settings"};
        version = 1.0;
        authors[] = {"Dorbedo"};
    };
};

class Extended_PostInit_EventHandlers {
    class dorb_cba_settings_userconfig {
        serverinit = "call compile preProcessFileLineNumbers 'cba_settings_userconfig\XEH_ServerPostInit.sqf'";
    };
};
