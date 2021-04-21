local gt = this.getroottable();

gt.Const.PTR.hookLegendsEnemyTrees <- function()
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

gt.Const.PTR.createStylesTrees <- function()
{
	gt.Const.Perks.OneHandedTree <- {
		ID = "OneHandedTree",
		Descriptions = [
			"one-handed weapons"
		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.ShieldExpert
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.Duelist
			],
			[]
		]
	};

	gt.Const.Perks.TwoHandedTree <- {
		ID = "TwoHandedTree",
		Descriptions = [
			"two-handed weapons"
		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRBloodyHarvest
			],
			[],
			[
				gt.Const.Perks.PerkDefs.ReachAdvantage
			],
			[
				gt.Const.Perks.PerkDefs.PTRSweepingStrikes
			],
			[]
		]
	};

	gt.Const.Perks.RangedTree <- {
		ID = "RangedTree",
		Descriptions = [
			"ranged weapons"
		],
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.Bullseye
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendWindReader
			],
			[
				gt.Const.Perks.PerkDefs.Ballistics
			],
			[]
		]
	};

	gt.Const.Perks.StylesTrees <- {
		Tree = [
			gt.Const.Perks.OneHandedTree,
			gt.Const.Perks.TwoHandedTree,
			gt.Const.Perks.RangedTree
		],
		function getRandom( _exclude )
		{
			local L = [];

			foreach( i, t in this.Tree )
			{
				if (_exclude != null && _exclude.find(t.ID))
				{
					continue;
				}

				L.push(i);
			}

			local r = this.Math.rand(0, L.len() - 1);
			return this.Tree[L[r]];
		}

		function getRandomPerk()
		{
			local tree = this.getRandom(null);
			local L = [];

			foreach( row in tree.Tree )
			{
				foreach( p in row )
				{
					L.push(p);
				}
			}

			local r = this.Math.rand(0, L.len() - 1);
			return L[r];
		}

	};
}

gt.Const.PTR.createProfessionTrees <- function()
{
	gt.Const.Perks.AssassinProfessionTree <- {
		ID = "AssassinProfessionTree",
		Descriptions = [
			"took lives in exchange for gold"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistKnifeSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistKnifeDamage
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendHidden
			],
			[
				gt.Const.Perks.PerkDefs.LegendAssassinate
			]
		]
	};

	gt.Const.Perks.ButcherProfessionTree <- {
		ID = "ButcherProfessionTree",
		Descriptions = [
			"worked at a butcher\'s shop"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistButcherSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistButcherDamage
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendPrepareBleed
			],
			[
				gt.Const.Perks.PerkDefs.LegendPrepareGraze
			],
			[
				gt.Const.Perks.PerkDefs.LegendSlaughter
			]
		]
	};

	gt.Const.Perks.BlacksmithProfessionTree <- {
		ID = "BlacksmithProfessionTree",
		Descriptions = [
			"worked at a blacksmith\'s shop"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistHammerSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistHammerDamage
			],
			[],
			[
				gt.Const.Perks.PerkDefs.SunderingStrikes
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRPersonalArmor
			]
		]
	};

	gt.Const.Perks.MilitiaProfessionTree <- {
		ID = "MilitiaProfessionTree",
		Descriptions = [
			"served in the local militia"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistMilitiaSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistMilitiaDamage
			],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRStrengthInNumbers
			]
		]
	};

	gt.Const.Perks.MinerProfessionTree <- {
		ID = "MinerProfessionTree",
		Descriptions = [
			"worked at a quarry",
			"worked in a mine"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistPickaxeSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistPickaxeDamage
			],
			[],
			[
				gt.Const.Perks.PerkDefs.SunderingStrikes
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRTunnelVision
			]
		]
	};

	gt.Const.Perks.FarmerProfessionTree <- {
		ID = "FarmerProfessionTree",
		Descriptions = [
			"worked at a ranch",
			"ploughed the fields"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
		],
		ExpertiseMultipliers = [
			{ Multiplier = this.Const.Perks.Expertise.High, Tree = gt.Const.Perks.PolearmTree }
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistPitchforkSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistPitchforkDamage
			],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.HunterProfessionTree <- {
		ID = "HunterProfessionTree",
		Descriptions = [
			"hunted in the forests"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistShortbowSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistShortbowDamage
			],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.DiggerProfessionTree <- {
		ID = "DiggerProfessionTree",
		Descriptions = [
			"used a shovel to earn coin"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistShovelSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistShovelDamage
			],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.LumberjackProfessionTree <- {
		ID = "LumberjackProfessionTree",
		Descriptions = [
			"fell trees"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistWoodaxeSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistWoodaxeDamage
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendWoodworking
			],
			[],
			[]
		]
	};

	gt.Const.Perks.ApothecaryProfessionTree <- {
		ID = "ApothecaryProfessionTree",
		Descriptions = [
			"collected herbs"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistSickleSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistSickleDamage
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendGatherer
			],
			[
				gt.Const.Perks.PerkDefs.LegendHerbcraft
			],
			[
				gt.Const.Perks.PerkDefs.LegendPotionBrewer
			]
		]
	};

	gt.Const.Perks.JugglerProfessionTree <- {
		ID = "JugglerProfessionTree",
		Descriptions = [
			"performed in a circus"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendHairSplitter
			],
			[],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendLeap
			],
			[
				gt.Const.Perks.PerkDefs.LegendTumble
			]
		]
	};

	gt.Const.Perks.MinstrelProfessionTree <- {
		ID = "MinstrelProfessionTree",
		Descriptions = [
			"performed music at a tavern"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistLuteSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistLuteDamage
			],
			[
				gt.Const.Perks.PerkDefs.LegendEntice
			],
			[
				gt.Const.Perks.PerkDefs.LegendPush
			],
			[
				gt.Const.Perks.PerkDefs.LegendDrumsOfWar
			],
			[
				gt.Const.Perks.PerkDefs.LegendDrumsOfLife
			]
		]
	};

	gt.Const.Perks.HolyManProfessionTree <- {
		ID = "HolyManProfessionTree",
		Descriptions = [
			"preached the word of the gods"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendTrueBeliever
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendPrayerOfFaith
			],
			[
				gt.Const.Perks.PerkDefs.LegendPrayerOfLife
			],
			[
				gt.Const.Perks.PerkDefs.LegendHolyFlame
			]
		]
	};

	gt.Const.Perks.CultistProfessionTree <- {
		ID = "CultistProfessionTree",
		Descriptions = [
			"took part in cultist rituals"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecCultHood
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendPrepareGraze
			],
			[
				gt.Const.Perks.PerkDefs.LegendSpecCultArmor
			],
			[
				gt.Const.Perks.PerkDefs.LegendLacerate
			]
		]
	};

	gt.Const.Perks.TraderProfessionTree <- {
		ID = "TraderProfessionTree",
		Descriptions = [
			"traded goods"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [

		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendBarterConvincing
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendBarterTrustworthy
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendBarterGreed
			]
		]
	};

	gt.Const.Perks.ProfessionTrees <- {
		Tree = [
			gt.Const.Perks.AssassinProfessionTree,
			gt.Const.Perks.ButcherProfessionTree,
			gt.Const.Perks.BlacksmithProfessionTree,
			gt.Const.Perks.MilitiaProfessionTree,
			gt.Const.Perks.MinerProfessionTree,
			gt.Const.Perks.FarmerProfessionTree,
			gt.Const.Perks.HunterProfessionTree,
			gt.Const.Perks.DiggerProfessionTree,
			gt.Const.Perks.LumberjackProfessionTree,
			gt.Const.Perks.ApothecaryProfessionTree,
			gt.Const.Perks.JugglerProfessionTree,
			gt.Const.Perks.MinstrelProfessionTree,
			gt.Const.Perks.HolyManProfessionTree,
			gt.Const.Perks.CultistProfessionTree,
			gt.Const.Perks.TraderProfessionTree
		],
		function getRandom( _exclude )
		{
			local L = [];

			foreach( i, t in this.Tree )
			{
				if (_exclude != null && _exclude.find(t.ID))
				{
					continue;
				}

				L.push(i);
			}

			local r = this.Math.rand(0, L.len() - 1);
			return this.Tree[L[r]];
		}

		function getRandomPerk()
		{
			local tree = this.getRandom(null);
			local L = [];

			foreach( row in tree.Tree )
			{
				foreach( p in row )
				{
					L.push(p);
				}
			}

			local r = this.Math.rand(0, L.len() - 1);
			return L[r];
		}
	};

}

gt.Const.PTR.hookTraitsTrees <- function()
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
	this.Const.Perks.ViciousTree.Tree[0] = [this.Const.Perks.PerkDefs.FastAdaption];
	this.Const.Perks.ViciousTree.Tree[1] = [];
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
	this.Const.Perks.CalmTree.Tree[0] = [];
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

gt.Const.PTR.hookClassTrees <- function()
{
	local emptyArray = [];

	gt.Const.Perks.SergeantClassTree <- {
		ID = "SergeantClassTree",
		Descriptions = [
			"inspiring men"
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

gt.Const.PTR.addPerksToPerkDefs <- function()
{
	gt.Const.Strings.PerkName.PTRTesting <- "Testing perk";
	gt.Const.Strings.PerkDescription.PTRTesting <- "Will add other perks for testing them.";

	this.Const.Perks.PerkDefObjects.push({
		ID = "perk.ptr_testing",
		Script = "scripts/skills/perks/perk_ptr_testing",
		Name = this.Const.Strings.PerkName.PTRTesting,
		Tooltip = this.Const.Strings.PerkDescription.PTRTesting,
		Icon = "ui/perks/ptr_testing.png",
		IconDisabled = "ui/perks/ptr_testing_bw.png",
		Const = "PTRTesting"
	});

	local axePerks = [
		{
			ID = "perk.ptr_dismemberment",
			Script = "scripts/skills/perks/perk_ptr_dismemberment",
			Name = this.Const.Strings.PerkName.PTRDismemberment,
			Tooltip = this.Const.Strings.PerkDescription.PTRDismemberment,
			Icon = "ui/perks/ptr_dismemberment.png",
			IconDisabled = "ui/perks/ptr_dismemberment_bw.png",
			Const = "PTRDismemberment"
		},
		{
			ID = "perk.ptr_heft",
			Script = "scripts/skills/perks/perk_ptr_heft",
			Name = this.Const.Strings.PerkName.PTRHeft,
			Tooltip = this.Const.Strings.PerkDescription.PTRHeft,
			Icon = "ui/perks/ptr_heft.png",
			IconDisabled = "ui/perks/ptr_heft_bw.png",
			Const = "PTRHeft"
		},
		{
			ID = "perk.ptr_between_the_eyes",
			Script = "scripts/skills/perks/perk_ptr_between_the_eyes",
			Name = this.Const.Strings.PerkName.PTRBetweenTheEyes,
			Tooltip = this.Const.Strings.PerkDescription.PTRBetweenTheEyes,
			Icon = "ui/perks/ptr_between_the_eyes.png",
			IconDisabled = "ui/perks/ptr_between_the_eyes_bw.png",
			Const = "PTRBetweenTheEyes"
		},
		{
			ID = "perk.ptr_cull",
			Script = "scripts/skills/perks/perk_ptr_cull",
			Name = this.Const.Strings.PerkName.PTRCull,
			Tooltip = this.Const.Strings.PerkDescription.PTRCull,
			Icon = "ui/perks/ptr_cull.png",
			IconDisabled = "ui/perks/ptr_cull_bw.png",
			Const = "PTRCull"
		}
	];

	local bowPerks = [
		{
			ID = "perk.ptr_arrow_to_the_knee",
			Script = "scripts/skills/perks/perk_ptr_arrow_to_the_knee",
			Name = this.Const.Strings.PerkName.PTRArrowToTheKnee,
			Tooltip = this.Const.Strings.PerkDescription.PTRArrowToTheKnee,
			Icon = "ui/perks/ptr_arrow_to_the_knee.png",
			IconDisabled = "ui/perks/ptr_arrow_to_the_knee_bw.png",
			Const = "PTRArrowToTheKnee"
		},
		{
			ID = "perk.ptr_flaming_arrows",
			Script = "scripts/skills/perks/perk_ptr_flaming_arrows",
			Name = this.Const.Strings.PerkName.PTRFlamingArrows,
			Tooltip = this.Const.Strings.PerkDescription.PTRFlamingArrows,
			Icon = "ui/perks/ptr_flaming_arrows.png",
			IconDisabled = "ui/perks/ptr_flaming_arrows_bw.png",
			Const = "PTRFlamingArrows"
		},
		{
			ID = "perk.ptr_sniper",
			Script = "scripts/skills/perks/perk_ptr_sniper",
			Name = this.Const.Strings.PerkName.PTRSniper,
			Tooltip = this.Const.Strings.PerkDescription.PTRSniper,
			Icon = "ui/perks/ptr_sniper.png",
			IconDisabled = "ui/perks/ptr_sniper_bw.png",
			Const = "PTRSniper"
		},
		{
			ID = "perk.ptr_hip_shooter",
			Script = "scripts/skills/perks/perk_ptr_hip_shooter",
			Name = this.Const.Strings.PerkName.PTRHipShooter,
			Tooltip = this.Const.Strings.PerkDescription.PTRHipShooter,
			Icon = "ui/perks/ptr_hip_shooter.png",
			IconDisabled = "ui/perks/ptr_hip_shooter_bw.png",
			Const = "PTRHipShooter"
		}
	];

	local cleaverPerks = [
		{
			ID = "perk.ptr_open_wounds",
			Script = "scripts/skills/perks/perk_ptr_open_wounds",
			Name = this.Const.Strings.PerkName.PTROpenWounds,
			Tooltip = this.Const.Strings.PerkDescription.PTROpenWounds,
			Icon = "ui/perks/ptr_open_wounds.png",
			IconDisabled = "ui/perks/ptr_open_wounds_bw.png",
			Const = "PTROpenWounds"
		},
		{
			ID = "perk.ptr_bloodlust",
			Script = "scripts/skills/perks/perk_ptr_bloodlust",
			Name = this.Const.Strings.PerkName.PTRBloodlust,
			Tooltip = this.Const.Strings.PerkDescription.PTRBloodlust,
			Icon = "ui/perks/ptr_bloodlust.png",
			IconDisabled = "ui/perks/ptr_bloodlust_bw.png",
			Const = "PTRBloodlust"
		},
		{
			ID = "perk.ptr_bloodbath",
			Script = "scripts/skills/perks/perk_ptr_bloodbath",
			Name = this.Const.Strings.PerkName.PTRBloodbath,
			Tooltip = this.Const.Strings.PerkDescription.PTRBloodbath,
			Icon = "ui/perks/ptr_bloodbath.png",
			IconDisabled = "ui/perks/ptr_bloodbath_bw.png",
			Const = "PTRBloodbath"
		},
		{
			ID = "perk.ptr_mauler",
			Script = "scripts/skills/perks/perk_ptr_mauler",
			Name = this.Const.Strings.PerkName.PTRMauler,
			Tooltip = this.Const.Strings.PerkDescription.PTRMauler,
			Icon = "ui/perks/ptr_mauler.png",
			IconDisabled = "ui/perks/ptr_mauler_bw.png",
			Const = "PTRMauler"
		}
	];

	local crossbowPerks = [
		{
			ID = "perk.ptr_through_the_ranks",
			Script = "scripts/skills/perks/perk_ptr_through_the_ranks",
			Name = this.Const.Strings.PerkName.PTRThroughTheRanks,
			Tooltip = this.Const.Strings.PerkDescription.PTRThroughTheRanks,
			Icon = "ui/perks/ptr_through_the_ranks.png",
			IconDisabled = "ui/perks/ptr_through_the_ranks_bw.png",
			Const = "PTRThroughTheRanks"
		},
		{
			ID = "perk.ptr_entrenched",
			Script = "scripts/skills/perks/perk_ptr_entrenched",
			Name = this.Const.Strings.PerkName.PTREntrenched,
			Tooltip = this.Const.Strings.PerkDescription.PTREntrenched,
			Icon = "ui/perks/ptr_entrenched.png",
			IconDisabled = "ui/perks/ptr_entrenched_bw.png",
			Const = "PTREntrenched"
		},
		{
			ID = "perk.ptr_power_shot",
			Script = "scripts/skills/perks/perk_ptr_power_shot",
			Name = this.Const.Strings.PerkName.PTRPowerShot,
			Tooltip = this.Const.Strings.PerkDescription.PTRPowerShot,
			Icon = "ui/perks/ptr_power_shot.png",
			IconDisabled = "ui/perks/ptr_power_shot_bw.png",
			Const = "PTRPowerShot"
		},
		{
			ID = "perk.ptr_iron_sights",
			Script = "scripts/skills/perks/perk_ptr_iron_sights",
			Name = this.Const.Strings.PerkName.PTRIronSights,
			Tooltip = this.Const.Strings.PerkDescription.PTRIronSights,
			Icon = "ui/perks/ptr_iron_sights.png",
			IconDisabled = "ui/perks/ptr_iron_sights_bw.png",
			Const = "PTRIronSights"
		},
		{
			ID = "perk.ptr_windlass_training",
			Script = "scripts/skills/perks/perk_ptr_windlass_training",
			Name = this.Const.Strings.PerkName.PTRWindlassTraining,
			Tooltip = this.Const.Strings.PerkDescription.PTRWindlassTraining,
			Icon = "ui/perks/ptr_windlass_training.png",
			IconDisabled = "ui/perks/ptr_windlass_training_bw.png",
			Const = "PTRWindlassTraining"
		}
	];

	local daggerPerks = [
		{
			ID = "perk.ptr_between_the_ribs",
			Script = "scripts/skills/perks/perk_ptr_between_the_ribs",
			Name = this.Const.Strings.PerkName.PTRBetweenTheRibs,
			Tooltip = this.Const.Strings.PerkDescription.PTRBetweenTheRibs,
			Icon = "ui/perks/ptr_between_the_ribs.png",
			IconDisabled = "ui/perks/ptr_between_the_ribs_bw.png",
			Const = "PTRBetweenTheRibs"
		},
		{
			ID = "perk.ptr_light_weapon",
			Script = "scripts/skills/perks/perk_ptr_light_weapon",
			Name = this.Const.Strings.PerkName.PTRLightWeapon,
			Tooltip = this.Const.Strings.PerkDescription.PTRLightWeapon,
			Icon = "ui/perks/ptr_light_weapon.png",
			IconDisabled = "ui/perks/ptr_light_weapon_bw.png",
			Const = "PTRLightWeapon"
		},
		{
			ID = "perk.ptr_swift_stabs",
			Script = "scripts/skills/perks/perk_ptr_swift_stabs",
			Name = this.Const.Strings.PerkName.PTRSwiftStabs,
			Tooltip = this.Const.Strings.PerkDescription.PTRSwiftStabs,
			Icon = "ui/perks/ptr_swift_stabs.png",
			IconDisabled = "ui/perks/ptr_swift_stabs_bw.png",
			Const = "PTRSwiftStabs"
		}
	];

	local flailPerks = [
		{
			ID = "perk.ptr_small_target",
			Script = "scripts/skills/perks/perk_ptr_small_target",
			Name = this.Const.Strings.PerkName.PTRSmallTarget,
			Tooltip = this.Const.Strings.PerkDescription.PTRSmallTarget,
			Icon = "ui/perks/ptr_small_target.png",
			IconDisabled = "ui/perks/ptr_small_target_bw.png",
			Const = "PTRSmallTarget"
		},
		{
			ID = "perk.ptr_head_smasher",
			Script = "scripts/skills/perks/perk_ptr_head_smasher",
			Name = this.Const.Strings.PerkName.PTRHeadSmasher,
			Tooltip = this.Const.Strings.PerkDescription.PTRHeadSmasher,
			Icon = "ui/perks/ptr_head_smasher.png",
			IconDisabled = "ui/perks/ptr_head_smasher_bw.png",
			Const = "PTRHeadSmasher"
		},
		{
			ID = "perk.ptr_flail_spinner",
			Script = "scripts/skills/perks/perk_ptr_flail_spinner",
			Name = this.Const.Strings.PerkName.PTRFlailSpinner,
			Tooltip = this.Const.Strings.PerkDescription.PTRFlailSpinner,
			Icon = "ui/perks/ptr_flail_spinner.png",
			IconDisabled = "ui/perks/ptr_flail_spinner_bw.png",
			Const = "PTRFlailSpinner"
		},
		{
			ID = "perk.ptr_deadly_precision",
			Script = "scripts/skills/perks/perk_ptr_deadly_precision",
			Name = this.Const.Strings.PerkName.PTRDeadlyPrecision,
			Tooltip = this.Const.Strings.PerkDescription.PTRDeadlyPrecision,
			Icon = "ui/perks/ptr_deadly_precision.png",
			IconDisabled = "ui/perks/ptr_deadly_precision_bw.png",
			Const = "PTRDeadlyPrecision"
		},
		{
			ID = "perk.ptr_from_all_sides",
			Script = "scripts/skills/perks/perk_ptr_from_all_sides",
			Name = this.Const.Strings.PerkName.PTRFromAllSides,
			Tooltip = this.Const.Strings.PerkDescription.PTRFromAllSides,
			Icon = "ui/perks/ptr_from_all_sides.png",
			IconDisabled = "ui/perks/ptr_from_all_sides_bw.png",
			Const = "PTRFromAllSides"
		}
	];

	local hammerPerks = [
		{
			ID = "perk.ptr_rattle",
			Script = "scripts/skills/perks/perk_ptr_rattle",
			Name = this.Const.Strings.PerkName.PTRRattle,
			Tooltip = this.Const.Strings.PerkDescription.PTRRattle,
			Icon = "ui/perks/ptr_rattle.png",
			IconDisabled = "ui/perks/ptr_rattle_bw.png",
			Const = "PTRRattle"
		},
		{
			ID = "perk.ptr_deep_impact",
			Script = "scripts/skills/perks/perk_ptr_deep_impact",
			Name = this.Const.Strings.PerkName.PTRDeepImpact,
			Tooltip = this.Const.Strings.PerkDescription.PTRDeepImpact,
			Icon = "ui/perks/ptr_deep_impact.png",
			IconDisabled = "ui/perks/ptr_deep_impact_bw.png",
			Const = "PTRDeepImpact"
		},
		{
			ID = "perk.ptr_soft_metal",
			Script = "scripts/skills/perks/perk_ptr_soft_metal",
			Name = this.Const.Strings.PerkName.PTRSoftMetal,
			Tooltip = this.Const.Strings.PerkDescription.PTRSoftMetal,
			Icon = "ui/perks/ptr_soft_metal.png",
			IconDisabled = "ui/perks/ptr_soft_metal_bw.png",
			Const = "PTRSoftMetal"
		},
		{
			ID = "perk.ptr_dismantle",
			Script = "scripts/skills/perks/perk_ptr_dismantle",
			Name = this.Const.Strings.PerkName.PTRDismantle,
			Tooltip = this.Const.Strings.PerkDescription.PTRDismantle,
			Icon = "ui/perks/ptr_dismantle.png",
			IconDisabled = "ui/perks/ptr_dismantle_bw.png",
			Const = "PTRDismantle"
		},
		{
			ID = "perk.ptr_dent_armor",
			Script = "scripts/skills/perks/perk_ptr_dent_armor",
			Name = this.Const.Strings.PerkName.PTRDentArmor,
			Tooltip = this.Const.Strings.PerkDescription.PTRDentArmor,
			Icon = "ui/perks/ptr_dent_armor.png",
			IconDisabled = "ui/perks/ptr_dent_armor_bw.png",
			Const = "PTRDentArmor"
		}
	];

	local macePerks = [
		{
			ID = "perk.ptr_push_it",
			Script = "scripts/skills/perks/perk_ptr_push_it",
			Name = this.Const.Strings.PerkName.PTRPushIt,
			Tooltip = this.Const.Strings.PerkDescription.PTRPushIt,
			Icon = "ui/perks/ptr_push_it.png",
			IconDisabled = "ui/perks/ptr_push_it_bw.png",
			Const = "PTRPushIt"
		},
		{
			ID = "perk.ptr_heavy_strikes",
			Script = "scripts/skills/perks/perk_ptr_heavy_strikes",
			Name = this.Const.Strings.PerkName.PTRHeavyStrikes,
			Tooltip = this.Const.Strings.PerkDescription.PTRHeavyStrikes,
			Icon = "ui/perks/ptr_heavy_strikes.png",
			IconDisabled = "ui/perks/ptr_heavy_strikes_bw.png",
			Const = "PTRHeavyStrikes"
		},
		{
			ID = "perk.ptr_bear_down",
			Script = "scripts/skills/perks/perk_ptr_bear_down",
			Name = this.Const.Strings.PerkName.PTRBearDown,
			Tooltip = this.Const.Strings.PerkDescription.PTRBearDown,
			Icon = "ui/perks/ptr_bear_down.png",
			IconDisabled = "ui/perks/ptr_bear_down_bw.png",
			Const = "PTRBearDown"
		},
		{
			ID = "perk.ptr_concussive_strikes",
			Script = "scripts/skills/perks/perk_ptr_concussive_strikes",
			Name = this.Const.Strings.PerkName.PTRConcussiveStrikes,
			Tooltip = this.Const.Strings.PerkDescription.PTRConcussiveStrikes,
			Icon = "ui/perks/ptr_concussive_strikes.png",
			IconDisabled = "ui/perks/ptr_concussive_strikes_bw.png",
			Const = "PTRConcussiveStrikes"
		},
		{
			ID = "perk.ptr_bone_breaker",
			Script = "scripts/skills/perks/perk_ptr_bone_breaker",
			Name = this.Const.Strings.PerkName.PTRBoneBreaker,
			Tooltip = this.Const.Strings.PerkDescription.PTRBoneBreaker,
			Icon = "ui/perks/ptr_bone_breaker.png",
			IconDisabled = "ui/perks/ptr_bone_breaker_bw.png",
			Const = "PTRBoneBreaker"
		}
	];

	local polearmPerks = [
		{
			ID = "perk.ptr_bolster",
			Script = "scripts/skills/perks/perk_ptr_bolster",
			Name = this.Const.Strings.PerkName.PTRBolster,
			Tooltip = this.Const.Strings.PerkDescription.PTRBolster,
			Icon = "ui/perks/ptr_bolster.png",
			IconDisabled = "ui/perks/ptr_bolster_bw.png",
			Const = "PTRBolster"
		},
		{
			ID = "perk.ptr_leverage",
			Script = "scripts/skills/perks/perk_ptr_leverage",
			Name = this.Const.Strings.PerkName.PTRLeverage,
			Tooltip = this.Const.Strings.PerkDescription.PTRLeverage,
			Icon = "ui/perks/ptr_leverage.png",
			IconDisabled = "ui/perks/ptr_leverage_bw.png",
			Const = "PTRLeverage"
		},
		{
			ID = "perk.ptr_intimidate",
			Script = "scripts/skills/perks/perk_ptr_intimidate",
			Name = this.Const.Strings.PerkName.PTRIntimidate,
			Tooltip = this.Const.Strings.PerkDescription.PTRIntimidate,
			Icon = "ui/perks/ptr_intimidate.png",
			IconDisabled = "ui/perks/ptr_intimidate_bw.png",
			Const = "PTRIntimidate"
		},
		{
			ID = "perk.ptr_formidable_approach",
			Script = "scripts/skills/perks/perk_ptr_formidable_approach",
			Name = this.Const.Strings.PerkName.PTRFormidableApproach,
			Tooltip = this.Const.Strings.PerkDescription.PTRFormidableApproach,
			Icon = "ui/perks/ptr_formidable_approach.png",
			IconDisabled = "ui/perks/ptr_formidable_approach_bw.png",
			Const = "PTRFormidableApproach"
		},
		{
			ID = "perk.ptr_follow_up",
			Script = "scripts/skills/perks/perk_ptr_follow_up",
			Name = this.Const.Strings.PerkName.PTRFollowUp,
			Tooltip = this.Const.Strings.PerkDescription.PTRFollowUp,
			Icon = "ui/perks/ptr_follow_up.png",
			IconDisabled = "ui/perks/ptr_follow_up_bw.png",
			Const = "PTRFollowUp"
		},
		{
			ID = "perk.ptr_long_reach",
			Script = "scripts/skills/perks/perk_ptr_long_reach",
			Name = this.Const.Strings.PerkName.PTRLongReach,
			Tooltip = this.Const.Strings.PerkDescription.PTRLongReach,
			Icon = "ui/perks/ptr_long_reach.png",
			IconDisabled = "ui/perks/ptr_long_reach_bw.png",
			Const = "PTRLongReach"
		}
	];

	local slingPerks = [
		{
			ID = "perk.ptr_patience",
			Script = "scripts/skills/perks/perk_ptr_patience",
			Name = this.Const.Strings.PerkName.PTRPatience,
			Tooltip = this.Const.Strings.PerkDescription.PTRPatience,
			Icon = "ui/perks/ptr_patience.png",
			IconDisabled = "ui/perks/ptr_patience_bw.png",
			Const = "PTRPatience"
		},
		{
			ID = "perk.ptr_heavy_projectiles",
			Script = "scripts/skills/perks/perk_ptr_heavy_projectiles",
			Name = this.Const.Strings.PerkName.PTRHeavyProjectiles,
			Tooltip = this.Const.Strings.PerkDescription.PTRHeavyProjectiles,
			Icon = "ui/perks/ptr_heavy_projectiles.png",
			IconDisabled = "ui/perks/ptr_heavy_projectiles_bw.png",
			Const = "PTRHeavyProjectiles"
		}
	];

	local spearPerks = [
		{
			ID = "perk.ptr_pointy_end",
			Script = "scripts/skills/perks/perk_ptr_pointy_end",
			Name = this.Const.Strings.PerkName.PTRPointyEnd,
			Tooltip = this.Const.Strings.PerkDescription.PTRPointyEnd,
			Icon = "ui/perks/ptr_pointy_end.png",
			IconDisabled = "ui/perks/ptr_pointy_end_bw.png",
			Const = "PTRPointyEnd"
		},
		{
			ID = "perk.ptr_impaler",
			Script = "scripts/skills/perks/perk_ptr_impaler",
			Name = this.Const.Strings.PerkName.PTRImpaler,
			Tooltip = this.Const.Strings.PerkDescription.PTRImpaler,
			Icon = "ui/perks/ptr_impaler.png",
			IconDisabled = "ui/perks/ptr_impaler_bw.png",
			Const = "PTRImpaler"
		},
		{
			ID = "perk.ptr_through_the_gaps",
			Script = "scripts/skills/perks/perk_ptr_through_the_gaps",
			Name = this.Const.Strings.PerkName.PTRThroughTheGaps,
			Tooltip = this.Const.Strings.PerkDescription.PTRThroughTheGaps,
			Icon = "ui/perks/ptr_through_the_gaps.png",
			IconDisabled = "ui/perks/ptr_through_the_gaps_bw.png",
			Const = "PTRThroughTheGaps"
		},
		{
			ID = "perk.ptr_two_for_one",
			Script = "scripts/skills/perks/perk_ptr_two_for_one",
			Name = this.Const.Strings.PerkName.PTRTwoForOne,
			Tooltip = this.Const.Strings.PerkDescription.PTRTwoForOne,
			Icon = "ui/perks/ptr_two_for_one.png",
			IconDisabled = "ui/perks/ptr_two_for_one_bw.png",
			Const = "PTRTwoForOne"
		},
		{
			ID = "perk.ptr_a_better_grip",
			Script = "scripts/skills/perks/perk_ptr_a_better_grip",
			Name = this.Const.Strings.PerkName.PTRABetterGrip,
			Tooltip = this.Const.Strings.PerkDescription.PTRABetterGrip,
			Icon = "ui/perks/ptr_a_better_grip.png",
			IconDisabled = "ui/perks/ptr_a_better_grip_bw.png",
			Const = "PTRABetterGrip"
		},
		{
			ID = "perk.ptr_king_of_all_weapons",
			Script = "scripts/skills/perks/perk_ptr_king_of_all_weapons",
			Name = this.Const.Strings.PerkName.PTRKingOfAllWeapons,
			Tooltip = this.Const.Strings.PerkDescription.PTRKingOfAllWeapons,
			Icon = "ui/perks/ptr_king_of_all_weapons.png",
			IconDisabled = "ui/perks/ptr_king_of_all_weapons_bw.png",
			Const = "PTRKingOfAllWeapons"
		}
	];

	local staffPerks = [
		{
			ID = "perk.ptr_easy_target",
			Script = "scripts/skills/perks/perk_ptr_easy_target",
			Name = this.Const.Strings.PerkName.PTREasyTarget,
			Tooltip = this.Const.Strings.PerkDescription.PTREasyTarget,
			Icon = "ui/perks/ptr_easy_target.png",
			IconDisabled = "ui/perks/ptr_easy_target_bw.png",
			Const = "PTREasyTarget"
		},
		{
			ID = "perk.ptr_wear_them_down",
			Script = "scripts/skills/perks/perk_ptr_wear_them_down",
			Name = this.Const.Strings.PerkName.PTRWearThemDown,
			Tooltip = this.Const.Strings.PerkDescription.PTRWearThemDown,
			Icon = "ui/perks/ptr_wear_them_down.png",
			IconDisabled = "ui/perks/ptr_wear_them_down_bw.png",
			Const = "PTRWearThemDown"
		},
		{
			ID = "perk.ptr_whack_a_smack",
			Script = "scripts/skills/perks/perk_ptr_whack_a_smack",
			Name = this.Const.Strings.PerkName.PTRWhackASmack,
			Tooltip = this.Const.Strings.PerkDescription.PTRWhackASmack,
			Icon = "ui/perks/ptr_whack_a_smack.png",
			IconDisabled = "ui/perks/ptr_whack_a_smack_bw.png",
			Const = "PTRWhackASmack"
		}
	];

	local swordPerks = [
		{
			ID = "perk.ptr_heightened_reflexes",
			Script = "scripts/skills/perks/perk_ptr_heightened_reflexes",
			Name = this.Const.Strings.PerkName.PTRHeightenedReflexes,
			Tooltip = this.Const.Strings.PerkDescription.PTRHeightenedReflexes,
			Icon = "ui/perks/ptr_heightened_reflexes.png",
			IconDisabled = "ui/perks/ptr_heightened_reflexes_bw.png",
			Const = "PTRHeightenedReflexes"
		},
		{
			ID = "perk.ptr_bloody_harvest",
			Script = "scripts/skills/perks/perk_ptr_bloody_harvest",
			Name = this.Const.Strings.PerkName.PTRBloodyHarvest,
			Tooltip = this.Const.Strings.PerkDescription.PTRBloodyHarvest,
			Icon = "ui/perks/ptr_bloody_harvest.png",
			IconDisabled = "ui/perks/ptr_bloody_harvest_bw.png",
			Const = "PTRBloodyHarvest"
		},
		{
			ID = "perk.ptr_sweeping_strikes",
			Script = "scripts/skills/perks/perk_ptr_sweeping_strikes",
			Name = this.Const.Strings.PerkName.PTRSweepingStrikes,
			Tooltip = this.Const.Strings.PerkDescription.PTRSweepingStrikes,
			Icon = "ui/perks/ptr_sweeping_strikes.png",
			IconDisabled = "ui/perks/ptr_sweeping_strikes_bw.png",
			Const = "PTRSweepingStrikes"
		}
	];

	local throwingPerks = [
		{
			ID = "perk.ptr_hybridization",
			Script = "scripts/skills/perks/perk_ptr_hybridization",
			Name = this.Const.Strings.PerkName.PTRHybridization,
			Tooltip = this.Const.Strings.PerkDescription.PTRHybridization,
			Icon = "ui/perks/ptr_hybridization.png",
			IconDisabled = "ui/perks/ptr_hybridization_bw.png",
			Const = "PTRHybridization"
		},
		{
			ID = "perk.ptr_momentum",
			Script = "scripts/skills/perks/perk_ptr_momentum",
			Name = this.Const.Strings.PerkName.PTRMomentum,
			Tooltip = this.Const.Strings.PerkDescription.PTRMomentum,
			Icon = "ui/perks/ptr_momentum.png",
			IconDisabled = "ui/perks/ptr_momentum_bw.png",
			Const = "PTRMomentum"
		},
		{
			ID = "perk.ptr_opportunist",
			Script = "scripts/skills/perks/perk_ptr_opportunist",
			Name = this.Const.Strings.PerkName.PTROpportunist,
			Tooltip = this.Const.Strings.PerkDescription.PTROpportunist,
			Icon = "ui/perks/ptr_opportunist.png",
			IconDisabled = "ui/perks/ptr_opportunist_bw.png",
			Const = "PTROpportunist"
		},
		{
			ID = "perk.ptr_nailed_it",
			Script = "scripts/skills/perks/perk_ptr_nailed_it",
			Name = this.Const.Strings.PerkName.PTRNailedIt,
			Tooltip = this.Const.Strings.PerkDescription.PTRNailedIt,
			Icon = "ui/perks/ptr_nailed_it.png",
			IconDisabled = "ui/perks/ptr_nailed_it_bw.png",
			Const = "PTRNailedIt"
		}
	];

	local traitsPerks = [
		{
			ID = "perk.ptr_fresh_and_furious",
			Script = "scripts/skills/perks/perk_ptr_fresh_and_furious",
			Name = this.Const.Strings.PerkName.PTRFreshAndFurious,
			Tooltip = this.Const.Strings.PerkDescription.PTRFreshAndFurious,
			Icon = "ui/perks/ptr_fresh_and_furious.png",
			IconDisabled = "ui/perks/ptr_fresh_and_furious_bw.png",
			Const = "PTRFreshAndFurious"
		},
		{
			ID = "perk.ptr_unstoppable",
			Script = "scripts/skills/perks/perk_ptr_unstoppable",
			Name = this.Const.Strings.PerkName.PTRUnstoppable,
			Tooltip = this.Const.Strings.PerkDescription.PTRUnstoppable,
			Icon = "ui/perks/ptr_unstoppable.png",
			IconDisabled = "ui/perks/ptr_unstoppable_bw.png",
			Const = "PTRUnstoppable"
		},
		{
			ID = "perk.ptr_know_their_weakness",
			Script = "scripts/skills/perks/perk_ptr_know_their_weakness",
			Name = this.Const.Strings.PerkName.PTRKnowTheirWeakness,
			Tooltip = this.Const.Strings.PerkDescription.PTRKnowTheirWeakness,
			Icon = "ui/perks/ptr_know_their_weakness.png",
			IconDisabled = "ui/perks/ptr_know_their_weakness_bw.png",
			Const = "PTRKnowTheirWeakness"
		}
	];

	local classPerks = [
		{
			ID = "perk.ptr_the_rush_of_battle",
			Script = "scripts/skills/perks/perk_ptr_the_rush_of_battle",
			Name = this.Const.Strings.PerkName.PTRTheRushOfBattle,
			Tooltip = this.Const.Strings.PerkDescription.PTRTheRushOfBattle,
			Icon = "ui/perks/ptr_the_rush_of_battle.png",
			IconDisabled = "ui/perks/ptr_the_rush_of_battle_bw.png",
			Const = "PTRTheRushOfBattle"
		}
	];

	local professionPerks = [
		{
			ID = "perk.ptr_personal_armor",
			Script = "scripts/skills/perks/perk_ptr_personal_armor",
			Name = this.Const.Strings.PerkName.PTRPersonalArmor,
			Tooltip = this.Const.Strings.PerkDescription.PTRPersonalArmor,
			Icon = "ui/perks/ptr_personal_armor.png",
			IconDisabled = "ui/perks/ptr_personal_armor_bw.png",
			Const = "PTRPersonalArmor"
		},
		{
			ID = "perk.ptr_strength_in_numbers",
			Script = "scripts/skills/perks/perk_ptr_strength_in_numbers",
			Name = this.Const.Strings.PerkName.PTRStrengthInNumbers,
			Tooltip = this.Const.Strings.PerkDescription.PTRStrengthInNumbers,
			Icon = "ui/perks/ptr_strength_in_numbers.png",
			IconDisabled = "ui/perks/ptr_strength_in_numbers_bw.png",
			Const = "PTRStrengthInNumbers"
		},
		{
			ID = "perk.ptr_tunnel_vision",
			Script = "scripts/skills/perks/perk_ptr_tunnel_vision",
			Name = this.Const.Strings.PerkName.PTRTunnelVision,
			Tooltip = this.Const.Strings.PerkDescription.PTRTunnelVision,
			Icon = "ui/perks/ptr_tunnel_vision.png",
			IconDisabled = "ui/perks/ptr_tunnel_vision_bw.png",
			Const = "PTRTunnelVision"
		}
	];

	// Will  be moved to their appropriate trees at the end of the development cycle.
	local additionalPerks = [
		{
			ID = "perk.ptr_versatile_weapon",
			Script = "scripts/skills/perks/perk_ptr_versatile_weapon",
			Name = this.Const.Strings.PerkName.PTRVersatileWeapon,
			Tooltip = this.Const.Strings.PerkDescription.PTRVersatileWeapon,
			Icon = "ui/perks/ptr_versatile_weapon.png",
			IconDisabled = "ui/perks/ptr_versatile_weapon_bw.png",
			Const = "PTRVersatileWeapon"
		},
		{
			ID = "perk.ptr_tempo",
			Script = "scripts/skills/perks/perk_ptr_tempo",
			Name = this.Const.Strings.PerkName.PTRTempo,
			Tooltip = this.Const.Strings.PerkDescription.PTRTempo,
			Icon = "ui/perks/ptr_tempo.png",
			IconDisabled = "ui/perks/ptr_tempo_bw.png",
			Const = "PTRTempo"
		},
		{
			ID = "perk.ptr_kata",
			Script = "scripts/skills/perks/perk_ptr_kata",
			Name = this.Const.Strings.PerkName.PTRKata,
			Tooltip = this.Const.Strings.PerkDescription.PTRKata,
			Icon = "ui/perks/ptr_kata.png",
			IconDisabled = "ui/perks/ptr_kata_bw.png",
			Const = "PTRKata"
		},
		{
			ID = "perk.ptr_en_garde",
			Script = "scripts/skills/perks/perk_ptr_en_garde",
			Name = this.Const.Strings.PerkName.PTREnGarde,
			Tooltip = this.Const.Strings.PerkDescription.PTREnGarde,
			Icon = "ui/perks/ptr_en_garde.png",
			IconDisabled = "ui/perks/ptr_en_garde_bw.png",
			Const = "PTREnGarde"
		},
		{
			ID = "perk.ptr_ranged_supremacy",
			Script = "scripts/skills/perks/perk_ptr_ranged_supremacy",
			Name = this.Const.Strings.PerkName.PTRRangedSupremacy,
			Tooltip = this.Const.Strings.PerkDescription.PTRRangedSupremacy,
			Icon = "ui/perks/ptr_ranged_supremacy.png",
			IconDisabled = "ui/perks/ptr_ranged_supremacy_bw.png",
			Const = "PTRRangedSupremacy"
		},
		{
			ID = "perk.ptr_marksmanship",
			Script = "scripts/skills/perks/perk_ptr_marksmanship",
			Name = this.Const.Strings.PerkName.PTRMarksmanship,
			Tooltip = this.Const.Strings.PerkDescription.PTRMarksmanship,
			Icon = "ui/perks/ptr_marksmanship.png",
			IconDisabled = "ui/perks/ptr_marksmanship_bw.png",
			Const = "PTRMarksmanship"
		}
	];

	local perkSets = [
		axePerks,
		bowPerks,
		cleaverPerks,
		crossbowPerks,
		daggerPerks,
		flailPerks,
		hammerPerks,
		macePerks,
		polearmPerks,
		slingPerks
		spearPerks,
		staffPerks,
		swordPerks,
		throwingPerks,
		traitsPerks,
		classPerks,
		professionPerks,
		additionalPerks
	];

	foreach (perkSet in perkSets)
	{
		foreach (perk in perkSet)
		{
			this.Const.Perks.PerkDefObjects.push(perk);
		}
	}

	this.Const.Perks.PerkDefs.clear();

	foreach( i, v in this.Const.Perks.PerkDefObjects )
	{
		this.Const.Perks.PerkDefs[v.Const] <- i;
	}
}

gt.Const.PTR.hookWeaponTrees <- function()
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

	while (this.Const.Perks.BowTree.Tree.len() < 7)
	{
		this.Const.Perks.BowTree.Tree.push(emptyArray);
	}
	this.Const.Perks.BowTree.Tree[0] = [this.Const.Perks.PerkDefs.LegendMarkTarget];
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
	this.Const.Perks.CleaverTree.Tree[0] = [this.Const.Perks.PerkDefs.CripplingStrikes];
	this.Const.Perks.CleaverTree.Tree[1] = [this.Const.Perks.PerkDefs.CoupDeGrace];
	this.Const.Perks.CleaverTree.Tree[2] = [this.Const.Perks.PerkDefs.PTROpenWounds];
	this.Const.Perks.CleaverTree.Tree[3] = [this.Const.Perks.PerkDefs.SpecCleaver];
	this.Const.Perks.CleaverTree.Tree[4] = [this.Const.Perks.PerkDefs.PTRBloodlust];
	this.Const.Perks.CleaverTree.Tree[5] = [this.Const.Perks.PerkDefs.PTRBloodbath];
	this.Const.Perks.CleaverTree.Tree[6] = [this.Const.Perks.PerkDefs.PTRMauler];

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
	this.Const.Perks.StavesTree.Tree[0] = [this.Const.Perks.PerkDefs.PTREasyTarget];
	this.Const.Perks.StavesTree.Tree[1] = [this.Const.Perks.PerkDefs.LegendOnslaught];
	this.Const.Perks.StavesTree.Tree[2] = [this.Const.Perks.PerkDefs.LegendSpecStaffSkill];
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
