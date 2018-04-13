
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

if (!alive uav && !alive uav2) then {["PERDEMOS OS 2 DRONES!"] remoteExec ["hint",0,true]; 
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

[laptop1,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,true];
[monitor5,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,true];
};
[laptop1,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,true];
[monitor5,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,true];

[laptop1, ["<t color='#2bf000'>DRONE RECON</t>",{ { null = execVM "script\uav\drone1\drone1.sqf" } remoteExec [ "call" ,-2,true];}, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>DRONE ATAQUE</t>", {  { null = execVM "script\uav\drone2\drone2.sqf" } remoteExec [ "call" ,-2,true];}, nil , 9 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];

publicVariable "laptop1";
publicVariable "monitor5";



