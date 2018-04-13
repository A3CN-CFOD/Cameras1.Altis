private ["_altitude"];

waitUntil {isuAVConnected uav};
sleep 4;
monitor5 SetObjectTextureGlobal [0,"video\init_sistem.ogv"];
laptop1 SetObjectTextureGlobal [0,"video\init_sistem.ogv"];
["video\init_sistem.ogv", [10,10]] remoteExec ["BIS_fnc_playVideo",0,true];
sleep 32;
[laptop1, ["<t color='#2bf000'>ACESSAR CAMERA RECON</t>",{player action ["SwitchToUAVGunner",uav]; "camera_uav" remoteExec [ "playSound",0,true];}, nil , 10 , true , true , "" , "_this distance _target < 3"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>PILOTAR DRONE RECON</t>",{player action ["SwitchToUAVDriver",uav];"pilot_uav" remoteExec [ "playSound",0,true];}, nil , 9 , true ,true, "" , "_this distance _target < 3"]] remoteExec ["addaction",-2,true];

//if (isServer || isdedicated) exitwith {};

[] spawn {

	sleep 0.2;
monitor5 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
laptop1 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
cam = "camera" camCreate [0,0,0]; 
cam cameraEffect ["external", "Front", "uavrtt"]; 
cam attachTo [uav, [0,0,0], "PiP0_pos"];

cam camSetFov 0.1;
"uavrtt" setPiPEffect [0];
   addMissionEventHandler ["Draw3D", {
    _dir = 
        (uav selectionPosition "PiP0_pos") 
            vectorFromTo 
        (uav selectionPosition "PiP0_dir");
    cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
	
}];
};
[] spawn {
	sleep 0.2;
	if (alive uav) then {uav_abatido = true};
	while {uav_abatido} do {
	sleep 0.2;
	if (alive uav) then {} else {
		
		"uav_abatido" remoteExec [ "playSound",-2,true];
		if (!alive uav) exitwith {
			sleep 8;
			[cam,["terminate","back"]] remoteExec ["cameraEffect",-2,true];
             //[cam] remoteExec ["camDestroy",0, true];
			 uav_abatido = false;
};
	};
	
	};
};
 

///////////////////////////////

	

[] spawn {
	sleep 0.5;
while {!isnull cam} do {
	waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) > 30 || (getPosATL uav select 2) > 30};
	alt_50 = true;
	
		if (alt_50) then { 
		"recon50" remoteExec [ "playSound",-2,true];
	
		if (!isnull cam) exitwith {alt_50 = false};
		
};
	waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) > 350 || (getPosATL uav select 2) > 350};
	alt_350 = true;
	if (alt_350) then {
	
		
		"recon350" remoteExec [ "playSound",-2,true];
	
		if (!isnull cam) exitwith {alt_350 = false};
		
	};

	waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) < 30 || (getPosATL uav select 2) < 30};
	
	alt_50a = true;
if (alt_50a) then {
	
		
		"recon50" remoteExec [ "playSound",-2,true];
		
		if (!isnull cam) exitwith {alt_50a = false};
		
	};
	
	sleep 0.5;
		};
};


/*	
waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) > 50 || (getPosATL uav select 2) > 50};

while {!isnull cam} do {
	sleep 0.2;
	if (alive uav) then {} else {
		
		"uav_abatido" remoteExec [ "playSound",-2,true];
		if (!alive uav) exitwith {
			[cam,["terminate","back"]] remoteExec ["cameraEffect",0,true];
             [cam] remoteExec ["camDestroy",0, true];
};
	};
	
	};
alt_50 = true;
while {alt_50} do {
	
		
		"recon50" remoteExec [ "playSound",-2,true];
		sleep 0.6;
		if (!isnull cam) exitwith {alt_50 = false};
		
	};
	waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) > 350 || (getPosATL uav select 2) > 350};
	alt_350 = true;
	while {alt_350} do {
	
		
		"recon350" remoteExec [ "playSound",-2,true];
		sleep 9;
		if (!isnull cam) exitwith {alt_350 = false};
		
	};

	waitUntil {sleep 1; isuAVConnected uav && (getPosATL uav select 2) < 50 || (getPosATL uav select 2) < 50};
	
	alt_50a = true;
while {alt_50a} do {
	
		
		"recon50" remoteExec [ "playSound",-2,true];
		sleep 0.6;
		if (!isnull cam) exitwith {alt_50a = false};
		
	};
	
	
	
	
	///////////////////////////////////////////////////
	
	
	
	

	while {!isnull cam} do {	
	if (alive uav) then {} else {
		
		"uav_abatido" remoteExec [ "playSound",-2,true];
		if (!alive uav) exitwith {
			[cam,["terminate","back"]] remoteExec ["cameraEffect",0,true];
             [cam] remoteExec ["camDestroy", 0, true];
};
	};
	sleep 0.2;
	};
	
	*/
	




	



