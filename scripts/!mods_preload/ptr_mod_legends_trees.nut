local gt = this.getroottable();

gt.Const.PTR.modLegendsEnemyTrees <- function()
{
	while (this.Const.Perks.BeastsTree.Tree.len() < 7)
	{
		this.Const.Perks.BeastsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BeastsTree.Tree[0] = [];
	this.Const.Perks.BeastsTree.Tree[1] = [];
	this.Const.Perks.BeastsTree.Tree[2] = [];
	this.Const.Perks.BeastsTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGhoul,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyDirewolf,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySpider,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyLindwurm
	];
	this.Const.Perks.BeastsTree.Tree[4] = [];
	this.Const.Perks.BeastsTree.Tree[5] = [];
	this.Const.Perks.BeastsTree.Tree[6] = [];

	while (this.Const.Perks.MysticTree.Tree.len() < 7)
	{
		this.Const.Perks.MysticTree.Tree.push(emptyArray);
	}
	this.Const.Perks.MysticTree.Tree[0] = [];
	this.Const.Perks.MysticTree.Tree[1] = [];
	this.Const.Perks.MysticTree.Tree[2] = [];
	this.Const.Perks.MysticTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySchrat,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyAlps
	];
	this.Const.Perks.MysticTree.Tree[4] = [];
	this.Const.Perks.MysticTree.Tree[5] = [];
	this.Const.Perks.MysticTree.Tree[6] = [];

	while (this.Const.Perks.UndeadTree.Tree.len() < 7)
	{
		this.Const.Perks.UndeadTree.Tree.push(emptyArray);
	}
	this.Const.Perks.UndeadTree.Tree[0] = [];
	this.Const.Perks.UndeadTree.Tree[1] = [];
	this.Const.Perks.UndeadTree.Tree[2] = [];
	this.Const.Perks.UndeadTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySkeleton,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyZombie,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyVampire
	];
	this.Const.Perks.UndeadTree.Tree[4] = [];
	this.Const.Perks.UndeadTree.Tree[5] = [];
	this.Const.Perks.UndeadTree.Tree[6] = [];

	while (this.Const.Perks.OrcsTree.Tree.len() < 7)
	{
		this.Const.Perks.OrcsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OrcsTree.Tree[0] = [];
	this.Const.Perks.OrcsTree.Tree[1] = [];
	this.Const.Perks.OrcsTree.Tree[2] = [];
	this.Const.Perks.OrcsTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyOrk,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyGoblin,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyUnhold
	];
	this.Const.Perks.OrcsTree.Tree[4] = [];
	this.Const.Perks.OrcsTree.Tree[5] = [];
	this.Const.Perks.OrcsTree.Tree[6] = [];

	while (this.Const.Perks.CivilizationTree.Tree.len() < 7)
	{
		this.Const.Perks.CivilizationTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CivilizationTree.Tree[0] = [];
	this.Const.Perks.CivilizationTree.Tree[1] = [];
	this.Const.Perks.CivilizationTree.Tree[2] = [];
	this.Const.Perks.CivilizationTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyMercenary,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner
	];
	this.Const.Perks.CivilizationTree.Tree[4] = [];
	this.Const.Perks.CivilizationTree.Tree[5] = [];
	this.Const.Perks.CivilizationTree.Tree[6] = [];

	while (this.Const.Perks.OutlandersTree.Tree.len() < 7)
	{
		this.Const.Perks.OutlandersTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OutlandersTree.Tree[0] = [];
	this.Const.Perks.OutlandersTree.Tree[1] = [];
	this.Const.Perks.OutlandersTree.Tree[2] = [];
	this.Const.Perks.OutlandersTree.Tree[3] = [
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyNomad,
		gt.Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
	];
	this.Const.Perks.OutlandersTree.Tree[4] = [];
	this.Const.Perks.OutlandersTree.Tree[5] = [];
	this.Const.Perks.OutlandersTree.Tree[6] = [];

	this.Const.Perks.EnemyTrees.Tree = [
		this.Const.Perks.BeastsTree,
		this.Const.Perks.MysticTree,
		this.Const.Perks.UndeadTree,
		this.Const.Perks.OrcsTree,
		this.Const.Perks.CivilizationTree,
		this.Const.Perks.OutlandersTree
	];
}

gt.Const.PTR.modTraitsTrees <- function()
{
	local emptyArray = [];
	while (this.Const.Perks.AgileTree.Tree.len() < 7)
	{
		this.Const.Perks.AgileTree.Tree.push(emptyArray);
	}
	this.Const.Perks.AgileTree.Tree[0] = [this.Const.Perks.PerkDefs.Pathfinder];
	this.Const.Perks.AgileTree.Tree[1] = [];
	this.Const.Perks.AgileTree.Tree[2] = [this.Const.Perks.PerkDefs.Sprint];
	this.Const.Perks.AgileTree.Tree[3] = [];
	this.Const.Perks.AgileTree.Tree[4] = [this.Const.Perks.PerkDefs.Footwork];
	this.Const.Perks.AgileTree.Tree[5] = [];
	this.Const.Perks.AgileTree.Tree[6] = [this.Const.Perks.PerkDefs.Rebound];

	while (this.Const.Perks.IndestructibleTree.Tree.len() < 7)
	{
		this.Const.Perks.IndestructibleTree.Tree.push(emptyArray);
	}
	this.Const.Perks.IndestructibleTree.Tree[0] = [this.Const.Perks.PerkDefs.NineLives];
	this.Const.Perks.IndestructibleTree.Tree[1] = [];
	this.Const.Perks.IndestructibleTree.Tree[2] = [this.Const.Perks.PerkDefs.HoldOut];
	this.Const.Perks.IndestructibleTree.Tree[3] = [];
	this.Const.Perks.IndestructibleTree.Tree[4] = [];
	this.Const.Perks.IndestructibleTree.Tree[5] = [];
	this.Const.Perks.IndestructibleTree.Tree[6] = [this.Const.Perks.PerkDefs.Rebound];

	while (this.Const.Perks.ViciousTree.Tree.len() < 7)
	{
		this.Const.Perks.ViciousTree.Tree.push(emptyArray);
	}
	this.Const.Perks.ViciousTree.Tree[0] = [this.Const.Perks.PerkDefs.CripplingStrikes];
	this.Const.Perks.ViciousTree.Tree[1] = [this.Const.Perks.PerkDefs.CoupDeGrace];
	this.Const.Perks.ViciousTree.Tree[2] = [this.Const.Perks.PerkDefs.Debilitate];
	this.Const.Perks.ViciousTree.Tree[3] = [];
	this.Const.Perks.ViciousTree.Tree[4] = [this.Const.Perks.PerkDefs.LoneWolf];
	this.Const.Perks.ViciousTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendAssuredConquest];
	this.Const.Perks.ViciousTree.Tree[6] = [this.Const.Perks.PerkDefs.Fearsome];

	while (this.Const.Perks.DeviousTree.Tree.len() < 7)
	{
		this.Const.Perks.DeviousTree.Tree.push(emptyArray);
	}
	this.Const.Perks.DeviousTree.Tree[0] = [];
	this.Const.Perks.DeviousTree.Tree[1] = [this.Const.Perks.PerkDefs.Backstabber];
	this.Const.Perks.DeviousTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendBlendIn];
	this.Const.Perks.DeviousTree.Tree[3] = [];
	this.Const.Perks.DeviousTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendEvasion];
	this.Const.Perks.DeviousTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendHidden];
	this.Const.Perks.DeviousTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendUntouchable];

	while (this.Const.Perks.IntelligentTree.Tree.len() < 7)
	{
		this.Const.Perks.IntelligentTree.Tree.push(emptyArray);
	}
	this.Const.Perks.IntelligentTree.Tree[0] = [this.Const.Perks.PerkDefs.Student];
	this.Const.Perks.IntelligentTree.Tree[1] = [this.Const.Perks.PerkDefs.Gifted];
	this.Const.Perks.IntelligentTree.Tree[2] = [];
	this.Const.Perks.IntelligentTree.Tree[3] = [];
	this.Const.Perks.IntelligentTree.Tree[4] = [];
	this.Const.Perks.IntelligentTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRKnowTheirWeakness];
	this.Const.Perks.IntelligentTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRRisingStar];

	while (this.Const.Perks.CalmTree.Tree.len() < 7)
	{
		this.Const.Perks.CalmTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CalmTree.Tree[0] = [this.Const.Perks.PerkDefs.FastAdaption];
	this.Const.Perks.CalmTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendTrueBeliever];
	this.Const.Perks.CalmTree.Tree[2] = [this.Const.Perks.PerkDefs.FortifiedMind];
	this.Const.Perks.CalmTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendPeaceful];
	this.Const.Perks.CalmTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendClarity];
	this.Const.Perks.CalmTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendMindOverBody];
	this.Const.Perks.CalmTree.Tree[6] = [this.Const.Perks.PerkDefs.PerfectFocus];

	while (this.Const.Perks.FastTree.Tree.len() < 7)
	{
		this.Const.Perks.FastTree.Tree.push(emptyArray);
	}
	this.Const.Perks.FastTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendAlert];
	this.Const.Perks.FastTree.Tree[1] = [this.Const.Perks.PerkDefs.Anticipation];
	this.Const.Perks.FastTree.Tree[2] = [this.Const.Perks.PerkDefs.Relentless];
	this.Const.Perks.FastTree.Tree[3] = [];
	this.Const.Perks.FastTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSecondWind];
	this.Const.Perks.FastTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFreshAndFurious];
	this.Const.Perks.FastTree.Tree[6] = [this.Const.Perks.PerkDefs.BattleFlow];

	while (this.Const.Perks.LargeTree.Tree.len() < 7)
	{
		this.Const.Perks.LargeTree.Tree.push(emptyArray);
	}
	this.Const.Perks.LargeTree.Tree[0] = [this.Const.Perks.PerkDefs.Colossus];
	this.Const.Perks.LargeTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendComposure];
	this.Const.Perks.LargeTree.Tree[2] = [this.Const.Perks.PerkDefs.Steadfast];
	this.Const.Perks.LargeTree.Tree[3] = [];
	this.Const.Perks.LargeTree.Tree[4] = [this.Const.Perks.PerkDefs.Stalwart];
	this.Const.Perks.LargeTree.Tree[5] = [];
	this.Const.Perks.LargeTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendMuscularity];

	while (this.Const.Perks.OrganisedTree.Tree.len() < 7)
	{
		this.Const.Perks.OrganisedTree.Tree.push(emptyArray);
	}
	this.Const.Perks.OrganisedTree.Tree[0] = [this.Const.Perks.PerkDefs.BagsAndBelts];
	this.Const.Perks.OrganisedTree.Tree[1] = [];
	this.Const.Perks.OrganisedTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendBlendIn];
	this.Const.Perks.OrganisedTree.Tree[3] = [];
	this.Const.Perks.OrganisedTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSkillfulStacking];
	this.Const.Perks.OrganisedTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendPacifist];
	this.Const.Perks.OrganisedTree.Tree[6] = [];

	while (this.Const.Perks.SturdyTree.Tree.len() < 7)
	{
		this.Const.Perks.SturdyTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SturdyTree.Tree[0] = [this.Const.Perks.PerkDefs.Recover];
	this.Const.Perks.SturdyTree.Tree[1] = [];
	this.Const.Perks.SturdyTree.Tree[2] = [this.Const.Perks.PerkDefs.Taunt];
	this.Const.Perks.SturdyTree.Tree[3] = [];
	this.Const.Perks.SturdyTree.Tree[4] = [this.Const.Perks.PerkDefs.ReturnFavor];
	this.Const.Perks.SturdyTree.Tree[5] = [this.Const.Perks.PerkDefs.Vengeance];
	this.Const.Perks.SturdyTree.Tree[6] = [this.Const.Perks.PerkDefs.Indomitable];

	while (this.Const.Perks.FitTree.Tree.len() < 7)
	{
		this.Const.Perks.FitTree.Tree.push(emptyArray);
	}
	this.Const.Perks.FitTree.Tree[0] = [this.Const.Perks.PerkDefs.Adrenalin];
	this.Const.Perks.FitTree.Tree[1] = [];
	this.Const.Perks.FitTree.Tree[2] = [];
	this.Const.Perks.FitTree.Tree[3] = [];
	this.Const.Perks.FitTree.Tree[4] = [this.Const.Perks.PerkDefs.Berserk];
	this.Const.Perks.FitTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRUnstoppable];
	this.Const.Perks.FitTree.Tree[6] = [this.Const.Perks.PerkDefs.KillingFrenzy];

	while (this.Const.Perks.TrainedTree.Tree.len() < 7)
	{
		this.Const.Perks.TrainedTree.Tree.push(emptyArray);
	}
	this.Const.Perks.TrainedTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendBackToBasics];
	this.Const.Perks.TrainedTree.Tree[1] = [];
	this.Const.Perks.TrainedTree.Tree[2] = [this.Const.Perks.PerkDefs.Rotation];
	this.Const.Perks.TrainedTree.Tree[3] = [];
	this.Const.Perks.TrainedTree.Tree[4] = [this.Const.Perks.PerkDefs.Underdog];
	this.Const.Perks.TrainedTree.Tree[5] = [];
	this.Const.Perks.TrainedTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRTheRushOfBattle];

	this.Const.Perks.ResilientTree <- this.Const.Perks.IndestructibleTree;
	this.Const.Perks.TalentedTree <- this.Const.Perks.IntelligentTree;
	this.Const.Perks.UnstoppableTree <- this.Const.Perks.FitTree;

	gt.Const.Perks.TraitsTrees.Tree = [
		gt.Const.Perks.AgileTree,
		gt.Const.Perks.ResilientTree,
		gt.Const.Perks.ViciousTree,
		gt.Const.Perks.DeviousTree,
		gt.Const.Perks.TalentedTree,
		gt.Const.Perks.CalmTree,
		gt.Const.Perks.FastTree,
		gt.Const.Perks.LargeTree,
		gt.Const.Perks.OrganisedTree,
		gt.Const.Perks.SturdyTree,
		gt.Const.Perks.UnstoppableTree,
		gt.Const.Perks.TrainedTree
	];

	foreach (tree in gt.Const.Perks.TraitsTrees.Tree)
	{
		tree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.Full;
	}
}

gt.Const.PTR.modClassTrees <- function()
{
	local emptyArray = [];

	gt.Const.Perks.SergeantClassTree <- {
		ID = "SergeantClassTree",
		Descriptions = [
			"inspiring men"
		],
		WeightMultipliers = [
			{Multiplier = 3, Tree = this.Const.Perks.PolearmTree}
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
				gt.Const.Perks.PerkDefs.LegendCheerOn
			],
			[
				gt.Const.Perks.PerkDefs.RallyTheTroops
			],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.InspiringPresence
			],
			[
				gt.Const.Perks.PerkDefs.Inspire
			]
		]
	};

	gt.Const.Perks.HealerClassTree <- {
		ID = "HealerClassTree",
		Descriptions = [
			"healing"
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendMedIngredients
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecBandage
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendFieldTriage
			]
		]
	};

	gt.Const.Perks.TrapperClassTree <- {
		ID = "TrapperClassTree",
		Descriptions = [
			"trapping"
		],
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.LegendNetRepair
			],
			[
				gt.Const.Perks.PerkDefs.LegendNetCasting
			],
			[
				gt.Const.Perks.PerkDefs.LegendMasteryNets
			],
			[
				gt.Const.Perks.PerkDefs.LegendEscapeArtist
			],
			[],
			[]
		]
	};

	gt.Const.Perks.ChefClassTree <- {
		ID = "ChefClassTree",
		Descriptions = [
			"cooking"
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendMealPreperation
			],
			[
				gt.Const.Perks.PerkDefs.LegendCampCook
			],
			[
				gt.Const.Perks.PerkDefs.LegendAlcoholBrewing
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendQuartermaster
			],
			[
				gt.Const.Perks.PerkDefs.LegendFieldTreats
			]
		]
	};

	gt.Const.Perks.MenderClassTree <- {
		ID = "MenderClassTree",
		Descriptions = [
			"mending"
		],
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.LegendToolsDrawers
			],
			[
				gt.Const.Perks.PerkDefs.LegendToolsSpares
			],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.ClerkClassTree <- {
		ID = "ClerkClassTree",
		Descriptions = [
			"bookkeeping"
		],
		Tree = [
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendPaymaster
			],
			[
				gt.Const.Perks.PerkDefs.LegendDangerPay
			],
			[
				gt.Const.Perks.PerkDefs.LegendBribe
			],
			[]
		]
	};

	this.Const.Perks.HoundmasterClassTree.WeightMultipliers <- [{Multiplier = 4, Tree = this.Const.Perks.CleaverTree}];
	while (this.Const.Perks.HoundmasterClassTree.Tree.len() < 7)
	{
		this.Const.Perks.HoundmasterClassTree.Tree.push(emptyArray);
	}
	this.Const.Perks.HoundmasterClassTree.Tree[0] = [];
	this.Const.Perks.HoundmasterClassTree.Tree[1] = [];
	this.Const.Perks.HoundmasterClassTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendDogWhisperer];
	this.Const.Perks.HoundmasterClassTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendDogBreeder];
	this.Const.Perks.HoundmasterClassTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendDogHandling];
	this.Const.Perks.HoundmasterClassTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendPackleader];
	this.Const.Perks.HoundmasterClassTree.Tree[6] = [this.Const.Perks.PerkDefs.LegendDogMaster];

	gt.Const.Perks.ClassTrees.Tree = [
		gt.Const.Perks.SergeantClassTree,
		gt.Const.Perks.HealerClassTree,
		gt.Const.Perks.TrapperClassTree,
		gt.Const.Perks.ChefClassTree,
		gt.Const.Perks.MenderClassTree,
		gt.Const.Perks.ClerkClassTree,
		gt.Const.Perks.HoundmasterClassTree
	];

	foreach (tree in this.Const.Perks.ClassTrees.Tree)
	{
		tree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	}
}

gt.Const.PTR.modWeaponTrees <- function()
{
	local emptyArray = [];
	while (this.Const.Perks.AxeTree.Tree.len() < 7)
	{
		this.Const.Perks.AxeTree.Tree.push(emptyArray);
	}
	this.Const.Perks.AxeTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSmashingShields];
	this.Const.Perks.AxeTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRDismemberment];
	this.Const.Perks.AxeTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRHeft];
	this.Const.Perks.AxeTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecAxe];
	this.Const.Perks.AxeTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBetweenTheEyes];
	this.Const.Perks.AxeTree.Tree[5] = [this.Const.Perks.PerkDefs.SunderingStrikes];
	this.Const.Perks.AxeTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRCull];

	this.Const.Perks.BowTree.SelfWeightMultiplier <- 0.5;
	while (this.Const.Perks.BowTree.Tree.len() < 7)
	{
		this.Const.Perks.BowTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BowTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRTargetPractice];
	this.Const.Perks.BowTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRRangedSupremacy];
	this.Const.Perks.BowTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRArrowToTheKnee];
	this.Const.Perks.BowTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecBow];
	this.Const.Perks.BowTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRMarksmanship];
	this.Const.Perks.BowTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFlamingArrows];
	this.Const.Perks.BowTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRHipShooter];

	while (this.Const.Perks.CleaverTree.Tree.len() < 7)
	{
		this.Const.Perks.CleaverTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CleaverTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRSwordlike];
	this.Const.Perks.CleaverTree.Tree[2] = [this.Const.Perks.PerkDefs.PTROpenWounds];
	this.Const.Perks.CleaverTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRSanguinary];
	this.Const.Perks.CleaverTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecCleaver];
	this.Const.Perks.CleaverTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBloodlust];
	this.Const.Perks.CleaverTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRBloodbath];
	this.Const.Perks.CleaverTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRMauler];

	this.Const.Perks.CrossbowTree.SelfWeightMultiplier <- 1.5;
	while (this.Const.Perks.CrossbowTree.Tree.len() < 7)
	{
		this.Const.Perks.CrossbowTree.Tree.push(emptyArray);
	}
	this.Const.Perks.CrossbowTree.SelfWeightMultiplier <- 10;
	this.Const.Perks.CrossbowTree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	this.Const.Perks.CrossbowTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRThroughTheRanks];
	this.Const.Perks.CrossbowTree.Tree[1] = [this.Const.Perks.PerkDefs.PTREntrenched];
	this.Const.Perks.CrossbowTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRPowerShot];
	this.Const.Perks.CrossbowTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecCrossbow];
	this.Const.Perks.CrossbowTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRIronSights];
	this.Const.Perks.CrossbowTree.Tree[5] = [this.Const.Perks.PerkDefs.LegendPiercingShot];
	this.Const.Perks.CrossbowTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRWindlassTraining];

	while (this.Const.Perks.DaggerTree.Tree.len() < 7)
	{
		this.Const.Perks.DaggerTree.Tree.push(emptyArray);
	}
	this.Const.Perks.DaggerTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRBetweenTheRibs];
	this.Const.Perks.DaggerTree.Tree[1] = [this.Const.Perks.PerkDefs.Backstabber];
	this.Const.Perks.DaggerTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRLightWeapon];
	this.Const.Perks.DaggerTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecDagger];
	this.Const.Perks.DaggerTree.Tree[4] = [this.Const.Perks.PerkDefs.DoubleStrike];
	this.Const.Perks.DaggerTree.Tree[5] = [this.Const.Perks.PerkDefs.Overwhelm];
	this.Const.Perks.DaggerTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRSwiftStabs];

	while (this.Const.Perks.FlailTree.Tree.len() < 7)
	{
		this.Const.Perks.FlailTree.Tree.push(emptyArray);
	}
	this.Const.Perks.FlailTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRSmallTarget];
	this.Const.Perks.FlailTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRHeadSmasher];
	this.Const.Perks.FlailTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRFromAllSides];
	this.Const.Perks.FlailTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecFlail];
	this.Const.Perks.FlailTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRDeadlyPrecision];
	this.Const.Perks.FlailTree.Tree[5] = [this.Const.Perks.PerkDefs.HeadHunter];
	this.Const.Perks.FlailTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRFlailSpinner];

	while (this.Const.Perks.HammerTree.Tree.len() < 7)
	{
		this.Const.Perks.HammerTree.Tree.push(emptyArray);
	}
	this.Const.Perks.HammerTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSmackdown];
	this.Const.Perks.HammerTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRRattle];
	this.Const.Perks.HammerTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRDeepImpact];
	this.Const.Perks.HammerTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecHammer];
	this.Const.Perks.HammerTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRSoftMetal];
	this.Const.Perks.HammerTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRDismantle];
	this.Const.Perks.HammerTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRDentArmor];

	while (this.Const.Perks.MaceTree.Tree.len() < 7)
	{
		this.Const.Perks.MaceTree.Tree.push(emptyArray);
	}
	this.Const.Perks.MaceTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRPushIt];
	this.Const.Perks.MaceTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRHeavyStrikes];
	this.Const.Perks.MaceTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRBearDown];
	this.Const.Perks.MaceTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecMace];
	this.Const.Perks.MaceTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRConcussiveStrikes];
	this.Const.Perks.MaceTree.Tree[5] = [this.Const.Perks.PerkDefs.PushTheAdvantage];
	this.Const.Perks.MaceTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRBoneBreaker];

	while (this.Const.Perks.PolearmTree.Tree.len() < 7)
	{
		this.Const.Perks.PolearmTree.Tree.push(emptyArray);
	}
	//this.Const.Perks.PolearmTree.Tree[0].push(this.Const.Perks.PerkDefs.PTRTesting);
	this.Const.Perks.PolearmTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRBolster];
	this.Const.Perks.PolearmTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRLeverage];
	this.Const.Perks.PolearmTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRIntimidate];
	this.Const.Perks.PolearmTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecPolearm];
	this.Const.Perks.PolearmTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRFormidableApproach];
	this.Const.Perks.PolearmTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRFollowUp];
	this.Const.Perks.PolearmTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRLongReach];

	while (this.Const.Perks.SlingsTree.Tree.len() < 7)
	{
		this.Const.Perks.SlingsTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SlingsTree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	this.Const.Perks.SlingsTree.Tree[0] = [this.Const.Perks.PerkDefs.Lookout];
	this.Const.Perks.SlingsTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendSpecialistSlingSkill];
	this.Const.Perks.SlingsTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRPatience];
	this.Const.Perks.SlingsTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendMasterySlings];
	this.Const.Perks.SlingsTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSpecialistSlingDamage];
	this.Const.Perks.SlingsTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRHeavyProjectiles];
	this.Const.Perks.SlingsTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRSniper];

	this.Const.Perks.SpearTree.SelfWeightMultiplier <- 2;
	while (this.Const.Perks.SpearTree.Tree.len() < 7)
	{
		this.Const.Perks.SpearTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SpearTree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	this.Const.Perks.SpearTree.SelfWeightMultiplier <- 5;
	this.Const.Perks.SpearTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRPointyEnd];
	this.Const.Perks.SpearTree.Tree[1] = [this.Const.Perks.PerkDefs.PTRImpaler];
	this.Const.Perks.SpearTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRThroughTheGaps];
	this.Const.Perks.SpearTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecSpear];
	this.Const.Perks.SpearTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRTwoForOne];
	this.Const.Perks.SpearTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRABetterGrip];
	this.Const.Perks.SpearTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRKingOfAllWeapons];

	this.Const.Perks.SwordTree.SelfWeightMultiplier <- 1.5;
	while (this.Const.Perks.SwordTree.Tree.len() < 7)
	{
		this.Const.Perks.SwordTree.Tree.push(emptyArray);
	}
	this.Const.Perks.SwordTree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	this.Const.Perks.SwordTree.SelfWeightMultiplier <- 3;
	this.Const.Perks.SwordTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRVersatileWeapon];
	this.Const.Perks.SwordTree.Tree[1] = [this.Const.Perks.PerkDefs.Feint];
	this.Const.Perks.SwordTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRHeightenedReflexes];
	this.Const.Perks.SwordTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecSword];
	this.Const.Perks.SwordTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRTempo];
	this.Const.Perks.SwordTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRKata];
	this.Const.Perks.SwordTree.Tree[6] = [this.Const.Perks.PerkDefs.PTREnGarde, this.Const.Perks.PerkDefs.Fencer];

	while (this.Const.Perks.GreatSwordTree.Tree.len() < 7)
	{
		this.Const.Perks.GreatSwordTree.Tree.push(emptyArray);
	}
	this.Const.Perks.GreatSwordTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRVersatileWeapon];
	this.Const.Perks.GreatSwordTree.Tree[1] = [this.Const.Perks.PerkDefs.Feint];
	this.Const.Perks.GreatSwordTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRHeightenedReflexes];
	this.Const.Perks.GreatSwordTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecSword];
	this.Const.Perks.GreatSwordTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRTempo];
	this.Const.Perks.GreatSwordTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRKata];
	this.Const.Perks.GreatSwordTree.Tree[6] = [this.Const.Perks.PerkDefs.PTREnGarde, this.Const.Perks.PerkDefs.Fencer];

	while (this.Const.Perks.StavesTree.Tree.len() < 7)
	{
		this.Const.Perks.StavesTree.Tree.push(emptyArray);
	}
	this.Const.Perks.StavesTree.SelfExpertiseMultiplier <- this.Const.Perks.Expertise.High;
	this.Const.Perks.StavesTree.SelfWeightMultiplier <- 3;
	this.Const.Perks.StavesTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendSpecStaffSkill];
	this.Const.Perks.StavesTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendOnslaught];
	this.Const.Perks.StavesTree.Tree[2] = [this.Const.Perks.PerkDefs.PTREasyTarget];
	this.Const.Perks.StavesTree.Tree[3] = [this.Const.Perks.PerkDefs.LegendMasteryStaves];
	this.Const.Perks.StavesTree.Tree[4] = [this.Const.Perks.PerkDefs.LegendSpecStaffStun];
	this.Const.Perks.StavesTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRWearThemDown];
	this.Const.Perks.StavesTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRWhackASmack];

	while (this.Const.Perks.ThrowingTree.Tree.len() < 7)
	{
		this.Const.Perks.ThrowingTree.Tree.push(emptyArray);
	}
	this.Const.Perks.ThrowingTree.Tree[0] = [this.Const.Perks.PerkDefs.PTRHybridization];
	this.Const.Perks.ThrowingTree.Tree[1] = [this.Const.Perks.PerkDefs.QuickHands];
	this.Const.Perks.ThrowingTree.Tree[2] = [this.Const.Perks.PerkDefs.PTRMomentum];
	this.Const.Perks.ThrowingTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecThrowing];
	this.Const.Perks.ThrowingTree.Tree[4] = [this.Const.Perks.PerkDefs.PTROpportunist];
	this.Const.Perks.ThrowingTree.Tree[5] = [this.Const.Perks.PerkDefs.CloseCombatArcher];
	this.Const.Perks.ThrowingTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRNailedIt];
}

gt.Const.PTR.modDefenseTrees <- function ()
{
	gt.Const.Perks.ShieldTree.SelfWeightMultiplier <- 1.5;
	gt.Const.Perks.HeavyArmorTree.SelfWeightMultiplier <- 0.33;
}
