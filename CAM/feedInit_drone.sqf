waitUntil {!isnull player};
private ["_feedArray","_MonitorName1","_array","_newArray"];

_monitorArray=(_this select 0);
_monitorHDD=_monitorArray select 0;
_array=(_this select 1);
_MonitorName1= format ["%1",_monitorHDD];

   _newArray=[];

	{
    if (isNil _x) then {
				}else{	
				       _call = format ["%1",_x];
						call (compile _call);
						_newArray=_newArray+[call(compile _call)];
					};
	} forEach _array;
	
	_feedArray=server getvariable _MonitorName1;	
	
		if (isnil "_feedArray") 
			then {
			_feedArray=[];
			{
			if (isnil "_x") then {}else{_feedArray=_feedArray + [_x]; };
			}foreach _newArray;
			
			server setvariable [_MonitorName1,_feedArray,true];
					};
					
	player setvariable ["MonName",_MonitorName1];

	
		{
    if (isNil _x) then {
				}else{	
				       _call = format ["%1",_x];
						call (compile _call);
						_newArray=_newArray+[call(compile _call)];
					};
	} forEach _array;
	
	waituntil {!isnil "_MonitorName1"};		
		_feedArray=server getvariable _MonitorName1;

	if	((player in _newArray)and !(player in _feedArray)) then {
			
		_feedArray=_feedArray +[player];
		server setvariable [_MonitorName1,_feedArray,true];
						};
	
	_feedArray=server getvariable _MonitorName1;	

if (!isserver || !isdedicated) 
		then {
			{
		null = [_x,_feedArray,server] execVM "CAM\livefeed_drone.sqf";
		_x setObjectTexture [0,'#(argb,8,8,3)color(0,0,1,1)'];
		_x allowdamage false;
		_x enablesimulation false;
			}foreach _monitorArray;
			};

	{
	_x setvariable ["MonName",_MonitorName1];
	_x setvariable ["MonitorArray",_monitorArray];
	
if (isplayer _x) 
	then {

	_x addEventHandler ["Respawn","CALL fnc_PLAYER_KILLED"];
					
			}else{
			
			_x addmpEventHandler ["MPkilled","CALL fnc_AI_KILLED"];	
		
			};
			
	}foreach _feedArray;
	

	
fnc_AI_KILLED={

	_unit = _this select 0;
	_corpse = _this select 1;
	
		_MonitorName1=_unit getvariable "MonName";
		_monitorArray=_unit getvariable "MonitorArray";
		
		
		_feedArray=server getvariable _MonitorName1;
		_feedArray=_feedArray -[_unit];	

				server setvariable [_MonitorName1,_feedArray,true];

};


fnc_PLAYER_KILLED={

	_unit = _this select 0;
	_corpse = _this select 1;
	
			_MonitorName1=_unit getvariable "MonName";
			_monitorArray=_unit getvariable "MonitorArray";
			
			
		_feedArray=server getvariable _MonitorName1;
		_feedArray=_feedArray -[_corpse];
		_feedArray=_feedArray +[_unit];
						
						_feedArray=_feedArray call BIS_fnc_arrayShuffle;			
				
		server setvariable [_MonitorName1,_feedArray,true];

};


[_monitorArray,_MonitorName1] spawn {

	private ["_monitorArray","_MonitorName1"];
	
	_monitorArray=(_this select 0);
	_MonitorName1=(_this select 1);
	
while {true} do {

	_feedArray=server getvariable _MonitorName1;
	_oldArray = format ["%1",_feedArray];
		
		sleep 5;

	_feedArray=server getvariable _MonitorName1;
	_newArray = format ["%1",_feedArray];
	
		if (_newArray != _oldArray || (count _feedArray) <= 1) then{	
				{
			null = [_x,_feedArray] execVM "CAM\livefeed_drone.sqf";			
				}foreach _monitorArray;
			};
		};
};