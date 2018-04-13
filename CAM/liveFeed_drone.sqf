
private ["_cameraCount","_debug","_monitor","_dir"];
_monitor = (_this select 0);
_drones = (_this select 1);
removeAllActions _monitor;

_debug = false;

sleep 0.1;

		_cameraCount = server getvariable "CAMCOUNT1";	
		
		if (isnil "_cameraCount") 
			then {
			_cameraCount = 0;
			server setvariable ["CAMCOUNT1",_cameraCount,true];
				};

				{
				if (isnil "_x") then {} else {
				if (isNull _x) then {} else{
		_cameraCount=_cameraCount+1;server setvariable ["CAMCOUNT1",_cameraCount,true];
		
		_uniqueName=format ["<t color=""#E4FB44"">" + ("DRONE RECON : %1") + "</t>",name _x];
		_monitor addAction [_uniqueName, "call fnc_PROCESS_LIVE2",[_x,_debug],0,false,true,"","_target distance _this < 3.5"];
		//_uniqueName=format ["<t color=""#E4FB44"">" + ("DRONE ATAQUE : %1") + "</t>",name _x];
		//_monitor addAction [_uniqueName, "call fnc_PROCESS_LIVE1",[_x,_debug],0,false,true,"","_target distance _this < 3.5"];	

			_x setvariable ["LIVEid",_cameraCount,true];
				};};
				}foreach _drones;
				
				
	if (_debug) then {_sidechatHint = format["Total Cam count: %1", _cameraCount];PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; publicVariable "GlobalSideChat";};

	
/*fnc_PROCESS_LIVE1 = {

private ["_name","_cam","_debug","_arguments"];
	_monitor=(_this select 0);
	_arguments=(_this select 3);
	_drones=_arguments select 0;
	_debug=_arguments select 1;
	
	_monitor setObjectTextureglobal [0,"img\MapaMundi.jpg"];
	SLEEP 0.6;
	
	_cam=_drones getVariable "LIVECAM1";
	
				if (isnil "_cam") 
						then {
							_cam = "camera" camCreate getpos _drones;
				
								_drones setvariable ["LIVECAM",_cam,true];	
									
									0=[_cam,_debug] call fnc_RESET1;
								}else{
									if (isnull _cam) 
										then {
											_cam = "camera" camCreate getpos _drones;
												
											_drones setvariable ["LIVECAM",_cam,true];
									
											0=[_cam,_debug] call fnc_RESET1;
											};
										};
										
						_class = typeOf (vehicle _drones);
						
							//copyToClipboard (format ["%1",_class]);
							switch (_class) do {
								
							case "B_UGV_01_rcws_F": {_cam attachto [(vehicle _drones),[0,0,0], "laserstart"];};
							 addMissionEventHandler ["Draw3D", {
    _dir = 
        (_drones selectionPosition "laserstart") 
            vectorFromTo 
        (_drones selectionPosition "commanderview");
    cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];		
							   default
							{
							
							_cam attachto [_drones,[0,0,0], "laserstart"];
							 addMissionEventHandler ["Draw3D", {
    _dir = 
        (_drones selectionPosition "laserstart") 
            vectorFromTo 
        (_drones selectionPosition "commanderview");
    cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];		
								};
							};
							
							
		_cam camSetFov 0.3; 				
		_id1 = _drones getvariable "LIVEid";
		_name=format ["rendertarget%1",_id1];					
			0=[_monitor,_name,_cam,0] call fnc_RENDER1;
			
			


_class = typeOf (vehicle _drones);

while {true} do {
		sleep 1;
	_NeWclass = typeOf (vehicle _drones);
	
			if (!(_NeWclass == _class)) 
				exitwith {
					
				0= [_monitor,0,0,_arguments] call fnc_PROCESS_LIVE1;
				};
			};
};
*/


fnc_PROCESS_LIVE2 = {

private ["_name","_debug","_arguments", "_dir"];
	_monitor=(_this select 0); // onde ira renderizar a testura
	_arguments=(_this select 3); // modo de visão
	_drones=_arguments select 0;
	_debug=_arguments select 1;
	_monitor setObjectTextureglobal [0,"img\MapaMundi.jpg"];
	SLEEP 0.6;
	cam = _cam;
	_cam=_drones getVariable "LIVECAM2";


				if (isnil "_cam") 
						then {
							_cam = "camera" camCreate getpos _drones;
							teste = true;
							publicVariable "teste";
						_cam attachto [_drones,[0,0,0], "PiP0_pos"];
						
					
											
								_drones setvariable ["LIVECAM2",_cam,true];	
	                        	
									0=[_cam,_debug] call fnc_RESET1;
								}else{
									if (isnull _cam) 
										then {
											_cam = "camera" camCreate getpos _drones;
										
											_drones setvariable ["LIVECAM2",_cam,true];	
												
											0=[_cam,_debug] call fnc_RESET1;
											};
										};
										
						/*_class = typeOf (vehicle _drones);
						
							//copyToClipboard (format ["%1",_class]);
							switch (_class) do {
								case "B__drones_01_F": {_cam attachto [_drones,[0,0,0], "PiP0_pos"];};
							 addMissionEventHandler ["Draw3D", {
												
    _dir = 
        (_drones selectionPosition "PiP0_pos") 
            vectorFromTo 
        (_drones selectionPosition "PiP0_dir");
    _cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];			
							
							   default
							{
							
							_cam attachto [_drones,[0,0,0], "PiP0_pos"];
											 addMissionEventHandler ["Draw3D", {
												
    _dir = 
        (_drones selectionPosition "PiP0_pos") 
            vectorFromTo 
        (_drones selectionPosition "PiP0_dir");
    _cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];			
								};
							};*/
							
							
		_cam camSetFov 0.3; 

		_id1 = _drones getvariable "LIVEid";
		_name=format ["rendertarget%1",_id1];					
			0=[_monitor,_name,_cam,0] call fnc_RENDER1;
			
			


/*_class = typeOf (vehicle _drones);

while {true} do {
		sleep 1;
	_NeWclass = typeOf (vehicle _drones);
	
			if (!(_NeWclass == _class)) 
				exitwith {
					
				0= [_monitor,0,0,_arguments] call fnc_PROCESS_LIVE2;
				};
			};*/
};



fnc_RESET1 = {
private ["_conCurrentCams1"];
	_cam=(_this select 0);
	_debug=(_this select 1);
	_conCurrentCams1=server getvariable "CONCURRENTCAMS1";
	
		if (isnil "_conCurrentCams1") 
			then {
			_conCurrentCams1 = [];server setvariable ["CONCURRENTCAMS1",_conCurrentCams1,true];
					};
					
	_conCurrentCams1=_conCurrentCams1 + [_cam];server setvariable ["CONCURRENTCAMS1",_conCurrentCams1,true];
	
if (_debug) then {_sidechatHint = format["Concurrent cam Count: %1",count _conCurrentCams1];PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; publicVariable "GlobalSideChat";};
					
		if (count _conCurrentCams1 > 4) 
				then {
						{
					_x cameraEffect ["TERMINATE", "BACK"];
					camDestroy _x;
					_monitor setObjectTextureglobal [0,"img\MapaMundi.jpg"];
						}foreach _conCurrentCams1;
						
						_conCurrentCams1=[];server setvariable ["CONCURRENTCAMS1",_conCurrentCams1,true];
						
if (_debug) then {_sidechatHint = format["Deleted CONCURRENTCAMS1: %1",count _conCurrentCams1];PAPABEAR sideChat _sidechatHint;GlobalSideChat = _sidechatHint; publicVariable "GlobalSideChat";};
					};
			};


fnc_RENDER1 = {

	_monitor=(_this select 0);
	_name=(_this select 1);
	_cam=(_this select 2);
	_visionMode=(_this select 3);
	
	_cam camCommit 1;
	_cam cameraEffect ["external", "Front",_name];
	_name setPiPEffect [_visionMode, 1, 0.8, 1, 0.1, [0.3, 0.3, 0.3, -0.1], [1.0, 0.0, 1.0, 1.0], [0, 0, 0, 0]];
	_monitor setObjectTextureglobal  [0,(format ["#(argb,256,256,1)r2t(%1,1.0)",_name])];
};
