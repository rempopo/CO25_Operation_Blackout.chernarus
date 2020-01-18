if (!isServer) exitWith {};

_flrObj = "F_40mm_White" createvehicle (ik1 ModelToWorld [0,0,200]);
_flrObj setVelocity [0,0,-5];
_flrObj2 = "F_40mm_White" createvehicle (pi1 ModelToWorld [0,0,200]); 
_flrObj2 setVelocity [0,0,-5];
_flrObj3 = "F_40mm_White" createvehicle (g1 ModelToWorld [0,0,200]); 
_flrObj3 setVelocity [0,0,-5];

sleep 60 * 15;

private _fnc_explode = {
	params ["_pos"];
	
	for "_i" from 0 to 2 do {
		"Bo_GBU12_LGB" createVehicle _pos;
	}
};

if (swexpl1) then { [getPos expl1] call _fnc_explode };

sleep (5 + random 5);
if (swexpl2) then { [getPos expl2] call _fnc_explode };

sleep (5 + random 5);
if (swexpl3) then { [getPos expl3] call _fnc_explode };