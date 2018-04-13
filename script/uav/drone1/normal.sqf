[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
[laptop1, ["<t color='#2bf000'>DESCONECTAR DRONE RECON</t>", { { null = execVM "script\uav\drone1\fechar.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>SELECIONAR VISÃO</t>", { { null = execVM "script\uav\drone1\visao.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
laptop1, ["<t color='#2bf000'>ZOOM</t>", { { null = execVM "script\uav\drone1\select_zoom.sqf" } remoteExec [ "call" ,0,true]; }, nil , 8 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>USAR CAMERA RECON</t>",{player action ["SwitchToUAVGunner",uav]}, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>PILOTAR DRONE</t>",{player action ["SwitchToUAVDriver",uav]}, nil , 9 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];

["uavrtt",[0]] remoteExec ["setPiPEffect",0,true]; 
monitor5 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
laptop1 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];




