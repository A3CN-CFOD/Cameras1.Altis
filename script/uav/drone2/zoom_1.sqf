

[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

		 [cam2,["terminate","back"]] remoteExec ["cameraEffect",0,true];
[cam2] remoteExec ["camDestroy", 0, true];
sleep 1;

	cam2 = "camera" camCreate [0,0,0];  
cam2 cameraEffect ["external", "Front", "uav2rtt"];  
cam2 attachTo [uav2, [0,1.4,-0.8]];  
cam2 setVectorDirAndUp [[0,1,-1],[0,0,1]];  
cam2 camSetFov 1.2; 
"uav2rtt" setPiPEffect [0];



laptop1 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uav2rtt,1)"];
monitor5 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uav2rtt,1)"];

[laptop1, ["<t color='#2bf000'>DESCONECTAR DRONE ATAQUE</t>", { { null = execVM "script\uav\drone2\fechar.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>SELECIONAR VISÃO</t>", { { null = execVM "script\uav\drone2\visao.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ZOOM</t>", { { null = execVM "script\uav\drone2\select_zoom.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ACESSAR ARTILHARIA</t>",{player action ["SwitchToUAVGunner",uav2]}, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>PILOTAR DRONE ATAQUE</t>",{player action ["SwitchToUAVDriver",uav2]}, nil , 9 , true ,true, "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];


};
while {!isnull cam2} do {
	if (alive uav2) then {} else {{nul = execVM "script\uav\not_init3.sqf"} remoteExec ["call",0,true];
	sleep 1;
	if (!alive uav2) exitWith {};
	};
	sleep 0.5;
};




















