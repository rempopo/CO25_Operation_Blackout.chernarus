if (!isServer) exitWith {};

// Bomb timeouts: first explosion will not kill hostages, but 2nd and 3rd will kill each hostage group.
private _timeout = 15 * 60; // 15 minutes
private _timeoutOffset1 = (2 * 60) + random 120; // some time after first bomb explosion, if anybody near the bomb to disarm
private _timeoutOffset2 = (3 * 60) + random 120; // timeout after second explosion

// Launch flares on detection
{
	private _flr = "F_40mm_White" createvehicle (_x ModelToWorld [0,0,200]);
	_flr setVelocity [random 5,random 5,-5];
} forEach [pi1, ik1, g1];


// Initialize bomb timers
fnc_explodeBombs = {
	params ["_obj"];
	
	private _pos = getPos _obj;
	_pos set [2, 1.7];
	
	for "_i" from 0 to 2 do {
		"Bo_GBU12_LGB" createVehicle _pos;
	};
};

{
	_x params ["_explFlag","_explObj","_wait"];
	[
		{
			_this params ["_explFlag","_explObj"];
			if (call compile _explFlag) then { [_explObj] call fnc_explodeBombs };
		}
		, [_explFlag, _explObj]
		, _wait
	] call CBA_fnc_waitAndExecute;
} forEach [
	["swexpl1", expl1, _timeout]
	,["swexpl2", expl2, _timeout + _timeoutOffset1]
	,["swexpl3", expl3, _timeout + _timeoutOffset1 + _timeoutOffset2]
];