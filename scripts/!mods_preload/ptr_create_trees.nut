local gt = this.getroottable();

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
			[
				gt.Const.Perks.PerkDefs.PTRExploitOpening
			],
			[
				gt.Const.Perks.PerkDefs.Duelist
			],
			[
				gt.Const.Perks.PerkDefs.PTROffhandTraining
			]
		]
	};

	gt.Const.Perks.TwoHandedTree <- {
		ID = "TwoHandedTree",
		Descriptions = [
			"two-handed weapons"
		],
		Tree = [
			[],
			[
				gt.Const.Perks.PerkDefs.PTRBloodyHarvest
			],
			[
				gt.Const.Perks.PerkDefs.PTRFormidableApproach
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
			{Multiplier = 3, Tree = this.Const.Perks.AgileTree},
			{Multiplier = 3, Tree = this.Const.Perks.FastTree},
			{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 3, Tree = this.Const.Perks.DeviousTree},
			{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.TrapperClassTree},
			{Multiplier = 1000, Tree = this.Const.Perks.LightArmorTree},
			{Multiplier = 5, Tree = this.Const.Perks.MediumArmorTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
			{Multiplier = 1000, Tree = this.Const.Perks.OneHandedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.DaggerTree},
			{Multiplier = 3.33, Tree = this.Const.Perks.SwordTree},
			{Multiplier = 0, Tree = this.Const.Perks.BowTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.CrossbowTree},
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
			{Multiplier = 5, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 5, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 5, Tree = this.Const.Perks.ChefClassTree},
			{Multiplier = 1000, Tree = this.Const.Perks.OneHandedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.CleaverTree},
			{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
			{Multiplier = 4, Tree = this.Const.Perks.AxeTree},
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
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 5, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 1000, Tree = this.Const.Perks.MenderClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
			{Multiplier = 1000, Tree = this.Const.Perks.HammerTree},
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
			{Multiplier = 10, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 0.8, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = 0.8, Tree = this.Const.Perks.ClerkClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
			{Multiplier = 1000, Tree = this.Const.Perks.SpearTree},
			{Multiplier = 1000, Tree = this.Const.Perks.ShieldTree},
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistMilitiaSkill
			],
			[
				gt.Const.Perks.PerkDefs.PTRStrengthInNumbers
			],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistMilitiaDamage
			],
			[],
			[],
			[],
			[]
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
			{Multiplier = 3, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 3, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
			{Multiplier = 1000, Tree = this.Const.Perks.HammerTree},
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
			{Multiplier = 3, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 3, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 1000, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.TrapperClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.HoundmasterClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree},
			{Multiplier = 5, Tree = this.Const.Perks.PolearmTree},
			{Multiplier = 2, Tree = this.Const.Perks.SpearTree},
			{Multiplier = 2, Tree = this.Const.Perks.SlingsTree},
		],
		ExpertiseMultipliers = [
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
			{Multiplier = 1000, Tree = this.Const.Perks.BowTree},
			{Multiplier = 1000, Tree = this.Const.Perks.CrossbowTree},
			{Multiplier = 5, Tree = this.Const.Perks.LightArmorTree},
			{Multiplier = 2, Tree = this.Const.Perks.DeviousTree},
			{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
			{Multiplier = 1000, Tree = this.Const.Perks.RangedTree},
			{Multiplier = 2, Tree = this.Const.Perks.DaggerTree},
			{Multiplier = 3, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 3, Tree = this.Const.Perks.ThrowingTree},
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
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree}
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
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree}
			{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.AxeTree}
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
			{Multiplier = 10, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 10, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 5, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 1000, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = 1000, Tree = this.Const.Perks.CleaverTree},
			{Multiplier = 1000, Tree = this.Const.Perks.SwordTree},
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
			{Multiplier = 5, Tree = this.Const.Perks.AgileTree},
			{Multiplier = 5, Tree = this.Const.Perks.FastTree},
			{Multiplier = 3, Tree = this.Const.Perks.OneHandedTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.CrossbowTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.PolearmTree},
			{Multiplier = 2, Tree = this.Const.Perks.StavesTree},
			{Multiplier = 0.33, Tree = this.Const.Perks.ShieldTree},
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
			{Multiplier = 1000, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.SergeantClassTree},
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
			{Multiplier = 1000, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 5, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = 5, Tree = this.Const.Perks.SergeantClassTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
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
			{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.CleaverTree},
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
			{Multiplier = 10, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 1000, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 1000, Tree = this.Const.Perks.ClerkClassTree}
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

	gt.Const.Perks.PauperProfessionTree <- {
		ID = "PauperProfessionTree",
		Descriptions = [
			"is a dreg of society"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
			{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 3, Tree = this.Const.Perks.ResilientTree},
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.PTRPromisedPotential
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRPunchingBag
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRTraumaSurvivor
			],
			[],
			[]
		]
	};

	gt.Const.Perks.LaborerProfessionTree <- {
		ID = "LaborerProfessionTree",
		Descriptions = [
			"earned his bread with hard labor"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 3, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree}
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.PTRFruitsOfLabor
			],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.ServiceProfessionTree <- {
		ID = "ServiceProfessionTree",
		Descriptions = [
			"performed services"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 3, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.UnstoppableTree},
			{Multiplier = 3, Tree = this.Const.Perks.ClerkClassTree}
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.RaiderProfessionTree <- {
		ID = "RaiderProfessionTree",
		Descriptions = [
			"raided villages and caravans"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
			{Multiplier = 5, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[],
			[],
			[],
			[],
			[],
			[]
		]
	};

	gt.Const.Perks.SoldierProfessionTree <- {
		ID = "SoldierProfessionTree",
		Descriptions = [
			"served in the military"
		],
		SelfExpertiseMultiplier = this.Const.Perks.Expertise.High,
		WeightMultipliers = [
			{Multiplier = 1000, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 2, Tree = this.Const.Perks.ShieldTree},
		],
		ExpertiseMultipliers = [

		],
		Tree = [
			[],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRExudeConfidence
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRProfessional
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
			gt.Const.Perks.TraderProfessionTree,
			gt.Const.Perks.PauperProfessionTree,
			gt.Const.Perks.LaborerProfessionTree,
			gt.Const.Perks.ServiceProfessionTree,
			gt.Const.Perks.RaiderProfessionTree,
			gt.Const.Perks.SoldierProfessionTree,
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
