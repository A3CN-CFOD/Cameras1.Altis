
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

[cam,["terminate","back"]] remoteExec ["cameraEffect",0,true];
[cam] remoteExec ["camDestroy", 0, true];


if (alive uav2) then {
{nul = execVM "script\uav\not_init.sqf" } remoteExec ["call",-0,true];
} else {{nul = execVM "script\uav\not_init3.sqf" } remoteExec ["call",0,true];};

