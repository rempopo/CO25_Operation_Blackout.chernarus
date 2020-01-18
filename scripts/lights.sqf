private _types = [
	"Lamps_Base_F"
	, "PowerLines_base_F"
	,"Land_LampDecor_F"
	,"Land_LampHalogen_F"
	,"Land_LampHarbour_F"
	,"Land_LampShabby_F"
	,"Land_NavigLight"
	,"Land_runway_edgelight"
	,"Land_PowerPoleWooden_L_F"
];

{
	private _lamps = (getMarkerPos "lightsmarker") nearObjects [_x, 2500];
	{_x setDamage 0.95} forEach _lamps;
	
	sleep 0.5;
} forEach _types;