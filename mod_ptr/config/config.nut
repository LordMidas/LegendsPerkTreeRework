::PTR.PerkTreeDynamicMins <- {
	//Profession = 1,
	Weapon = 4,
	Defense = 2,
	Traits = 3,
	Enemy = 1,
	EnemyChance = 0.5,
	Class = 1,
	ClassChance = 0.01,
	Magic = 1,
	MagicChance = 0,
	Styles = 2
};
::PTR.PerkTreeDynamicMinsMagic <- {
	//Profession = 1,
	Weapon = 4,
	Defense = 2,
	Traits = 3,
	Enemy = 1,
	EnemyChance = 0.5,
	Class = 1,
	ClassChance = 0.01,
	Magic = 1,
	MagicChance = 0.001,
	Styles = 2
};
::PTR.PerkTreeDynamicMinsBeast <- {
	//Profession = 1,
	Weapon = 4,
	Defense = 2,
	Traits = 3,
	Enemy = 1,
	EnemyChance = 0.7,
	Class = 1,
	ClassChance = 0.02,
	Magic = 1,
	MagicChance = 0.001,
	Styles = 2
};

::Const.Injury.ExcludedInjuries.add(
	"PTRUndead",
	[
		"injury.bruised_leg",
		"injury.broken_nose",
		"injury.severe_concussion",
		"injury.crushed_windpipe",
		"injury.cut_artery",
		"injury.exposed_ribs",
		"injury.ripped_ear",
		"injury.split_nose",
		"injury.pierced_cheek",
		"injury.grazed_neck",
		"injury.cut_throat",
		"injury.grazed_kidney",
		"injury.pierced_lung",
		"injury.grazed_neck",
		"injury.cut_throat",
		"injury.crushed_windpipe",
		"injury.inhaled_flames"
	]
);

::Const.Injury.ExcludedInjuries.add(
	"PTRSkeleton",
	[
		"injury.sprained_ankle",
		"injury.deep_abdominal_cut",
		"injury.cut_leg_muscles",
		"injury.cut_achilles_tendon",
		"injury.deep_chest_cut",
		"injury.pierced_leg_muscles",
		"injury.pierced_chest",
		"injury.pierced_side",
		"injury.pierced_arm_muscles",
		"injury.stabbed_guts",
	],
	[
		::Const.Injury.ExcludedInjuries.PTRUndead
	]
);
