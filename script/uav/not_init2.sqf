
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];

if (alive uav2) then {

["O DRONE DE RECONHECIMENTO ESTA OFF-LINE OU FOI ABATIDO! O DRONE DE ATAQUE AINDA ESTA OPERANTE!"] remoteExec ["hint",0,true]; 
[laptop1,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,laptop1];
[monitor5,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,monitor5];
[laptop1, ["<t color='#2bf000'>DRONE ATAQUE</t>", { { null = execVM "script\uav\drone2\drone2.sqf" } remoteExec [ "call" ,-2,true]; }, nil , 10 , true , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];

publicVariable "laptop1";
publicVariable "monitor5";

} else {


[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
["O DRONE DE RECONHECIMENTO ESTA OFF-LINE OU FOI ABATIDO! PERDEMOS OS 2 DRONES!"] remoteExec ["hint",0,true]; 

[laptop1,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,laptop1];
[monitor5,[0,"img\MapaMundi.jpg"]] remoteExec ["setobjecttextureglobal",0,monitor5];




};





