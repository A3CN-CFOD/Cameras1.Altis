
private ["_altitude"];

waitUntil {isuAVConnected uav2};
sleep 4;
monitor7 SetObjectTextureGlobal [0,"video\init_sistem.ogv"];
laptop2 SetObjectTextureGlobal [0,"video\init_sistem.ogv"];
["video\init_sistem.ogv", [10,10]] remoteExec ["BIS_fnc_playVideo",0,true];
sleep 32;
[laptop2, ["<t color='#2bf000'>ACESSAR CAMERA DRONE ATAQUE</t>",{player action ["SwitchToUAVGunner",uav2]; "camera_uav2" remoteExec [ "playSound",0,true];}, nil , 10 , true , true , "" , "_this distance _target < 3"]] remoteExec ["addaction",-2,true];
[laptop2, ["<t color='#2bf000'>PILOTAR DRONE ATAQUE</t>",{player action ["SwitchToUAVDriver",uav2];"pilot_uav2" remoteExec [ "playSound",0,true];}, nil , 9 , true ,true, "" , "_this distance _target < 3"]] remoteExec ["addaction",-2,true];

//if (isServer || isdedicated) exitwith {};

[] spawn {

	sleep 0.2;
monitor7 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uav2rtt,1)"];
laptop2 SetObjectTextureGlobal [0, "#(argb,512,512,1)r2t(uav2rtt,1)"];
cam2 = "camera" camCreate [0,0,0]; 
cam2 cameraEffect ["external", "Front", "uav2rtt"]; 
cam2 attachTo [uav2, [0,0,0], "laserstart"];

cam2 camSetFov 0.4;
"uav2rtt" setPiPEffect [0];
   addMissionEventHandler ["Draw3D", {
    _dir = 
        (uav2 selectionPosition "laserstart") 
            vectorFromTo 
        (uav2 selectionPosition "commanderview");
    cam2 setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
	
}];
};
[] spawn {
	sleep 0.2;
	if (alive uav2) then {uav2_abatido = true};
	while {uav2_abatido} do {
	sleep 0.2;
	if (alive uav2) then {} else {
		
		"uav2_abatido" remoteExec [ "playSound",-2,true];
		if (!alive uav2) exitwith {
			sleep 8;
			[cam2,["terminate","back"]] remoteExec ["cameraEffect",-2,true];
             //[cam2] remoteExec ["camDestroy",0, true];
			 uav2_abatido = false;
};
	};
	
	};
};
 

///////////////////////////////

	

[] spawn {
	sleep 0.5;
while {!isnull cam2} do {
	waitUntil {sleep 1; isuAVConnected uav2 && (getPosATL uav2 select 2) > 30 || (getPosATL uav2 select 2) > 30};
alt_50b = true;
	
		if (alt_50b) then { 
		"atak50" remoteExec [ "playSound",-2,true];
	
		if (!isnull cam2) exitwith {alt_50b = false};
		
};
	waitUntil {sleep 1; isuAVConnected uav2 && (getPosATL uav2 select 2) > 350 || (getPosATL uav2 select 2) > 350};
	alt_350b = true;
	if (alt_350b) then {
	
		
		"atak350" remoteExec [ "playSound",-2,true];
	
		if (!isnull cam2) exitwith {alt_350b = false};
		
	};

	waitUntil {sleep 1; isuAVConnected uav2 && (getPosATL uav2 select 2) < 30 || (getPosATL uav2 select 2) < 30};
	
	alt_50bb = true;
if (alt_50bb) then {
	
		
		"atak50" remoteExec [ "playSound",-2,true];
		
		if (!isnull cam2) exitwith {alt_50bb = false};
		
	};
	
	sleep 0.5;
		};
};



	
	




	





























