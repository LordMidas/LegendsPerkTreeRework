local gt = this.getroottable();

gt.Const.PTR.modCharacterBackgrounds <- function()
{
	local addPerkTreesToCustomPerkTree = function (_treeToAdd, _customPerkTree)
	{
		for (local i = 0; i <= 6; i++)
		{
			foreach (perk in _treeToAdd.Tree[i])
			{
				_customPerkTree[i].push(perk);
			}
		}
	};

	local clearCustomPerkTree = function(_customPerkTree)
	{
		_customPerkTree.clear();
		for (local i = 0; i < 7; i++)
		{
			local emptyArray = [];
			_customPerkTree.push(emptyArray);
		}
	};

	::mods_hookNewObject("skills/backgrounds/adventurous_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{ Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree },
				{ Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree },
				{ Multiplier = 3, Tree = this.Const.Perks.SergeantClassTree },
				{ Multiplier = 3, Tree = this.Const.Perks.TacticianClassTree },
				{ Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree },
				{ Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree },
				{ Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree },
				{ Multiplier = 2, Tree = this.Const.Perks.PolearmTree },
				{ Multiplier = 0.5, Tree = this.Const.Perks.BowTree },
				{ Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree },
				{ Multiplier = 0, Tree = this.Const.Perks.SlingsTree },
				{ Multiplier = 0.5, Tree = this.Const.Perks.SpearTree },
				{ Multiplier = 1.25, Tree = this.Const.Perks.TrainedTree }
			],
			Class = [
				[{Weight = 50, Tree = this.Const.Perks.SergeantClassTree}],
				[{Weight = 50, Tree = this.Const.Perks.TacticianClassTree}],
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
			],
			Profession = [
				[
					{Weight = 12, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.BlacksmithProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.TraderProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 12, Tree = this.Const.Perks.ServiceProfessionTree},
					{Weight = 28, Tree = this.Const.Perks.NoTree}
				]
			],
			Traits = [
				[
					{Weight = 75, Tree = this.Const.Perks.TalentedTree},
					{Weight = 25, Tree = this.Const.Perks.NoTree}
				]
			],
			Defense = [
				[
					{Weight = 33, Tree = this.Const.Perks.MediumArmorTree},
					{Weight = 33, Tree = this.Const.Perks.HeavyArmorTree},
					{Weight = 33, Tree = this.Const.Perks.LightArmorTree}
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
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree},
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
					{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree},
				]
			],
			Traits = [
				[
					{Weight = 50, Tree = this.Const.Perks.LargeTree},
					{Weight = 50, Tree = this.Const.Perks.AgileTree}
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
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
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
					{Weight = 90, Tree = this.Const.Perks.NoTree},
					{Weight = 10, Tree = this.Const.Perks.RandomTree}
				]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.BeastsTree}]
			],
			Class = [
				[
				{Weight = 90, Tree = this.Const.Perks.TrapperClassTree},
				{Weight = 5, Tree = this.Const.Perks.ScoutClassTree},
				{Weight = 5, Tree = this.Const.Perks.NoTree}
				]
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
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree}
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
			{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree}
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
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 4, Tree = this.Const.Perks.LightArmorTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.FastTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
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
					{Weight = 50, Tree = this.Const.Perks.NoTree},
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
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree}
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
				{Multiplier = 2, Tree = this.Const.Perks.OutlandersTree},
				{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ClerkClassTree}
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
				{Multiplier = 2, Tree = this.Const.Perks.OutlandersTree},
				{Multiplier = 2, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ClerkClassTree}
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
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree}
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
					{Weight = 43, Tree = this.Const.Perks.NoTree}
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SpearTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			],
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
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree}
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
					{Weight = 43, Tree = this.Const.Perks.NoTree}
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SpearTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			],
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
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
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
					{Weight = 43, Tree = this.Const.Perks.NoTree}
				]
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
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
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
					{Weight = 43, Tree = this.Const.Perks.NoTree}
				]
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
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
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
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
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
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree}
			],
			Profession = [
				[
					{Weight = 99, Tree = this.Const.Perks.PauperProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.MinstrelProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.AssassinProfessionTree}
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
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree}
			],
			Profession = [
				[
					{Weight = 99, Tree = this.Const.Perks.PauperProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.MinstrelProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.AssassinProfessionTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/crucified_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 1.33, Tree = this.Const.Perks.ShieldTree},
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
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
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
				{Multiplier = 0.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.OrganisedTree},
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
					{Weight = 7, Tree = this.Const.Perks.LumberjackProfessionTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/daytaler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.OrganisedTree},
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
					{Weight = 7, Tree = this.Const.Perks.LumberjackProfessionTree}
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
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TacticianClassTree},
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
				{Multiplier = 3, Tree = this.Const.Perks.HexenTree},
				{Multiplier = 3, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/eunuch_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.HexenTree},
				{Multiplier = 3, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/farmhand_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree}
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
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 3, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree}
			]
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.PolearmTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_beggar_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_bowyer_background", function(o) {
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
					{Weight = 50, Tree = this.Const.Perks.NoTree},
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

	::mods_hookNewObject("skills/backgrounds/female_butcher_background", function(o) {
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

	::mods_hookNewObject("skills/backgrounds/female_daytaler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.OrganisedTree},
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
					{Weight = 7, Tree = this.Const.Perks.LumberjackProfessionTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_disowned_noble_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TacticianClassTree},
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

	::mods_hookNewObject("skills/backgrounds/female_farmhand_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree}
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

	::mods_hookNewObject("skills/backgrounds/female_miller_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_minstrel_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MinstrelProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_servant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_slave_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.FlailTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_slave_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.FlailTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_tailor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.MenderClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_thief_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree},
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.DeviousTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_thief_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.DeviousTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/fisherman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[
					{Weight = 30, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.TraderProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.NoTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/fisherman_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[
					{Weight = 30, Tree = this.Const.Perks.ButcherProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.TraderProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.NoTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.HealerClassTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.ShieldTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CleaverTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gambler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[
					{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
					{Weight = 50, Tree = this.Const.Perks.ClerkClassTree},
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gambler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[
					{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
					{Weight = 50, Tree = this.Const.Perks.ClerkClassTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gladiator_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/gravedigger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.SkeletonTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ZombieTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.VampireTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TwoHandedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.DiggerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/graverobber_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.SkeletonTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ZombieTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.VampireTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree}
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/hedge_knight_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ThrowingTree}
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.SwordmastersTree}]
			]

		};
	});

	::mods_hookNewObject("skills/backgrounds/historian_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TacticianClassTree}],
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/historian_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TacticianClassTree}],
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/houndmaster_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.AlpTree},
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HoundmasterClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/hunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ScoutClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/juggler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.JugglerProfessionTree}]
			],
			Traits = [
				[
					{Weight = 50, Tree = this.Const.Perks.AgileTree},
					{Weight = 50, Tree = this.Const.Perks.FastTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/juggler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.JugglerProfessionTree}]
			],
			Traits = [
				[
					{Weight = 50, Tree = this.Const.Perks.AgileTree},
					{Weight = 50, Tree = this.Const.Perks.FastTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/killer_on_the_run_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 5, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.HealerClassTree}
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
					{Weight = 6, Tree = this.Const.Perks.ServiceProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.JugglerProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.MinstrelProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.AssassinProfessionTree},
					{Weight = 0.25, Tree = this.Const.Perks.ApothecaryProfessionTree},
					{Weight = 39, Tree = this.Const.Perks.NoTree}
				]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.CivilizationTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/kings_guard_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.RangedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TrainedTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TacticianClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ancient_summoner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree},
				{Multiplier = 2, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}],
				[{Weight = 100, Tree = this.Const.Perks.MediumArmorTree}],
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.BasicNecroMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_assassin_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.FastAdaption);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.DevastatingStrikes);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Rotation);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendSpecPoison);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendPoisonImmunity);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendHidden);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendClarity);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.PTRBetweenTheEyes);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PushTheAdvantage);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AssassinProfessionTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.NoblesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SouthernersTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordmastersTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AgileTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FastTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.TrapperClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_assassin_commander_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.FastAdaption);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.DevastatingStrikes);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.BoondockBlade);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Rotation);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendSpecPoison);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendPoisonImmunity);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendHidden);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster4);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendClarity);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.PTRBetweenTheEyes);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendRoster5);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PushTheAdvantage);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRoster6);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);



		addPerkTreesToCustomPerkTree(this.Const.Perks.AssassinProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.JugglerProfessionTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.NoblesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SouthernersTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordmastersTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AgileTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FastTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.TrapperClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_astrologist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 5, Tree = this.Const.Perks.StavesTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.PremonitionMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_beggar_commander_background", function(o) {
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.PTRSurvivalInstinct);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.PTRPunchingBag);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendFreedomOfMovement);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.PTRTraumaSurvivor);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
	});

	::mods_hookNewObject("skills/backgrounds/legend_beggar_commander_op_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendRoster2);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendRoster4);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster5);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendRoster6);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRoster7);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Pathfinder);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.NineLives);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.CripplingStrikes);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.FastAdaption);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendAlert);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Colossus);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Recover);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Adrenalin);

		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.PTRSurvivalInstinct);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.CoupDeGrace);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Backstabber);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Gifted);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Anticipation);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendComposure);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.SteelBrow);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.RallyTheTroops);

		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Sprint);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.HoldOut);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Debilitate);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.FortifiedMind);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Relentless);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Steadfast);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Taunt);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Rotation);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.PTRPunchingBag);

		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LoneWolf);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendClarity);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Stalwart);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.ReturnFavor);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Berserk);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Underdog);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.PTRTraumaSurvivor);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendAssuredConquest);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendMindOverBody);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRUnstoppable);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRTheRushOfBattle);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.InspiringPresence);

		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LastStand);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.Fearsome);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.BattleFlow);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendMuscularity);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.Indomitable);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.KillingFrenzy);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);


		addPerkTreesToCustomPerkTree(this.Const.Perks.NoblesTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ResilientTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HeavyArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.SpearTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SlingsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FlailTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);

	});

	::mods_hookNewObject("skills/backgrounds/legend_berserker_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.HealerClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
				[{Weight = 100, Tree = this.Const.Perks.ResilientTree}],
				[{Weight = 100, Tree = this.Const.Perks.LargeTree}],
				[{Weight = 100, Tree = this.Const.Perks.SturdyTree}],
				[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}]
			]
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.BerserkerMagicTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_berserker_commander_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendRoster2);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster4);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRoster6);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Pathfinder);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.DevastatingStrikes);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.QuickHands);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Anticipation);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Sprint);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendPoisonImmunity);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Slaughterer);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendBattleheart);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendSecondWind);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRFreshAndFurious);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRTheRushOfBattle);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.BattleFlow);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendBloodbath);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.Rebound);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendBerserkerRage);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendBigGameHunter);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendUberNimble);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendTumble);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OrcsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DirewolfTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ResilientTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LargeTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SturdyTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HoundmasterClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HeavyArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AxeTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CleaverTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FlailTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FistTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);

	});

	::mods_hookNewObject("skills/backgrounds/legend_blacksmith_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.BlacksmithProfessionTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_cannibal_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ChefClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_conjurer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_crusader_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 1.33, Tree = this.Const.Perks.ShieldTree},
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
				[
					{Weight = 50, Tree = this.Const.Perks.HolyManProfessionTree},
					{Weight = 50, Tree = this.Const.Perks.SoldierProfessionTree},
				]
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

	::mods_hookNewObject("skills/backgrounds/legend_crusader_commander_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendRoster1);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendRoster4);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster5);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendRoster6);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Pathfinder);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Student);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.QuickHands);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendComposure);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Steadfast);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Stalwart);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendBattleheart);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendSecondWind);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.BattleFlow);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.Rebound);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PTRPersonalArmor);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HolyManProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SoldierProfessionTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.UndeadTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HexenTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.AlpTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.GhoulTree, o.m.CustomPerkTree);


		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ResilientTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SturdyTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TrainedTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.SergeantClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HealerClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MenderClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HeavyArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.CleaverTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FlailTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);

	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_death_summoner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_diviner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_donkey", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_druid_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ResilientTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.DruidMagicTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_druid_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.ResilientTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HoundmasterClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRUnstoppable);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRFreshAndFurious);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRTheRushOfBattle);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_enchanter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_entrancer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_female_beggar_commander_background", function(o) {
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.PTRSurvivalInstinct);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.PTRPunchingBag);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendFreedomOfMovement);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.PTRTraumaSurvivor);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PTRStrengthInNumbers);
	});

	::mods_hookNewObject("skills/backgrounds/legend_female_inventor_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.AxeTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CleaverTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FlailTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SlingsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SpearTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ServiceProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MenderClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HealerClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_healer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_herbalist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horserider", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_courser", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_destrier", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_rouncey", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_illusionist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.DeviousTree}
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.IllusionistMagicTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.FastTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}],
				[{Weight = 100, Tree = this.Const.Perks.ThrowingTree}]
			]
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.RangedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_inventor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.OrganisedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_inventor_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.AxeTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CleaverTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FlailTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SlingsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SpearTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ServiceProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MenderClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HealerClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_ironmonger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.BlacksmithProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_master_archer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.ArchersTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ScoutClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SlingsTree}],
				[{Weight = 100, Tree = this.Const.Perks.ThrowingTree}],
			]
		};
	});

 ::mods_hookNewObject("skills/backgrounds/legend_necromancer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree},
				{Multiplier = 2, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.BasicNecroMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necrosavant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.FastTree},
				{Multiplier = 3, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AxeTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
				[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}],
				[{Weight = 100, Tree = this.Const.Perks.ResilientTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.VampireMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.ButcherProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HealerClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendAssuredConquest);
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.ButcherProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HealerClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendAssuredConquest);
	});

 	::mods_hookNewObject("skills/backgrounds/legend_noble_2h", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Recover);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Student);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.QuickHands);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Anticipation);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Gifted);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Footwork);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRelax);

		addPerkTreesToCustomPerkTree(this.Const.Perks.NoblesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SouthernersTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BanditTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BarbarianTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TrainedTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.SergeantClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TacticianClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_commander_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);

		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendRoster2);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendRoster4);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster5);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendRoster6);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRoster7);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Recover);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Student);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.QuickHands);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Anticipation);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Gifted);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Footwork);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRelax);

		addPerkTreesToCustomPerkTree(this.Const.Perks.NoblesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SouthernersTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BanditTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.BarbarianTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TrainedTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.SergeantClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TacticianClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ShieldTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HammerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MaceTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_event_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TrainedTree}],
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}],
				[{Weight = 100, Tree = this.Const.Perks.TacticianClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.PolearmTree}],
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_ranged", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree}
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.RangedTree}],
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_shield", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_nun_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 3, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_philosopher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_premonitionist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_ranger_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendMarkTarget);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.FastAdaption);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Student);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Recover);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendSummonHound);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendNightvision);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Gifted);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendOnslaught);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Backstabber);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendSummonFalcon);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendAmmoBinding);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.DevastatingStrikes);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Rotation);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendSpecPoison);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendAmmoBundles);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendSummonWolf);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.DoubleStrike);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Overwhelm);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendCascade);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendSummonBear);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendBigGameHunter);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendHidden);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HunterProfessionTree, o.m.CustomPerkTree);


		addPerkTreesToCustomPerkTree(this.Const.Perks.BeastsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SchratTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrcsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ArchersTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AgileTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FastTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ScoutClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.BowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SlingsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SpearTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_ranger_commander_background", function(o) {
		clearCustomPerkTree(o.m.CustomPerkTree);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendRoster2);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendRoster3);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendRoster5);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendRoster6);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendRoster7);

		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendMarkTarget);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.FastAdaption);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.BagsAndBelts);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Student);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.Recover);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendSummonHound);
		o.m.CustomPerkTree[0].push(this.Const.Perks.PerkDefs.LegendHairSplitter);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendNightvision);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Gifted);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.LegendOnslaught);
		o.m.CustomPerkTree[1].push(this.Const.Perks.PerkDefs.Backstabber);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendSummonFalcon);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.LegendAmmoBinding);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.DevastatingStrikes);
		o.m.CustomPerkTree[2].push(this.Const.Perks.PerkDefs.Rotation);
		o.m.CustomPerkTree[3].push(this.Const.Perks.PerkDefs.LegendSpecPoison);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendAmmoBundles);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.LegendSummonWolf);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.DoubleStrike);
		o.m.CustomPerkTree[4].push(this.Const.Perks.PerkDefs.Overwhelm);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendCascade);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.LegendSummonBear);
		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendBigGameHunter);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.LegendHidden);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);

		addPerkTreesToCustomPerkTree(this.Const.Perks.HunterProfessionTree, o.m.CustomPerkTree);


		addPerkTreesToCustomPerkTree(this.Const.Perks.BeastsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SchratTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrcsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ArchersTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.AgileTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.FastTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ViciousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.UnstoppableTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.ScoutClassTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.BowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SlingsTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SwordTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SpearTree, o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_runesmith_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_shieldmaiden_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.ShieldTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_spiritualist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_taxidermist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 5, Tree = this.Const.Perks.TrapperClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.HoundmasterClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.BeastsTree}]
			],
		 	Traits = [
				[{Weight = 100, Tree = this.Const.Perks.OrganisedTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_trader_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.TraderProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ChefClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MenderClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ClerkClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TacticianClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HeavyArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);
	});

	::mods_hookNewObject("skills/backgrounds/legend_trader_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.TraderProfessionTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DeviousTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OrganisedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ChefClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MenderClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ClerkClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TacticianClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.MediumArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.HeavyArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CrossbowTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.PolearmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ThrowingTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);

		o.m.CustomPerkTree[5].push(this.Const.Perks.PerkDefs.PTRKnowTheirWeakness);
		o.m.CustomPerkTree[6].push(this.Const.Perks.PerkDefs.PerfectFocus);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_transmuter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

 ::mods_hookNewObject("skills/backgrounds/legend_vala_background", function(o) {
		 addPerkTreesToCustomPerkTree(this.Const.Perks.ValaChantMagicTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.ValaTranceMagicTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.SergeantClassTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		 addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_vala_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.ValaSpiritMagicTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ValaChantMagicTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.ValaTranceMagicTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.CalmTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.SergeantClassTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/legend_warlock_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.WarlockMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_witch_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.PremonitionMagicTree}],
				[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}],
				[{Weight = 100, Tree = this.Const.Perks.InventorMagicTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_witch_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/lumberjack_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LumberjackProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mage_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.FastTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mage_legend_mage_commander_background", function(o) {
		addPerkTreesToCustomPerkTree(this.Const.Perks.FastTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TalentedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.LightArmorTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.OneHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.TwoHandedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.RangedTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.StavesTree, o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(this.Const.Perks.DaggerTree, o.m.CustomPerkTree);
	});

	::mods_hookNewObject("skills/backgrounds/manhunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.NomadsTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrapperClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.HealerClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 4, Tree = this.Const.Perks.CleaverTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mason_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 6, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/messenger_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 6, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree}
			],
			Profession = [
				[
					{Weight = 50, Tree = this.Const.Perks.LaborerProfessionTree},
					{Weight = 50, Tree = this.Const.Perks.ServiceProfessionTree}
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ScoutClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SlingsTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/militia_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MilitiaProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/miller_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/miner_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MinerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/minstrel_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MinstrelProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/monk_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 3, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/monk_turned_flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/nomad_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/nomad_ranged_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 5, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
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

	::mods_hookNewObject("skills/backgrounds/old_gladiator_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/orc_slayer_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.OrcTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.HeavyArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.HammerTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/pacified_flagellant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/peddler_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.TraderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/peddler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.TraderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/pimp_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ClerkClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/poacher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ScoutClassTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/raider_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/ratcatcher_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree}
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.TrapperClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/refugee_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PauperProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/retired_soldier_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.66, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}],
				[{Weight = 100, Tree = this.Const.Perks.TacticianClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/sellsword_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.MercenaryTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 60, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 25, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 15, Tree = this.Const.Perks.NoTree}
				]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/servant_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.ServiceProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/servant_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.ServiceProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/shepherd_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.LaborerProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SlingsTree}],
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/shepherd_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.LaborerProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SlingsTree}],
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree}
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.PauperProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_barbarian_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 0.4, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 5, Tree = this.Const.Perks.ResilientTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/slave_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree}
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.PauperProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/squire_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 60, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}],
				[
					{Weight = 25, Tree = this.Const.Perks.SergeantClassTree},
					{Weight = 75, Tree = this.Const.Perks.NoTree},
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.PolearmTree}],
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}],
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/swordmaster_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 2, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.SwordmastersTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.SwordmastersTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/tailor_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/tailor_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.OrganisedTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ServiceProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/thief_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.DeviousTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/thief_southern_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 1.25, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.OneHandedTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree}
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.DeviousTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/vagabond_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LaborerProfessionTree}]
			],
			Class = [
				[
				{Weight = 75, Tree = this.Const.Perks.ScoutClassTree},
				{Weight = 25, Tree = this.Const.Perks.NoTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/wildman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 0.4, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree},
				{Multiplier = 6, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.MaceTree},
				{Multiplier = 3, Tree = this.Const.Perks.HammerTree},
				{Multiplier = 2, Tree = this.Const.Perks.AxeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree}
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/wildwoman_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 0.4, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.MenderClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree},
				{Multiplier = 6, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.MaceTree},
				{Multiplier = 3, Tree = this.Const.Perks.HammerTree},
				{Multiplier = 2, Tree = this.Const.Perks.AxeTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree}
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/witchhunter_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 0.2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.BowTree}
			],
			Profession = [
				[
					{Weight = 25, Tree = this.Const.Perks.HolyManProfessionTree},
					{Weight = 75, Tree = this.Const.Perks.NoTree},
				]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CrossbowTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_alchemist_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}],
				[{Weight = 100, Tree = this.Const.Perks.TraderProfessionTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.MysticTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_dervish_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.BarbarianTree},
				{Multiplier = 5, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 5, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 3, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 3, Tree = this.Const.Perks.CleaverTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SlingsTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_muladi_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.ScoutClassTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_qiyan_background", function(o) {
		o.m.PerkTreeDynamic = {
			ExpertiseMultipliers = [
			],
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.FastTree},
				{Multiplier = 3, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 2, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MinstrelProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.EntertainerClassTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});
}
