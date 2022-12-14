::Const.Perks.SergeantClassTree <- {
	ID = "SergeantClassTree",
	Descriptions = [
		"inspiring men"
	],
	Name = "Sergeant",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.PolearmTree]
	],
	Attributes = {
		Hitpoints = [
			0,
			0
		],
		Bravery = [
			4,
			4
		],
		Stamina = [
			0,
			0
		],
		MeleeSkill = [
			2,
			2
		],
		RangedSkill = [
			0,
			0
		],
		MeleeDefense = [
			2,
			2
		],
		RangedDefense = [
			0,
			0
		],
		Initiative = [
			0,
			0
		]
	},
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendCheerOn
		],
		[
			::Const.Perks.PerkDefs.RallyTheTroops
		],
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.InspiringPresence
		],
		[
			::Const.Perks.PerkDefs.Inspire
		]
	]
};

::Const.Perks.HealerClassTree <- {
	ID = "HealerClassTree",
	Descriptions = [
		"healing"
	],
	Name = "Healer",
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendMedIngredients
		],
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecBandage
		],
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendFieldTriage
		]
	]
};

::Const.Perks.TrapperClassTree <- {
	ID = "TrapperClassTree",
	Descriptions = [
		"trapping"
	],
	Name = "Trapper",
	Tree = [
		[],
		[
			::Const.Perks.PerkDefs.LegendNetRepair
		],
		[
			::Const.Perks.PerkDefs.LegendNetCasting
		],
		[
			::Const.Perks.PerkDefs.LegendMasteryNets
		],
		[
			::Const.Perks.PerkDefs.LegendEscapeArtist
		],
		[],
		[]
	]
};

::Const.Perks.ChefClassTree <- {
	ID = "ChefClassTree",
	Descriptions = [
		"cooking"
	],
	Name = "Chef",
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendMealPreperation
		],
		[
			::Const.Perks.PerkDefs.LegendCampCook
		],
		[
			::Const.Perks.PerkDefs.LegendAlcoholBrewing
		],
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendQuartermaster
		],
		[
			::Const.Perks.PerkDefs.LegendFieldTreats
		]
	]
};

::Const.Perks.MenderClassTree <- {
	ID = "MenderClassTree",
	Descriptions = [
		"mending"
	],
	Name = "Mender",
	Tree = [
		[],
		[
			::Const.Perks.PerkDefs.LegendToolsDrawers
		],
		[
			::Const.Perks.PerkDefs.LegendToolsSpares
		],
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendFieldRepairs
		]
	]
};

::Const.Perks.ClerkClassTree <- {
	ID = "ClerkClassTree",
	Descriptions = [
		"bookkeeping"
	],
	Name = "Clerk",
	SelfWeightMultiplier = 0.33,
	Tree = [
		[],
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendDangerPay
		],
		[
			::Const.Perks.PerkDefs.LegendPaymaster
		],
		[
			::Const.Perks.PerkDefs.LegendBribe
		]
	]
};

::Const.Perks.HoundmasterClassTree.PerkGroupMultipliers <- [
	[3, ::Const.Perks.CleaverTree]
];
::Const.Perks.HoundmasterClassTree.Tree = array(7);
::Const.Perks.HoundmasterClassTree.Tree[0] = [];
::Const.Perks.HoundmasterClassTree.Tree[1] = [];
::Const.Perks.HoundmasterClassTree.Tree[2] = [::Const.Perks.PerkDefs.LegendDogWhisperer];
::Const.Perks.HoundmasterClassTree.Tree[3] = [::Const.Perks.PerkDefs.LegendDogBreeder];
::Const.Perks.HoundmasterClassTree.Tree[4] = [::Const.Perks.PerkDefs.LegendDogHandling];
::Const.Perks.HoundmasterClassTree.Tree[5] = [::Const.Perks.PerkDefs.LegendPackleader];
::Const.Perks.HoundmasterClassTree.Tree[6] = [::Const.Perks.PerkDefs.LegendDogMaster];

::Const.Perks.TacticianClassTree <- {
	ID = "TacticianClassTree",
	Descriptions = [
		"battlefield tactics"
	],
	Name = "Tactician",
	SelfWeightMultiplier = 0.33,
	PerkGroupMultipliers = [
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendMarkTarget
		],
		[
			
		],
		[
			::Const.Perks.PerkDefs.LegendShieldsUp
		],
		[
			::Const.Perks.PerkDefs.LegendForwardPush
		],
		[
			::Const.Perks.PerkDefs.LegendHoldTheLine
		],
		[
			::Const.Perks.PerkDefs.PTRVanguardDeployment	
		],
		[
			::Const.Perks.PerkDefs.PTRBlitzkrieg
		]
	]
};

::Const.Perks.EntertainerClassTree <- {
	ID = "EntertainerClassTree",
	Descriptions = [
		"entertainment",
		"painting smiles on faces"
	],
	Name = "Entertainer",
	SelfWeightMultiplier = 0.33,
	Tree = [
		[
			::Const.Perks.PerkDefs.PTRAlwaysAnEntertainer
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRPaintASmile
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.ScoutClassTree <- {
	ID = "ScoutClassTree",
	Descriptions = [
		"organizing patrols",
		"keeping watch",
		"keeping a lookout"
	],
	Name = "Scout",
	SelfWeightMultiplier = 0.33,
	Tree = [
		[
			::Const.Perks.PerkDefs.Lookout
		],
		[],
		[],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.ClassTrees.Tree = [
	::Const.Perks.SergeantClassTree,
	::Const.Perks.HealerClassTree,
	::Const.Perks.TrapperClassTree,
	::Const.Perks.ChefClassTree,
	::Const.Perks.MenderClassTree,
	::Const.Perks.ClerkClassTree,
	::Const.Perks.HoundmasterClassTree,
	::Const.Perks.TacticianClassTree,
	::Const.Perks.EntertainerClassTree,
	::Const.Perks.ScoutClassTree
];
