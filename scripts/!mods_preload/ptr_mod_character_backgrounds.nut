local gt = this.getroottable();

gt.Const.PTR.modCharacterBackgrounds <- function()
{
	::mods_hookNewObject("skills/backgrounds/adventurous_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{ Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree },
				{ Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree },
				{ Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree },
				{ Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree },
				{ Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree },
				{ Multiplier = 2, Tree = this.Const.Perks.PolearmTree },
				{ Multiplier = 0.5, Tree = this.Const.Perks.BowTree },
				{ Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree },
				{ Multiplier = 0, Tree = this.Const.Perks.SlingsTree }
				{ Multiplier = 0.5, Tree = this.Const.Perks.SpearTree }
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Defense = [
				[
					{Weight = 50, Tree = this.Const.Perks.MediumArmorTree},
					{Weight = 50, Tree = this.Const.Perks.HeavyArmorTree}
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/apprentice_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{ Multiplier = 5, Tree = this.Const.Perks.OrganisedTree },
				{ Multiplier = 1.5, Tree = this.Const.Perks.ClerkClassTree }
			],
			Profession = [
				[
					{Weight = 12, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.TraderProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.ServiceProfessionTree},
					{Weight = 28, Tree = null},
				]
			],
			Traits = [
				[
					{Weight = 75, Tree = this.Const.Perks.TalentedTree},
					{Weight = 25, Tree = null},
				]
			],
			Defense = [
				[
					{Weight = 33, Tree = this.Const.Perks.MediumArmorTree},
					{Weight = 33, Tree = this.Const.Perks.HeavyArmorTree},
					{Weight = 33, Tree = this.Const.Perks.LightArmorTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/assassin_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.AssassinProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/assassin_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.AssassinProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/barbarian_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.AxeTree},
				{Multiplier = 2, Tree = this.Const.Perks.HammerTree},
				{Multiplier = 2, Tree = this.Const.Perks.MaceTree},
				{Multiplier = 2, Tree = this.Const.Perks.CleaverTree},
				{Multiplier = 0.4, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.StavesTree}
			],
			Profession = [
				[
					{Weight = 80, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.HunterProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.ButcherProfessionTree}
				]
			],
			Traits = [
				[
					{Weight = 50, Tree = this.Const.Perks.LargeTree},
					{Weight = 50, Tree = this.Const.Perks.AgileTree}
				],
				[
					{Weight = 50, Tree = this.Const.Perks.SturdyTree},
					{Weight = 50, Tree = this.Const.Perks.FastTree}
				]
			],
			Styles = [
				[
					{Weight = 100, Tree = this.Const.Perks.OneHandedTree}
				],
				[
					{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/bastard_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree}
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/beast_hunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FlailTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.HammerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.MaceTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.ApothecaryProfessionTree},
				{Multiplier = 0, Tree = this.Const.Perks.MinstrelProfessionTree}
			],
			Profession = [
				[
					{Weight = 90, Tree = null},
					{Weight = 10, Tree = this.Const.Perks.RandomTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SpearTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/beggar_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ClerkClassTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/beggar_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ClerkClassTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/belly_dancer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 4, Tree = this.Const.Perks.LightArmorTree},
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.FastTree}]
			],
			Defense = [
				[
					{Weight = 50, Tree = this.Const.Perks.LightArmorTree},
					{Weight = 50, Tree = this.Const.Perks.MediumArmorTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/bowyer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[
					{Weight = 50, Tree = this.Const.Perks.HunterProfessionTree}
				]
			],
			Class = [
				[
					{Weight = 50, Tree = null},
					{Weight = 50, Tree = this.Const.Perks.MenderClassTree}
				]
			],
			Defense = [
				[
					{Weight = 50, Tree = this.Const.Perks.LightArmorTree},
					{Weight = 50, Tree = this.Const.Perks.MediumArmorTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/brawler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree},
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.FistsClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/butcher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/butcher_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/caravan_hand_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ClerkClassTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.OrganisedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/caravan_hand_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ClerkClassTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.OrganisedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_1h_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
			],
			Profession = [
				[
					{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 43, Tree = null},
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SpearTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_1h_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
			],
			Profession = [
				[
					{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 43, Tree = null},
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SpearTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_2h_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
			],
			Profession = [
			[
				{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
				{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
				{Weight = 43, Tree = null},
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_2h_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
			],
			Profession = [
			[
				{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
				{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
				{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
				{Weight = 43, Tree = null},
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_ranged_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_ranged_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/converted_cultist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cripple_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			],
			Profession = [
				[
					{Weight = 99, Tree = this.Const.Perks.PauperProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.MinstrelProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.AssassinProfessionTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cripple_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
			],
			Profession = [
				[
					{Weight = 99, Tree = this.Const.Perks.PauperProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.MinstrelProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.AssassinProfessionTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/crucified_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/crusader_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 2, Tree = this.Const.Perks.MaceTree},
				{Multiplier = 2, Tree = this.Const.Perks.FlailTree},
				{Multiplier = 2, Tree = this.Const.Perks.HammerTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}],
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cultist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/daytaler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ClerkClassTree}
			],
			Profession = [
				[
					{Weight = 51, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.HunterProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.LumberjackProfessionTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/daytaler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ClerkClassTree}
			],
			Profession = [
				[
					{Weight = 51, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.HunterProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 7, Tree = this.Const.Perks.LumberjackProfessionTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/deserter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 1.33, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TrainedTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/disowned_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.SpearTree}
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/eunuch_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree}
			],
			Profession = [
				[
					{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 37, Tree = this.Const.Perks.ServiceProfessionTree},
					{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 6, Tree = null}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/eunuch_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree}
			],
			Profession = [
				[
					{Weight = 6, Tree = this.Const.Perks.MilitiaProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.MinerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.FarmerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.DiggerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LumberjackProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 6, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 37, Tree = this.Const.Perks.ServiceProfessionTree},
					{Weight = 1, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 6, Tree = null}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/farmhand_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree}
			],
			Profession = [
				[
					{Weight = 8.33, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 8.33, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 8.33, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 75, Tree = this.Const.Perks.FarmerProfessionTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_adventurous_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_beggar_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_bowyer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_butcher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_daytaler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_disowned_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_farmhand_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_miller_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_minstrel_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_servant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_slave_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_slave_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_tailor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_thief_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_thief_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/fisherman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/fisherman_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gambler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gambler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gladiator_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gravedigger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/graverobber_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/hedge_knight_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/historian_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/historian_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/houndmaster_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/hunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/juggler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/juggler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/killer_on_the_run_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/kings_guard_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ancient_summoner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_assassin_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_assassin_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_astrologist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_beggar_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_berserker_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_berserker_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_blacksmith_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_cannibal_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_conjurer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_crusader_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_crusader_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_death_summoner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_diviner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_donkey", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_druid_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_druid_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_enchanter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_entrancer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_female_beggar_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_female_inventor_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_healer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_herbalist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_horse", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_horserider", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_horse_courser", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_horse_destrier", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_horse_rouncey", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_illusionist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_inventor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_inventor_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ironmonger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_master_archer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necromancer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necrosavant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_2h", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_event_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_ranged", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_shield", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_nun_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_philosopher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_premonitionist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ranger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ranger_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_runesmith_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_shieldmaiden_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_spiritualist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_taxidermist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_trader_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_trader_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_transmuter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_vala_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_vala_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_warlock_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_witch_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_witch_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/lumberjack_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mage_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mage_legend_mage_commander_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/manhunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mason_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/messenger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/militia_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/miller_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/miner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/minstrel_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/monk_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/monk_turned_flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/nomad_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/nomad_ranged_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/old_gladiator_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/orc_slayer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/pacified_flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/peddler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/peddler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/pimp_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/poacher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/raider_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/ratcatcher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/refugee_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/retired_soldier_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/sellsword_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/servant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/servant_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/shepherd_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/shepherd_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_barbarian_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/squire_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/swordmaster_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/tailor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/tailor_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/thief_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/thief_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/vagabond_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/wildman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/wildwoman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/witchhunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	});
}
