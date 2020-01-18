
/*
	Configuration of interative objects:
		[ @List of Classname or @List of Objects to apply, @CodeToExecute, @Client/Server/Global ]

		0:  @List of Classname OR List of @Objects  -   if list of classname is used, then all map objects with given class will be applyed
		1:  @CodeToExecute  -   code to execute, _this as reference; will be spawned
		2:  @Client/Server/Global   -   locality run ("client","server","global")
		3:  @Persistant(Boolean) - will apply code for each new entities created during the game (false by default)

		To manually apply code, use
			[@ReferenceList, @Code] call dzn_fnc_interactives_executeEach
*/
#define	INTRACTIVES_TABLE		dzn_interactives_objectsAndClasses = [
#define	INTRACTIVES_TABLE_END	];

fnc_defuseIED = {
	params ["_iedObject","_iedVariable"];
	if ((items  player) findIf { _x == "ACE_DefusalKit" } > -1) then {
		[
			"Разминирование..."
			, 5
			, {true}
			, {
				(_this # 0) params ["_iedObject","_iedVariable"];
				
				missionNamespace setVariable [_iedVariable, false, true];
				removeAllActions _iedObject;
				hint "Обезврежено!";
			}
			, {
				hint "Отменено";
			}
			, [_iedObject, _iedVariable]
		] call CBA_fnc_progressBar;
	} else {
		hint "Невозможно! У вас нет набора обезвреживания!";
	};
};

INTRACTIVES_TABLE
	/*
	[
		["Land_ToiletBox_F"]
		, {
			_this addAction ["Check it", {hint "This is toilet box"}];
		}
		, "client"
		, false
	]
	*/
	
	[
		[power]
		, {
			_this addAction ["Отключить электричество", {[] execVM "scripts\lights.sqf"; removeAllActions power}];
		}
		, "client"
		, false
	],
	
	[
		[expl1]
		, {
			_this addAction ["Деактивировать", { [_this select 0, "swexpl1"] call fnc_defuseIED; }, "", 6, true, true, "", "true", 2.5];
		}
		, "client"
		, false
	],
	
	[
		[expl2]
		, {
			_this addAction ["Деактивировать", { [_this select 0, "swexpl2"] call fnc_defuseIED; }, "", 6, true, true, "", "true", 2.5];
		}
		, "client"
		, false
	],
	
	[
		[expl3]
		, {
			_this addAction ["Деактивировать", { [_this select 0, "swexpl3"] call fnc_defuseIED; }, "", 6, true, true, "", "true", 2.5];
		}
		, "client"
		, false
	]
	
INTRACTIVES_TABLE_END
