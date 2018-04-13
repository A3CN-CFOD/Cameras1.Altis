
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
[laptop1, ["<t color='#2bf000'>ZOOM 1X</t>", { { null = execVM "script\uav\drone1\zoom_1.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ZOOM 2X</t>", { { null = execVM "script\uav\drone1\zoom_2.sqf" } remoteExec [ "call" ,-2,true]; }, nil ,9 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ZOOM 3X</t>", { { null = execVM "script\uav\drone1\zoom_3.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 8 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];

[laptop1, ["<t color='#2bf000'>DESCONECTAR DRONE RECON</t>", { { null = execVM "script\uav\drone1\fechar.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true]; 
publicVariable "laptop1";