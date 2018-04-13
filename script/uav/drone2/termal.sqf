
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
[laptop1, ["<t color='#2bf000'>DESCONECTAR DRONE ATAQUE</t>", { { null = execVM "script\uav\drone2\fechar.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>SELECIONAR VISÃO</t>", { { null = execVM "script\uav\drone2\visao.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ZOOM</t>", { { null = execVM "script\uav\drone2\select_zoom.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ACESSAR ARTILHARIA</t>",{player action ["SwitchToUAVGunner",uav2]}, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>PILOTAR DRONE ATAQUE</t>",{player action ["SwitchToUAVDriver",uav2]}, nil , 9 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
["uav2rtt",[2]] remoteExec ["setPiPEffect",0,true]; 
monitor5 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
laptop1 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];







