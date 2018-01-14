#include "\x\cba\addons\main\script_macros_common.hpp"
#undef PREP
#undef PREPMAIN
#undef SCRIPT
/* -------------------------------------------
Macros:
    CfgFunction Macros

Parameters:
    VAR - NAME

Author:
    Dorbedo
------------------------------------------- */

#define QPATHOF_FUNC(var1) QUOTE(\MAINPREFIX\PREFIX\SUBPREFIX\COMPONENT\functions\fnc_##var1)
#define QPATHOF_FUNC2(var1,var2) QUOTE(\MAINPREFIX\PREFIX\SUBPREFIX\COMPONENT\functions\##var1\fnc_##var2)

/* -------------------------------------------
Macro: PREP(VAR)
   compiling functions
   file: COMPONENT\functions\fnc_VAR.sqf
   adding an header to the function if DEBUG_MODE_NORMAL enabled (COMPONENT WIDE)
Parameters:
    VAR - Name of file [Indentifier]

Example:
    (begin example)
        #define COMPONENT main
        PREP(test);

        Result: PREFIX_main_fnc_test = *compiled function*;
    (end)

Author:
    Dorbedo
------------------------------------------- */
#define PREP(var1) ['\MAINPREFIX\PREFIX\addons\COMPONENT\functions\DOUBLES(fnc,var1).sqf', 'TRIPLES(ADDON,fnc,var1)',INCLUDE_HEADER] call EFUNC(main,compile)

/* -------------------------------------------
Macro: PREPMAIN(VAR)
   compiling functions
   file: COMPONENT\functions\fnc_VAR.sqf
   adding an header to the function if DEBUG_MODE_NORMAL enabled (COMPONENT WIDE)
Parameters:
    VAR - Name of file [Indentifier]

Example:
    (begin example)
        #define COMPONENT main
        PREPMAIN(test);

        Result: PREFIX_fnc_test = *compiled function*;
    (end)

Author:
    Dorbedo
------------------------------------------- */
#define PREPMAIN(var1) ['\MAINPREFIX\PREFIX\addons\COMPONENT\functions\DOUBLES(fnc,var1).sqf', 'TRIPLES(PREFIX,fnc,var1)',INCLUDE_HEADER] call EFUNC(main,compile)

/* -------------------------------------------
Macro: LINKFUNC()
    recompiling helper

Parameters:
    none

Example:

Author:
    Dorbedo
------------------------------------------- */
#define LINKFUNC(VAR1) FUNC(VAR1)
#define LINKEFUNC(VAR1,VAR2) EFUNC(VAR1,VAR2)
