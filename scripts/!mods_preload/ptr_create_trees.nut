local gt = this.getroottable();

gt.Const.PTR.createStylesTrees <- function()
{
	gt.Const.Perks.OneHandedTree <- {
		ID = "OneHandedTree",
		Descriptions = [
			"one-handed weapons"
		],
		Name = "One-Handed Weapons",
		Tree = [
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTROffhandTraining
			],
			[
				gt.Const.Perks.PerkDefs.DoubleStrike	
			],
			[
				gt.Const.Perks.PerkDefs.Duelist
			],
			[
				gt.Const.Perks.PerkDefs.PTRWeaponMaster
			]
		]
	};

	gt.Const.Perks.TwoHandedTree <- {
		ID = "TwoHandedTree",
		Descriptions = [
			"two-handed weapons"
		],
		Name = "Two-Handed Weapons",
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
		Name = "Ranged Weapons",
		Tree = [
			[
				gt.Const.Perks.PerkDefs.BagsAndBelts
			],
			[
				gt.Const.Perks.PerkDefs.Bullseye
			],
			[],
			[],
			[],
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
			"took lives in exchange for gold",
			"claims to have assassinated several men of import",
			"has the eyes and temperament of a cold blooded killer"
		],
		Name = "Assassin",
		WeightMultipliers = [
			{Multiplier = -1, Tree = this.Const.Perks.CivilizationTree},
			{Multiplier = 3, Tree = this.Const.Perks.AgileTree},
			{Multiplier = 3, Tree = this.Const.Perks.FastTree},
			{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 2, Tree = this.Const.Perks.DeviousTree},
			{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 3, Tree = this.Const.Perks.TrapperClassTree},
			{Multiplier = -1, Tree = this.Const.Perks.LightArmorTree},
			{Multiplier = 5, Tree = this.Const.Perks.MediumArmorTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
			{Multiplier = -1, Tree = this.Const.Perks.OneHandedTree},
			{Multiplier = -1, Tree = this.Const.Perks.DaggerTree},
			{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
			{Multiplier = 0, Tree = this.Const.Perks.BowTree},
			{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistKnifeSkill
			],
			[],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistKnifeDamage
			],
			[
				gt.Const.Perks.PerkDefs.Rotation			
			],
			[
				gt.Const.Perks.PerkDefs.LegendTwirl
			],
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
			"worked at a butcher\'s shop",
			"butchered animals and sold meat to make a livelihood",
			"claims to be well-experienced in butchering animals"
		],
		Name = "Butcher",
		WeightMultipliers = [
			{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 5, Tree = this.Const.Perks.ChefClassTree},
			{Multiplier = -1, Tree = this.Const.Perks.OneHandedTree},
			{Multiplier = -1, Tree = this.Const.Perks.CleaverTree},
			{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
			{Multiplier = 3, Tree = this.Const.Perks.AxeTree},
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
			"worked at a blacksmith\'s shop",
			"worked metal at a smithy",
			"used to make tools and weapons at a smithy"
		],
		Name = "Blacksmith",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 3, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 1.25, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = -1, Tree = this.Const.Perks.MenderClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.MediumArmorTree},			
			{Multiplier = -1, Tree = this.Const.Perks.HammerTree},
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
			"served in the local militia",
			"was a member of local militia",
			"has had experience with some weapons serving in the militia"
		],
		Name = "Militia",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.OutlandersTree},
			{Multiplier = -1, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 0.8, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
			{Multiplier = -1, Tree = this.Const.Perks.SpearTree},
			{Multiplier = -1, Tree = this.Const.Perks.ShieldTree},			
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
		Name = "Miner",
		WeightMultipliers = [
			{Multiplier = 3, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = -1, Tree = this.Const.Perks.HammerTree},
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
		Name = "Farmer",
		WeightMultipliers = [
			{Multiplier = 3, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 3, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = -1, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 2, Tree = this.Const.Perks.TrapperClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.HoundmasterClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree},
			{Multiplier = 3, Tree = this.Const.Perks.PolearmTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.SpearTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.SlingsTree},
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
			"hunted in the forests",
			"claims to have experience in hunting animals"
		],
		Name = "Hunter",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.DeviousTree},
			{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},		
			{Multiplier = 5, Tree = this.Const.Perks.LightArmorTree},		
			{Multiplier = 9, Tree = this.Const.Perks.BowTree},
			{Multiplier = 3, Tree = this.Const.Perks.CrossbowTree},
			{Multiplier = 3, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 3, Tree = this.Const.Perks.ThrowingTree},
			{Multiplier = -1, Tree = this.Const.Perks.RangedTree},
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
			"used a shovel to earn coin",
			"dug holes and moved dirt to make a living"
		],
		Name = "Digger",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree}
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
			"fell trees in the local forest",
			"claims that chopping through men is just like chopping through trees",
			"appears to have the hands of a lumberjack"
		],
		Name = "Lumberjack",
		WeightMultipliers = [
			{Multiplier = -1, Tree = this.Const.Perks.SchratTree},
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.UnstoppableTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
			{Multiplier = 2, Tree = this.Const.Perks.ScoutClassTree},		
			{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree},
			{Multiplier = -1, Tree = this.Const.Perks.AxeTree}
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
			"collected herbs and made potions",
			"was the local herbalist of a nearby village",
			"claims to have experience with potions and herbs"
		],
		Name = "Apothecary",
		WeightMultipliers = [
			{Multiplier = 5, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 5, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 2.5, Tree = this.Const.Perks.CalmTree},
			{Multiplier = -1, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = -1, Tree = this.Const.Perks.SwordTree},
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
			"performed in a circus",
			"was a member of a troupe, performing tricks with various objects",
			"is keen to show you some of his juggling tricks"
		],
		Name = "Juggler",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
			{Multiplier = 2, Tree = this.Const.Perks.FastTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
			{Multiplier = 0.8, Tree = this.Const.Perks.CrossbowTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.PolearmTree},
			{Multiplier = 0.33, Tree = this.Const.Perks.ShieldTree},
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendHairSplitter
			],
			[
				gt.Const.Perks.PerkDefs.LegendLeap				
			],
			[
				gt.Const.Perks.PerkDefs.Rotation
			],
			[
				gt.Const.Perks.PerkDefs.LegendTwirl				
			],
			[
				gt.Const.Perks.PerkDefs.Footwork				
			],
			[
				gt.Const.Perks.PerkDefs.LegendBackflip							
			],
			[
				gt.Const.Perks.PerkDefs.LegendTumble
			]
		]
	};

	gt.Const.Perks.MinstrelProfessionTree <- {
		ID = "MinstrelProfessionTree",
		Descriptions = [
			"performed music at a tavern",
			"claims to have some skill with musical instruments",	
			"is known around these parts to be quite the musician"
		],
		Name = "Minstrel",
		WeightMultipliers = [
			{Multiplier = -1, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = -1, Tree = this.Const.Perks.EntertainerClassTree},
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistLuteSkill
			],
			[
				gt.Const.Perks.PerkDefs.LegendDaze
			],
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
			"preached the word of the gods",
			"claims to be a true servant of the gods",
			"wants nothing more in life than to serve the gods"
		],
		Name = "Holy Man",
		WeightMultipliers = [
			{Multiplier = -1, Tree = this.Const.Perks.UndeadTree},
			{Multiplier = -1, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 5, Tree = this.Const.Perks.HealerClassTree},
			{Multiplier = 5, Tree = this.Const.Perks.SergeantClassTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
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
			"took part in cultist rituals",
			"believes in strange otherworldly powers",
			"belongs to a local cult pledged to a strange god"
		],
		Name = "Cultist",
		WeightMultipliers = [
			{Multiplier = 0.25, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree},
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistNinetailsSkill

			],
			[
				gt.Const.Perks.PerkDefs.LegendSpecCultHood
			],
			[
				gt.Const.Perks.PerkDefs.LegendSpecialistNinetailsDamage				
			],
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
			"traded goods",
			"ran trading caravans",
			"earned coin through trade",
			"claims to have experience in trading and bartering"
		],
		Name = "Trader",
		WeightMultipliers = [
			{Multiplier = 5, Tree = this.Const.Perks.TalentedTree},
			{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
			{Multiplier = -1, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = -1, Tree = this.Const.Perks.ClerkClassTree}
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
			"is a dreg of society",
			"looks utterly beaten down",
			"is a pitiful pile of flesh and bones"
		],
		Name = "Pauper",
		WeightMultipliers = [
			{Multiplier = 0.75, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
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
			"did hard labor to make a living",
			"has strong, calloused hands, just like those of a laborer"
		],
		Name = "Laborer",
		WeightMultipliers = [
			{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
			{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
			{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
			{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.PTRFruitsOfLabor
			],
			[],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRWearsItWell
			],
			[
				gt.Const.Perks.PerkDefs.PTRHaleAndHearty
			],
			[]
		]
	};

	gt.Const.Perks.ServiceProfessionTree <- {
		ID = "ServiceProfessionTree",
		Descriptions = [
			"performed and provided services"
		],
		Name = "Service",
		WeightMultipliers = [
			{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
			{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 0.75, Tree = this.Const.Perks.UnstoppableTree},
			{Multiplier = 3, Tree = this.Const.Perks.ClerkClassTree}
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
			"raided villages and caravans",
			"is a well-known raider and looter in this area"
		],
		Name = "Raider",
		WeightMultipliers = [
			{Multiplier = 2, Tree = this.Const.Perks.CaravanTree},
			{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
			{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
			{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRMenacing
			],
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRBully
			],
			[]
		]
	};

	gt.Const.Perks.SoldierProfessionTree <- {
		ID = "SoldierProfessionTree",
		Descriptions = [
			"served in the military",
			"has had professional military experience",
			"claims to have served in a professional army"
		],
		Name = "Soldier",
		WeightMultipliers = [
			{Multiplier = -1, Tree = this.Const.Perks.TrainedTree},
			{Multiplier = 2, Tree = this.Const.Perks.ShieldTree},
		],
		Tree = [
			[],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRExudeConfidence
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRPatternRecognition
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRProfessional
			]
		]
	};

	gt.Const.Perks.WildlingProfessionTree <- {
		ID = "WildlingProfessionTree",
		Descriptions = [
			"hails from the wild",
			"is wild and savage",
			"looks like a feral predator"
		],
		Name = "Wildling",
		WeightMultipliers = [
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.Pathfinder
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRSavageStrength
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRBestialVigor
			],
			[
				gt.Const.Perks.PerkDefs.LegendGatherer
			],
			[
				gt.Const.Perks.PerkDefs.PTRFeralRage
			]
		]
	};

	gt.Const.Perks.NobleProfessionTree <- {
		ID = "NobleProfessionTree",
		Descriptions = [
			"is of noble birth",
			"hails from a noble family",
			"has noble blood in his veins"
		],
		Name = "Noble",
		WeightMultipliers = [
		],
		Tree = [
			[
				gt.Const.Perks.PerkDefs.PTRFamilyTies
			],
			[],
			[
				gt.Const.Perks.PerkDefs.PTRFamilyPride
			],
			[],
			[],
			[],
			[]
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
			gt.Const.Perks.FistsClassTree,		
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
			gt.Const.Perks.WildlingProfessionTree,
			gt.Const.Perks.NobleProfessionTree
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

gt.Const.PTR.createSpecialTrees <- function()
{
	gt.Const.Perks.SpecialTrees <- {
		Tree = [],
		Perks = [],

		function addSpecialPerk( _chance, _perk, _tier, _desc, _func = null )
		{
			this.Perks.push({
				Perk = _perk,
				Chance = _chance,
				Desc = "[color=" + this.Const.UI.Color.NegativeValue + "]" + _desc + "[/color]"
				Func = _func != null ? _func : @(a, b) _chance,
				Row = _tier - 1
			});

			local i = 0;			
			while (true)
			{
				local name = "Special" + i;
				if (!(name in this.Const.Perks))
				{
					this.Const.Perks[name] <- {
						ID = name,
						Descriptions = [""],
						Name = "Special Perks",
						Tree = [
							[], [], [], [], [], [], []
						]
					};

					this.Const.Perks.SpecialTrees.Tree.push(this.Const.Perks[name]);
				}

				if (this.Const.Perks[name].Tree[_tier-1].len() > 1)
				{
					local totalPerksInTree = 0;					
					foreach (row in this.Const.Perks[name].Tree)
					{
						totalPerksInTree += row.len();
					}
					if (totalPerksInTree >= 7)
					{
						i++;
						continue;					
					}
				}

				this.Const.Perks[name].Tree[_tier-1].push(_perk);
				break;
			}
		}

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

	gt.Const.Perks.SpecialTrees.addSpecialPerk(25, gt.Const.Perks.PerkDefs.BFFencer, 7, "Has all the makings of a capable fencer.", function( _player, _chance ) {
		if (!_player.getBackground().hasPerkGroup(::Const.Perks.SwordTree))
		{
			return 0;
		}

		local talents = _player.getTalents();

		_chance = talents.len() == 0 ? 0 : _chance * talents[this.Const.Attributes.Initiative] * talents[this.Const.Attributes.MeleeSkill];

		if (_player.getInitiative() + (this.Math.max(0, _player.getBaseProperties().Stamina - _player.getCurrentProperties().Stamina)) < 100)
		{
			return 0;
		}

		if (_background.hasPerkGroup(::Const.Perks.LightArmorTree)) _chance *= 2;
		if (_background.hasPerkGroup(::Const.Perks.HeavyArmorTree)) _chance /= 2;

		return _chance;		
	});

	gt.Const.Perks.SpecialTrees.addSpecialPerk(2, gt.Const.Perks.PerkDefs.PTRRisingStar, 7, "Has the talent to rise and shine above all others!", function( _background, _chance ) {
		if (_background.hasPerkGroup(::Const.Perks.TalentedTree)) _chance *= 2;
		local traits = _background.getContainer().getAllSkillsOfType(this.Const.SkillType.Trait);
		foreach (trait in traits)
		{
			switch (trait.getID())
			{
				case "trait.bright":
				case "trait.ambitious":
				case "trait.natural":
				case "trait.determined":
				case "trait.dexterous":
				case "trait.lucky":
				case "trait.unpredictable":
					_chance *= 2;
					break;

				case "trait.dumb":
				case "trait.slack":
				case "trait.frail":
				case "trait.clumsy":
				case "trait.drunkard":
				case "trait.fainthearted":
				case "trait.insecure":
					_chance /= 2;
					break;
			}
		}

		return _chance;
	});

	gt.Const.Perks.SpecialTrees.addSpecialPerk(10, gt.Const.Perks.PerkDefs.LegendBigGameHunter, 7, "Has a penchant for hunting big game.", function( _player, _chance ) {
		if (!_player.getBackground().hasPerkGroup(::Const.Perks.RangedTree) || !_player.getBackground().hasPerkGroup(::Const.Perks.BowTree) || !_player.getBackground().hasPerkGroup(::Const.Perks.CrossbowTree))
		{
			return 0;
		}

		local talents = _player.getTalents();
		if (talents.len() == 0 || talents[this.Const.Attributes.RangedSkill] < 2)
		{
			return 0;
		}
		else
		{
			_chance *= talents[this.Const.Attributes.RangedSkill];
		}

		local traits = _background.getContainer().getAllSkillsOfType(this.Const.SkillType.Trait);
		foreach (trait in traits)
		{
			switch (trait.getID())
			{
				case "trait.fear_beasts":
					return 0;
				
				case "trait.hate_beasts":
					_chance *= 4;
					break;

				case "trait.eagle_eyes":
				case "trait.ambitious":
				case "trait.determined":
				case "trait.cocky":
				case "trait.brave":
				case "trait.fearless":
					_chance *= 2;
					break;

				case "trait.slack":
				case "trait.fainthearted":
				case "trait.insecure":
					_chance /= 2;
					break;
			}
		}

		return _chance;
	});

	gt.Const.Perks.SpecialTrees.addSpecialPerk(5, gt.Const.Perks.PerkDefs.PTRMarksmanship, 7, "Has the talent to become a formidable marksman.", function( _player, _chance ) {
		if (!_player.getBackground().hasPerkGroup(::Const.Perks.RangedTree))
		{
			return 0;
		}

		local talents = _player.getTalents();
		if (talents.len() == 0 || talents[this.Const.Attributes.RangedSkill] < 2)
		{
			return 0;
		}
		else
		{
			_chance *= talents[this.Const.Attributes.RangedSkill];
		}

		local traits = _background.getContainer().getAllSkillsOfType(this.Const.SkillType.Trait);
		foreach (trait in traits)
		{
			switch (trait.getID())
			{
				case "trait.clumsy":
					return 0;
				
				case "trait.sureshot":
					return -1;

				case "trait.eagle_eyes":
				case "trait.steady_hands":
					_chance *= 4;
					break;

				
				case "trait.lucky":
				case "trait.unpredictable":
					_chance *= 2;
					break;
				
				case "trait.drunkard":
				case "trait.predictable":
				case "trait.short_sighted":
					_chance /= 2;
					break;
			}
		}

		return _chance;
	});

	gt.Const.Perks.SpecialTrees.addSpecialPerk(25, gt.Const.Perks.PerkDefs.PTRManOfSteel, 7, "Is tough as if made of steel!", function( _player, _chance ) {
		if (!_player.getBackground().hasPerkGroup(::Const.Perks.HeavyArmorTree))
		{
			return 0;
		}

		local talents = _player.getTalents();
		if (talents.len() == 0 || talents[this.Const.Attributes.Hitpoints] < 1)
		{
			return 0;
		}
		else
		{
			_chance *= talents[this.Const.Attributes.Hitpoints];
		}

		local traits = _background.getContainer().getAllSkillsOfType(this.Const.SkillType.Trait);
		foreach (trait in traits)
		{
			switch (trait.getID())
			{
				case "trait.frail":
				case "trait.fragile":
					return 0;

				case "trait.iron_jaw":
				case "trait.tough":
					return -1;
				
				case "trait.deathwish":
				case "trait.fat":
				case "trait.firm":
				case "trait.heavy":
				case "trait.huge":
				case "trait.strong":
					_chance *= 2;
					break;
				
				case "trait.light":
				case "trait.tiny":
				case "trait.ailing":
				case "trait.bleeder":
					_chance /= 2;
					break;
			}
		}
		
		return _chance;
	});
}
