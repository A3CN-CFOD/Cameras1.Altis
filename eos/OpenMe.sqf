EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 

 Tipos de facção:
 
0 = OPFOR CSAT
1 = BLUFOR NATO
2 = INDEP AAF
3 = ZOMBIES
4 = BLUFOR FIA
5 = OPFOR FIA
6 = CIVILIAN
7 = OPFOR MIDDLE EAST
8 = OPFOR EAST
9 = BLUFOR WEST
10 = OPFOR RUSSIAN
11 = BLUFOR AMERICAN
12 = INDEP INSURGENTS
         IRON FRONT
13 = OPFOR USSR
14 = BLUFOR GERMAN
15 = INDEP AMERICAN  LEIGHTS OPFOR-

16 = OPFOR NOVORUSSIAN
17 = OPFOR NOVORUSSIAN
18 = OPFOR SLA
19 = BLUFOR AFGHAN ARMY
20 = BLUFOR CDF
21 = BLUFOR IRAQI ARMY
22 = INDEP AFRICAN MILITA
23 = INDEP ISTS
24 = INDEP RACS
25 = INDEP AFGHAN MILITIA
26 = OPFOR SLAMIC STATE = = PROJECT OPFOR

Cores do marcador bastion:

VictoryColor="colorGreen";	// Cor do marcador após a conclusão
hostileColor="colorRed";	// Cor padrão quando os inimigos estão ativos
bastionColor="colorOrange";	// Cor para marcador do bastião
EOS_DAMAGE_MULTIPLIER=1;	// 1 é padrão
EOS_KILLCOUNTER=false;		// Contar unidades mortas , padrçao false

REFERENCIAS GROUPOS TAMANHOS:
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

TIPOS DE MARCADOR:

 0 = visivel
 1 = invsivel

EXEMPLO CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[GRUPOS EM CASAS,TAMANHO GRUPOS,PROBABILIDADE],[GRUPO PATRULHA,TAMANHO GRUPOS,PROBALIDADE],
 [VEICULOS LEVES,TAMANHO CARGA,PROBABILIDADE],[BLINDADOS,PROBABILIDADE], [ARMAS ESTATICAS,PROBABILIDADE],
 [HELICOPTEROS,TAMANHO CARGA,PROBABILIDADE],[FACÇÃO,TIPO MARCAÇÃO,DISTANCIA,LADO,LIMITE ALTURA,DEBUG]] call EOS_Spawn;
 

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[GRUPO PATRULHA,TAMANHO DO GRUPO],[VEICULOS LEVER,TAMANHO DA CARGA],[BLINDADOS],
 [HELICOPTEROS,TAMANHO CARGA HELICOPTEROS],[FACÇÃO,TIPO MARCAÇÃO,LADO,LIMITE ALTURA,DEBUG],
 [PAUSA INICIAL, NUMEROS DE ONDAS, ATRASO ENTRE ONDAS, INTEGRAR EOS, MOSTRAR INDICAÇÕES]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Cor do marcador após a conclusão
hostileColor="colorRed";	// Cor padrão quando os inimigos estiverem ativos
bastionColor="colorOrange";	// Cor para marcador bastião
EOS_DAMAGE_MULTIPLIER=1;	// dano maximo a unidades EOS, 1 é o padrão
EOS_KILLCOUNTER=false;		// contar unidades mortas

// Editar aqui unidades EOS
null = [["eos1"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["eos2"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["eos3"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["eos4"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["eos5"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;
null = [["eos6"],[0,0],[0,0],[5,0],[0],[0],[0,0],[5,1,2000,EAST,FALSE,FALSE]] call EOS_Spawn;




// Editar aqui unidades BASTIAN
//null = [[""],[1,2],[1,3],[1],[1,0],[0,0,EAST,FALSE],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
