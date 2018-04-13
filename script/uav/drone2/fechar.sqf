[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

[cam,["terminate","back"]] remoteExec ["cameraEffect",0,true];
[cam] remoteExec ["camDestroy", 0, TRUE];
publicVariable "cam";
publicVariable "laptop1";

if (alive uav) then {
{nul = execVM "script\uav\not_init.sqf" } remoteExec ["call",0,true];
} else {{nul = execVM "script\uav\not_init2.sqf" } remoteExec ["call",0,true];};