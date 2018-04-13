


[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
[cam,["terminate","back"]] remoteExec ["cameraEffect",0,true];
[cam] remoteExec ["camDestroy", 0, true];

[] spawn {
sleep 0.5;
	cam = "camera" camCreate [0,0,0]; 
cam cameraEffect ["external", "Front", "uavrtt"]; 
cam attachTo [uav, [0,1,0]]; 
cam setVectorDirAndUp [[0,1,-40],[0,0,1]]; 
cam camSetFov 0.2;
"uavrtt" setPiPEffect [0];

laptop1 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
monitor5 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];

[laptop1, ["<t color='#2bf000'>DESCONECTAR DRONE RECON</t>", { { null = execVM "script\uav\drone1\fechar.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>SELECIONAR VISÃO</t>", { { null = execVM "script\uav\drone1\visao.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 9 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>ZOOM</t>", { { null = execVM "script\uav\drone1\select_zoom.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 8 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>USAR CAMERA RECON</t>",{player action ["SwitchToUAVGunner",uav]}, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>PILOTAR DRONE</t>",{player action ["SwitchToUAVDriver",uav]}, nil , 9 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];

};
while {!isnull cam } do {
	if (alive uav) then {} else {
		{nul = execVM "script\uav\not_init2.sqf"} remoteExec ["call",0,true];
	sleep 1;
	if (!alive uav) exitWith {};
	};
	sleep 0.5;
};
