// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "ACE_NVG_Gen1" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_DefusalKit",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_DefusalKit",1]
// ****************


kit_chdk_aksu =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Lopotev","","","","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",5]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_chdk_aksu2 =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Kam_04","CUP_V_I_Carrier_Belt","","","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",4]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_M67",3]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_chdk_aksu_at =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Kam_04","CUP_V_I_Carrier_Belt","B_AssaultPack_cbr","","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_aks74u","rhs_30Rnd_545x39_AK",["rhs_acc_pgs64_74u","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg26","rhs_rpg26_mag",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",4]]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_M67",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_weap_rpg26",1],["rhs_rpg26_mag",1]]]
];

kit_chdk_ak74 =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Kam_01","CUP_V_I_Carrier_Belt","","","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_2mag","rhs_30Rnd_545x39_AK",["rhs_acc_dtk","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["PRIMARY MAG",3]]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",3],["PRIMARY MAG",7]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_chdk_pm =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Bardak","","","",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_makarov_pm","rhs_mag_9x18_8_57N181S",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[["HANDGUN MAG",5]]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_chdk_pkm =
	[
	["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Kam_05","CUP_V_O_Ins_Carrier_Rig","CUP_B_RUS_Backpack","","G_Balaclava_blk"],
	["<PRIMARY WEAPON >>  ","rhs_weap_pkm","rhs_100Rnd_762x54mmR",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemWatch"],
	["<UNIFORM ITEMS >> ",[]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4]]]
];

kit_chdk_random = [
	"kit_chdk_aksu"
	,"kit_chdk_aksu2"
	,"kit_chdk_ak74"
	,"kit_chdk_pm"
	,"kit_chdk_pkm"
	,"kit_chdk_aksu_at"
];



kit_ruvv_sl =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_vog_od","tf_mr3000_rhs","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk4short","","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_RGD5",3],["rhs_mag_rdg2_white",2],["rhs_VOG25",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ruvv_r =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_od","B_FieldPack_khk","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk4short","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",3],["rhs_mag_rdg2_white",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];

kit_ruvv_rg =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_od","rhs_rpg_empty","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m","rhs_30Rnd_545x39_AK",["rhs_acc_dtk4short","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_rpg7","rhs_rpg7_PG7VL_mag",["","","rhs_acc_1pn93_2",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",3],["rhs_mag_rdg2_white",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[["SECONDARY MAG",3],["rhs_rpg7_OG7V_mag",1]]]
];

kit_ruvv_s =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_od","","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_svds","rhs_10Rnd_762x54mmR_7N1",["rhs_acc_tgpv2","","rhs_acc_1pn93_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",3],["rhs_mag_rdg2_white",2],["PRIMARY MAG",9]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ruvv_ar = [
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_od","B_FieldPack_khk","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_Pecheneg","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["CUP_muzzle_snds_KZRZP_PK","","CUP_optic_1p63",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",3],["rhs_mag_rdg2_white",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_ruvv_ss =
	[
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless","rhs_6b23_6sh116_vog_od","","rhs_6b27m_bala",""],
	["<PRIMARY WEAPON >>  ","rhs_weap_ak74m_gp25_npz","rhs_30Rnd_545x39_AK",["rhs_acc_dtk4short","","rhsusf_acc_eotech_552",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ",ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",9],["CUP_HandGrenade_RGD5",2],["rhs_mag_rdg2_white",2],["rhs_VOG25",8]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_ruvv_crew = [
	["<EQUIPEMENT >>  ","rhs_uniform_flora_patchless_alt","rhs_6b23","","rhs_tsh4",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK74_plum_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_30Rnd_545x39_7N6M_plum_AK",2]]],
	["<BACKPACK ITEMS >> ",[]]
];



cargo_kit_ruvv_cargo = [
	[["rhs_weap_rpg26",2],["FirstAidKit",10],["Medikit",1]],
	[["rhs_30Rnd_545x39_7N10_AK",16],["rhs_mag_rdg2_white",2],["rhs_mag_rgd5",6],["rhs_rpg26_mag",2],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",8],["rhs_VOG25",10]],
	[["ToolKit",1]],
	[]
];