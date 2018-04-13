
[[],{removeAllActions laptop1;}] remoteExec ["call",0,true];
[laptop1, ["<t color='#2bf000'>VISÃO NOTURNA</t>", { { null = execVM "script\uav\drone1\noturna.sqf" } remoteExec [ "call" ,0,true]; }, nil , 10 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>VISÃO TERMAL</t>", { { null = execVM "script\uav\drone1\termal.sqf" } remoteExec [ "call" ,0,true]; }, nil ,9 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
[laptop1, ["<t color='#2bf000'>VISÃO NORMAL</t>", { { null = execVM "script\uav\drone1\normal.sqf" } remoteExec [ "call" ,0,true]; }, nil , 8 , false , true , "" , "_this distance _target < 2"]] remoteExec ["addaction",-2,true];
publicVariable "laptop1";


