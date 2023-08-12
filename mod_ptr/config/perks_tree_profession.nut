::Const.Perks.AssassinProfessionTree <- {
	ID = "AssassinProfessionTree",
	Descriptions = [
		"took lives in exchange for gold",
		"claims to have assassinated several men of import",
		"has the eyes and temperament of a cold blooded killer"
	],
	Name = "Assassin",
	PerkGroupMultipliers = [
		[-1, ::Const.Perks.CivilizationTree],
		[3, ::Const.Perks.AgileTree],
		[3, ::Const.Perks.FastTree],
		[2, ::Const.Perks.ViciousTree],
		[2, ::Const.Perks.DeviousTree],
		[0, ::Const.Perks.OrganisedTree],
		[0.5, ::Const.Perks.LargeTree],
		[0.5, ::Const.Perks.SturdyTree],
		[3, ::Const.Perks.TrapperClassTree],
		[-1, ::Const.Perks.LightArmorTree],
		[5, ::Const.Perks.MediumArmorTree],
		[0.5, ::Const.Perks.ShieldTree],
		[-1, ::Const.Perks.OneHandedTree],
		[-1, ::Const.Perks.DaggerTree],
		[2, ::Const.Perks.SwordTree],
		[0, ::Const.Perks.BowTree],
		[0, ::Const.Perks.SlingTree],
		[0, ::Const.Perks.CrossbowTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendKnifeplay
		],
		[
			::Const.Perks.PerkDefs.LegendOpportunist
		],
		[
			::Const.Perks.PerkDefs.LegendPrepared
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendLurker
		],
		[
			::Const.Perks.PerkDefs.LegendNightRaider
		],
		[
			::Const.Perks.PerkDefs.LegendAssassinate
		]
	]
};

::Const.Perks.ButcherProfessionTree <- {
	ID = "ButcherProfessionTree",
	Descriptions = [
		"worked at a butcher\'s shop",
		"butchered animals and sold meat to make a livelihood",
		"claims to be well-experienced in butchering animals"
	],
	Name = "Butcher",
	PerkGroupMultipliers = [
		[3, ::Const.Perks.ViciousTree],
		[2, ::Const.Perks.OrganisedTree],
		[5, ::Const.Perks.ChefClassTree],
		[-1, ::Const.Perks.OneHandedTree],
		[-1, ::Const.Perks.CleaverTree],
		[2, ::Const.Perks.SwordTree],
		[3, ::Const.Perks.AxeTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistButcherSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistButcherDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendPrepareBleed
		],
		[
			::Const.Perks.PerkDefs.LegendPrepareGraze
		],
		[
			::Const.Perks.PerkDefs.LegendSlaughter
		]
	]
};

::Const.Perks.BlacksmithProfessionTree <- {
	ID = "BlacksmithProfessionTree",
	Descriptions = [
		"worked at a blacksmith\'s shop",
		"worked metal at a smithy",
		"used to make tools and weapons at a smithy"
	],
	Name = "Blacksmith",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.LargeTree],
		[3, ::Const.Perks.OrganisedTree],
		[1.25, ::Const.Perks.ResilientTree],
		[2, ::Const.Perks.SturdyTree],
		[-1, ::Const.Perks.MenderClassTree],
		[2, ::Const.Perks.HeavyArmorTree],
		[1.5, ::Const.Perks.MediumArmorTree],			
		[-1, ::Const.Perks.HammerTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistHammerSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistHammerDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.SunderingStrikes
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRPersonalArmor
		]
	]
};

::Const.Perks.MilitiaProfessionTree <- {
	ID = "MilitiaProfessionTree",
	Descriptions = [
		"served in the local militia",
		"was a member of local militia",
		"has had experience with some weapons serving in the militia"
	],
	Name = "Militia",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.OutlandersTree],
		[-1, ::Const.Perks.TrainedTree],
		[0.8, ::Const.Perks.HealerClassTree],
		[2, ::Const.Perks.TacticianClassTree],
		[2, ::Const.Perks.LightArmorTree],
		[-1, ::Const.Perks.SpearTree],
		[-1, ::Const.Perks.ShieldTree]	
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistMilitiaSkill
		],
		[
			::Const.Perks.PerkDefs.PTRStrengthInNumbers
		],
		[
			::Const.Perks.PerkDefs.LegendSpecialistMilitiaDamage
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.MinerProfessionTree <- {
	ID = "MinerProfessionTree",
	Descriptions = [
		"worked at a quarry",
		"worked in a mine"
	],
	Name = "Miner",
	PerkGroupMultipliers = [
		[3, ::Const.Perks.LargeTree],
		[2, ::Const.Perks.ResilientTree],
		[3, ::Const.Perks.SturdyTree],
		[-1, ::Const.Perks.HammerTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistPickaxeSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistPickaxeDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.SunderingStrikes
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRTunnelVision
		]
	]
};

::Const.Perks.FarmerProfessionTree <- {
	ID = "FarmerProfessionTree",
	Descriptions = [
		"worked at a ranch",
		"ploughed the fields"
	],
	Name = "Farmer",
	PerkGroupMultipliers = [
		[3, ::Const.Perks.LargeTree],
		[2, ::Const.Perks.ResilientTree],
		[3, ::Const.Perks.SturdyTree],
		[-1, ::Const.Perks.OrganisedTree],
		[2, ::Const.Perks.TrapperClassTree],
		[2, ::Const.Perks.ChefClassTree],
		[2, ::Const.Perks.MenderClassTree],
		[2, ::Const.Perks.HoundmasterClassTree],
		[2, ::Const.Perks.TwoHandedTree],
		[3, ::Const.Perks.PolearmTree],
		[1.5, ::Const.Perks.SpearTree],
		[1.5, ::Const.Perks.SlingTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistPitchforkSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistPitchforkDamage
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.HunterProfessionTree <- {
	ID = "HunterProfessionTree",
	Descriptions = [
		"hunted in the forests",
		"claims to have experience in hunting animals"
	],
	Name = "Hunter",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.DeviousTree],
		[0.66, ::Const.Perks.ShieldTree],		
		[5, ::Const.Perks.LightArmorTree],		
		[9, ::Const.Perks.BowTree],
		[3, ::Const.Perks.CrossbowTree],
		[3, ::Const.Perks.SlingTree],
		[3, ::Const.Perks.ThrowingTree],
		[-1, ::Const.Perks.RangedTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistShortbowSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistShortbowDamage
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.DiggerProfessionTree <- {
	ID = "DiggerProfessionTree",
	Descriptions = [
		"used a shovel to earn coin",
		"dug holes and moved dirt to make a living"
	],
	Name = "Digger",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.LargeTree],
		[1.5, ::Const.Perks.ResilientTree],
		[2, ::Const.Perks.SturdyTree],
		[0.5, ::Const.Perks.ClerkClassTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistShovelSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistShovelDamage
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.LumberjackProfessionTree <- {
	ID = "LumberjackProfessionTree",
	Descriptions = [
		"fell trees in the local forest",
		"claims that chopping through men is just like chopping through trees",
		"appears to have the hands of a lumberjack"
	],
	Name = "Lumberjack",
	PerkGroupMultipliers = [
		[-1, ::Const.Perks.SchratTree],
		[2, ::Const.Perks.LargeTree],
		[1.5, ::Const.Perks.ResilientTree],
		[2, ::Const.Perks.SturdyTree],
		[1.5, ::Const.Perks.UnstoppableTree],
		[0.5, ::Const.Perks.ClerkClassTree],
		[2, ::Const.Perks.ScoutClassTree],		
		[2, ::Const.Perks.TwoHandedTree],
		[-1, ::Const.Perks.AxeTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistWoodaxeSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistWoodaxeDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendWoodworking
		],
		[],
		[]
	]
};

::Const.Perks.ApothecaryProfessionTree <- {
	ID = "ApothecaryProfessionTree",
	Descriptions = [
		"collected herbs and made potions",
		"was the local herbalist of a nearby village",
		"claims to have experience with potions and herbs"
	],
	Name = "Apothecary",
	PerkGroupMultipliers = [
		[5, ::Const.Perks.OrganisedTree],
		[5, ::Const.Perks.TalentedTree],
		[2.5, ::Const.Perks.CalmTree],
		[-1, ::Const.Perks.HealerClassTree],
		[-1, ::Const.Perks.SwordTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistSickleSkill
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendSpecialistSickleDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendGatherer
		],
		[
			::Const.Perks.PerkDefs.LegendHerbcraft
		],
		[
			::Const.Perks.PerkDefs.LegendPotionBrewer
		]
	]
};

::Const.Perks.JugglerProfessionTree <- {
	ID = "JugglerProfessionTree",
	Descriptions = [
		"performed in a circus",
		"was a member of a troupe, performing tricks with various objects",
		"is keen to show you some of his juggling tricks"
	],
	Name = "Juggler",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.AgileTree],
		[2, ::Const.Perks.FastTree],
		[0.5, ::Const.Perks.SlingTree],
		[0.8, ::Const.Perks.CrossbowTree],
		[0.75, ::Const.Perks.PolearmTree],
		[0.33, ::Const.Perks.ShieldTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendHairSplitter
		],
		[
			::Const.Perks.PerkDefs.LegendLeap
		],
		[
			::Const.Perks.PerkDefs.Rotation
		],
		[
			::Const.Perks.PerkDefs.LegendTwirl
		],
		[
			::Const.Perks.PerkDefs.Footwork
		],
		[
			::Const.Perks.PerkDefs.LegendBackflip
		],
		[
			::Const.Perks.PerkDefs.LegendTumble
		]
	]
};

::Const.Perks.MinstrelProfessionTree <- {
	ID = "MinstrelProfessionTree",
	Descriptions = [
		"performed music at a tavern",
		"claims to have some skill with musical instruments",	
		"is known around these parts to be quite the musician"
	],
	Name = "Minstrel",
	PerkGroupMultipliers = [
		[-1, ::Const.Perks.TalentedTree],
		[-1, ::Const.Perks.EntertainerClassTree]
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistLuteSkill
		],
		[
			::Const.Perks.PerkDefs.LegendDaze
		],
		[
			::Const.Perks.PerkDefs.LegendSpecialistLuteDamage
		],
		[
			::Const.Perks.PerkDefs.LegendEntice
		],
		[
			::Const.Perks.PerkDefs.LegendPush
		],
		[
			::Const.Perks.PerkDefs.LegendDrumsOfWar
		],
		[
			::Const.Perks.PerkDefs.LegendDrumsOfLife
		]
	]
};

::Const.Perks.HolyManProfessionTree <- {
	ID = "HolyManProfessionTree",
	Descriptions = [
		"preached the word of the gods",
		"claims to be a true servant of the gods",
		"wants nothing more in life than to serve the gods"
	],
	Name = "Holy Man",
	PerkGroupMultipliers = [
		[-1, ::Const.Perks.UndeadTree],
		[-1, ::Const.Perks.CalmTree],
		[5, ::Const.Perks.HealerClassTree],
		[5, ::Const.Perks.SergeantClassTree],
		[0.25, ::Const.Perks.DeviousTree],
	],
	Tree = [
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendTrueBeliever
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendPrayerOfFaith
		],
		[
			::Const.Perks.PerkDefs.LegendPrayerOfLife
		],
		[
			::Const.Perks.PerkDefs.LegendHolyFlame
		]
	]
};

::Const.Perks.CultistProfessionTree <- {
	ID = "CultistProfessionTree",
	Descriptions = [
		"took part in cultist rituals",
		"believes in strange otherworldly powers",
		"belongs to a local cult pledged to a strange god"
	],
	Name = "Cultist",
	PerkGroupMultipliers = [
		[0.25, ::Const.Perks.TrainedTree],
		[0, ::Const.Perks.EntertainerClassTree],
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.LegendSpecialistNinetailsSkill

		],
		[
			::Const.Perks.PerkDefs.LegendSpecCultHood
		],
		[
			::Const.Perks.PerkDefs.LegendSpecialistNinetailsDamage
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendPrepareGraze
		],
		[
			::Const.Perks.PerkDefs.LegendSpecCultArmor
		],
		[
			::Const.Perks.PerkDefs.LegendLacerate
		]
	]
};

::Const.Perks.TraderProfessionTree <- {
	ID = "TraderProfessionTree",
	Descriptions = [
		"traded goods",
		"ran trading caravans",
		"earned coin through trade",
		"claims to have experience in trading and bartering"
	],
	Name = "Trader",
	PerkGroupMultipliers = [
		[5, ::Const.Perks.TalentedTree],
		[1.5, ::Const.Perks.CalmTree],
		[-1, ::Const.Perks.OrganisedTree],
		[-1, ::Const.Perks.ClerkClassTree]
	],
	Tree = [
		[],
		[],
		[
			::Const.Perks.PerkDefs.LegendBarterConvincing
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendBarterTrustworthy
		],
		[],
		[
			::Const.Perks.PerkDefs.LegendBarterGreed
		]
	]
};

::Const.Perks.PauperProfessionTree <- {
	ID = "PauperProfessionTree",
	Descriptions = [
		"is a dreg of society",
		"looks utterly beaten down",
		"is a pitiful pile of flesh and bones"
	],
	Name = "Pauper",
	PerkGroupMultipliers = [
		[0.75, ::Const.Perks.SturdyTree],
		[0.75, ::Const.Perks.LargeTree],
		[2, ::Const.Perks.ResilientTree],
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.PTRPromisedPotential
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRPunchingBag
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRTraumaSurvivor
		],
		[],
		[]
	]
};

::Const.Perks.LaborerProfessionTree <- {
	ID = "LaborerProfessionTree",
	Descriptions = [
		"did hard labor to make a living",
		"has strong, calloused hands, just like those of a laborer"
	],
	Name = "Laborer",
	PerkGroupMultipliers = [
		[1.5, ::Const.Perks.ResilientTree],
		[2, ::Const.Perks.LargeTree],
		[2, ::Const.Perks.SturdyTree],
		[0.5, ::Const.Perks.TalentedTree],
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.PTRFruitsOfLabor
		],
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTRWearsItWell
		],
		[
			::Const.Perks.PerkDefs.PTRHaleAndHearty
		],
		[]
	]
};

::Const.Perks.ServiceProfessionTree <- {
	ID = "ServiceProfessionTree",
	Descriptions = [
		"performed and provided services"
	],
	Name = "Service",
	PerkGroupMultipliers = [
		[1.5, ::Const.Perks.CalmTree],
		[2, ::Const.Perks.OrganisedTree],
		[0.75, ::Const.Perks.ViciousTree],
		[0.75, ::Const.Perks.UnstoppableTree],
		[3, ::Const.Perks.ClerkClassTree]
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

::Const.Perks.RaiderProfessionTree <- {
	ID = "RaiderProfessionTree",
	Descriptions = [
		"raided villages and caravans",
		"is a well-known raider and looter in this area"
	],
	Name = "Raider",
	PerkGroupMultipliers = [
		[2, ::Const.Perks.CaravanTree],
		[2, ::Const.Perks.NoblesTree],
		[3, ::Const.Perks.ViciousTree],
		[0.25, ::Const.Perks.CalmTree]
	],
	Tree = [
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTRMenacing
		],
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTRBully
		],
		[]
	]
};

::Const.Perks.SoldierProfessionTree <- {
	ID = "SoldierProfessionTree",
	Descriptions = [
		"served in the military",
		"has had professional military experience",
		"claims to have served in a professional army"
	],
	Name = "Soldier",
	PerkGroupMultipliers = [
		[-1, ::Const.Perks.TrainedTree],
		[2, ::Const.Perks.ShieldTree],
	],
	Tree = [
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTRExudeConfidence
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRPatternRecognition
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRProfessional
		]
	]
};

::Const.Perks.WildlingProfessionTree <- {
	ID = "WildlingProfessionTree",
	Descriptions = [
		"hails from the wild",
		"is wild and savage",
		"looks like a feral predator"
	],
	Name = "Wildling",
	PerkGroupMultipliers = [
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.Pathfinder
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRSavageStrength
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRBestialVigor
		],
		[
			::Const.Perks.PerkDefs.LegendGatherer
		],
		[
			::Const.Perks.PerkDefs.PTRFeralRage
		]
	]
};

::Const.Perks.NobleProfessionTree <- {
	ID = "NobleProfessionTree",
	Descriptions = [
		"is of noble birth",
		"hails from a noble family",
		"has noble blood in his veins"
	],
	Name = "Noble",
	PerkGroupMultipliers = [
	],
	Tree = [
		[
			::Const.Perks.PerkDefs.PTRFamilyTies
		],
		[],
		[
			::Const.Perks.PerkDefs.PTRFamilyPride
		],
		[],
		[],
		[],
		[]
	]
};

::Const.Perks.SwordmasterProfessionTree <- {
	ID = "SwordmasterProfessionTree",
	Descriptions = [
		"is a masterful swordsman",
		"is a renowned swordmaster",
		"is a master of the sword"
	],
	Name = "Swordmaster",
	PerkGroupMultipliers = [
	],
	Tree = [
		[],
		[],
		[],
		[
			::Const.Perks.PerkDefs.PTRSwordmasterBladeDancer,
			::Const.Perks.PerkDefs.PTRSwordmasterReaper,
			::Const.Perks.PerkDefs.PTRSwordmasterMetzger,
			::Const.Perks.PerkDefs.PTRSwordmasterVersatileSwordsman,
			::Const.Perks.PerkDefs.PTRSwordmasterPrecise,
			::Const.Perks.PerkDefs.PTRSwordmasterGrappler,
			::Const.Perks.PerkDefs.PTRSwordmasterJuggernaut
		],
		[],
		[],
		[]
	]
};

::Const.Perks.ProfessionTrees <- {
	Tree = [
		::Const.Perks.AssassinProfessionTree,
		::Const.Perks.ButcherProfessionTree,
		::Const.Perks.BlacksmithProfessionTree,
		::Const.Perks.MilitiaProfessionTree,
		::Const.Perks.MinerProfessionTree,
		::Const.Perks.FarmerProfessionTree,
		::Const.Perks.FistsClassTree,
		::Const.Perks.HunterProfessionTree,
		::Const.Perks.DiggerProfessionTree,
		::Const.Perks.LumberjackProfessionTree,
		::Const.Perks.ApothecaryProfessionTree,
		::Const.Perks.JugglerProfessionTree,
		::Const.Perks.MinstrelProfessionTree,
		::Const.Perks.HolyManProfessionTree,
		::Const.Perks.CultistProfessionTree,
		::Const.Perks.TraderProfessionTree,
		::Const.Perks.PauperProfessionTree,
		::Const.Perks.LaborerProfessionTree,
		::Const.Perks.ServiceProfessionTree,
		::Const.Perks.RaiderProfessionTree,
		::Const.Perks.SoldierProfessionTree,
		::Const.Perks.WildlingProfessionTree,
		::Const.Perks.NobleProfessionTree,
		::Const.Perks.SwordmasterProfessionTree,
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
