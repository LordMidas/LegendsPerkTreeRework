local gt = this.getroottable();

gt.Const.PTR.modCharacterBackgrounds <- function()
{
	local addPerkTreesToCustomPerkTree = function (_customPerkTree, _treesToAdd)
	{
		foreach (tree in _treesToAdd)
		{
			for (local i = 0; i < tree.Tree.len(); i++)
			{
				foreach (perk in tree.Tree[i])
				{
					_customPerkTree[i].push(perk);
				}
			}
		}
	};

	local addPerksToCustomPerkTree = function ( _tier, _customPerkTree, _perks)
	{
		local row = _tier - 1;
		foreach (perk in _perks)
		{
			_customPerkTree[row].push(perk);
		}
	}

	local clearCustomPerkTree = function(_customPerkTree)
	{
		if (_customPerkTree == null)
		{			
			_customPerkTree = [];
		}
		else
		{
			_customPerkTree.clear();
		}
		
		for (local i = 0; i < 7; i++)
		{
			local emptyArray = [];
			_customPerkTree.push(emptyArray);
		}

		return _customPerkTree;
	};

	::mods_hookNewObject("skills/backgrounds/adventurous_noble_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{ Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree },
				{ Multiplier = 0, Tree = this.Const.Perks.DeviousTree },
				{ Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree },
				{ Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree },
				{ Multiplier = 2, Tree = this.Const.Perks.PolearmTree },
				{ Multiplier = 0, Tree = this.Const.Perks.BowTree },
				{ Multiplier = 0, Tree = this.Const.Perks.CrossbowTree },
				{ Multiplier = 0, Tree = this.Const.Perks.SlingsTree },
				{ Multiplier = 0.66, Tree = this.Const.Perks.SpearTree },
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

	::mods_hookNewObject("skills/backgrounds/apprentice_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
					{ Multiplier = 3, Tree = this.Const.Perks.TalentedTree }
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
		};
	});

	::mods_hookNewObject("skills/backgrounds/assassin_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.AssassinProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/assassin_southern_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.AssassinProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/barbarian_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
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
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree},
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.SwordTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/beast_hunter_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
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
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.BowTree}]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/brawler_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/butcher_southern_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/caravan_hand_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree}
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree}
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
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]				
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_2h_southern_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],			
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_ranged_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[
					{Weight = 25, Tree = this.Const.Perks.BowTree},
					{Weight = 25, Tree = this.Const.Perks.CrossbowTree},
					{Weight = 25, Tree = this.Const.Perks.SlingsTree},
					{Weight = 25, Tree = this.Const.Perks.ThrowingTree}									
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/companion_ranged_southern_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HunterProfessionTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[
					{Weight = 25, Tree = this.Const.Perks.BowTree},
					{Weight = 25, Tree = this.Const.Perks.CrossbowTree},
					{Weight = 25, Tree = this.Const.Perks.SlingsTree},
					{Weight = 25, Tree = this.Const.Perks.ThrowingTree}									
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/converted_cultist_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cripple_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
				{Weight = 70, Tree = this.Const.Perks.HolyManProfessionTree},
				{Weight = 30, Tree = this.Const.Perks.SoldierProfessionTree}
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

	::mods_hookNewObject("skills/backgrounds/crusader_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.ShieldTree},
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
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 70, Tree = this.Const.Perks.HolyManProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.SoldierProfessionTree}
				]
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
			WeightMultipliers = [
				{Multiplier = 1.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.UnstoppableTree}						
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CleaverTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cultist_darksoul_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},				
				{Multiplier = 0, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.HealerClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.TrapperClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ClerkClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.HoundmasterClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.EntertainerClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.RangedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ThrowingTree}							
			],
			Profession = [
				[
					{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CleaverTree}],
				[{Weight = 100, Tree = this.Const.Perks.FlailTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cultist_lurker_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.ScoutClassTree},				
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 9, Tree = this.Const.Perks.BowTree},
				{Multiplier = 2.4, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 3, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 3, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 2, Tree = this.Const.Perks.OneHandedTree}
			],
			Profession = [
				[
					{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}
				]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[
					{Weight = 25, Tree = this.Const.Perks.BowTree},
					{Weight = 25, Tree = this.Const.Perks.CrossbowTree},
					{Weight = 25, Tree = this.Const.Perks.SlingsTree},
					{Weight = 25, Tree = this.Const.Perks.ThrowingTree}									
				]
			],		
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.RangedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/cultist_magister_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
			],
			Profession = [
				[
					{Weight = 100, Tree = this.Const.Perks.CultistProfessionTree}
				]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.SergeantClassTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CleaverTree}],
				[{Weight = 100, Tree = this.Const.Perks.PolearmTree}]
			],					
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.PremonitionMagicTree}]
			]
		};
	});		

	::mods_hookNewObject("skills/backgrounds/daytaler_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.75, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.PolearmTree}			
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/disowned_noble_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0.8, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.TalentedTree},
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
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},				
				{Multiplier = 3, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.PolearmTree},
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.AgileTree}]
			],
			Class = [
				[
				{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
				{Weight = 50, Tree = this.Const.Perks.TacticianClassTree}				
				]
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.BowTree}]
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.RangedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_beggar_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree}
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
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.BowTree}]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_butcher_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/female_daytaler_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.NoblesTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 0.8, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},				
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.8, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 20, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 70, Tree = this.Const.Perks.NoTree}
				]
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

	::mods_hookNewObject("skills/backgrounds/gladiator_origin_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.8, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 20, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 70, Tree = this.Const.Perks.NoTree}
				]
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
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.16, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ThrowingTree}
			],
			Profession = [
				[
					{Weight = 20, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 70, Tree = this.Const.Perks.NoTree}
				]
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
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}]
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
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}]
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
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.BowTree}]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/juggler_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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

	// ::mods_hookNewObject("skills/backgrounds/legend_ancient_summoner_background", function(o) {
	// 	o.m.PerkTreeDynamic = {			
	// 		WeightMultipliers = [
	// 			{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
	// 			{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree},
	// 			{Multiplier = 2, Tree = this.Const.Perks.DaggerTree},
	// 			{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
	// 		],
	// 		Profession = [
	// 			[{Weight = 100, Tree = this.Const.Perks.ButcherProfessionTree}]
	// 		],
	// 		Traits = [
	// 			[{Weight = 100, Tree = this.Const.Perks.ViciousTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.CalmTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.UnstoppableTree}]
	// 		],
	// 		Class = [
	// 			[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
	// 		],
	// 		Defense = [
	// 			[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.MediumArmorTree}],
	// 		],
	// 		Weapon = [
	// 			[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
	// 		],
	// 		Styles = [
	// 			[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
	// 		],
	// 		Magic = [
	// 			[{Weight = 100, Tree = this.Const.Perks.BasicNecroMagicTree}]
	// 		]
	// 	};
	// });

	::mods_hookNewObject("skills/backgrounds/legend_assassin_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);
		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.DaggerTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.AgileTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.FastTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.DeviousTree,
				this.Const.Perks.TrapperClassTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.MaceTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.FastAdaption,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.PTRSmallTarget,
				this.Const.Perks.PerkDefs.PTRDeepCuts,
				this.Const.Perks.PerkDefs.NineLives
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.PTRBetweenTheEyes,
				this.Const.Perks.PerkDefs.PTRBloodyHarvest			
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendHidden,
				this.Const.Perks.PerkDefs.PTRVigilant,							
				this.Const.Perks.PerkDefs.PTRPatternRecognition,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.ReachAdvantage,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySwordmaster,
				this.Const.Perks.PerkDefs.PTRSweepingStrikes				
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness				
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PushTheAdvantage,
				this.Const.Perks.PerkDefs.HeadHunter
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BFFencer,				
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendAssassinate				
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_assassin_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.DaggerTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.AgileTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.FastTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.DeviousTree,
				this.Const.Perks.TrapperClassTree,
				this.Const.Perks.JugglerProfessionTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.MaceTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.FastAdaption,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.PTRDeepCuts,
				this.Const.Perks.PerkDefs.NineLives
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.PTRBloodyHarvest
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.PTRBetweenTheEyes,
				this.Const.Perks.PerkDefs.PTRPatternRecognition,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.LegendHidden,
				this.Const.Perks.PerkDefs.ReachAdvantage,
				this.Const.Perks.PerkDefs.BoondockBlade,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySwordmaster
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.PTRSweepingStrikes				
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendAssassinate
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BFFencer,				
				this.Const.Perks.PerkDefs.PerfectFocus
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_astrologist_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.SlingsTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBearDown,
				this.Const.Perks.PerkDefs.PTRPushIt,
				this.Const.Perks.PerkDefs.PTRRattle,
				this.Const.Perks.PerkDefs.LegendSmackdown,
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.PTRSwordlike,
				this.Const.Perks.PerkDefs.PTRVersatileWeapon,
				this.Const.Perks.PerkDefs.PTRSmallTarget,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.BagsAndBelts

			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRPointyEnd,
				this.Const.Perks.PerkDefs.PTRBloodyHarvest,
				this.Const.Perks.PerkDefs.PTRDeepCuts,
				this.Const.Perks.PerkDefs.Bullseye,
				this.Const.Perks.PerkDefs.CoupDeGrace,
				this.Const.Perks.PerkDefs.PTRHybridization,
				this.Const.Perks.PerkDefs.LegendSmashingShields,
				this.Const.Perks.PerkDefs.Backstabber,
				this.Const.Perks.PerkDefs.Dodge,
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.LegendOnslaught
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTREntrenched,
				this.Const.Perks.PerkDefs.PTRHeadSmasher,
				this.Const.Perks.PerkDefs.PTRDismemberment,
				this.Const.Perks.PerkDefs.STRPhalanx,
				this.Const.Perks.PerkDefs.PTRDeepImpact,
				this.Const.Perks.PerkDefs.SteelBrow,
				this.Const.Perks.PerkDefs.LegendEfficientPacking,
				this.Const.Perks.PerkDefs.PTRThroughTheGaps,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.Anticipation,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.PTRLeverage,
				this.Const.Perks.PerkDefs.ShieldExpert,
				this.Const.Perks.PerkDefs.SpecDagger,
				this.Const.Perks.PerkDefs.PTRFormidableApproach,
				this.Const.Perks.PerkDefs.Taunt,
				this.Const.Perks.PerkDefs.PTRPunchingBag,
				this.Const.Perks.PerkDefs.Steadfast,
				this.Const.Perks.PerkDefs.SpecSpear,
				this.Const.Perks.PerkDefs.SpecSword,
				this.Const.Perks.PerkDefs.PTRPowerShot,
				this.Const.Perks.PerkDefs.Relentless
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.SpecHammer,
				this.Const.Perks.PerkDefs.SpecFlail,
				this.Const.Perks.PerkDefs.SpecMace,
				this.Const.Perks.PerkDefs.SpecPolearm,
				this.Const.Perks.PerkDefs.LegendMasteryStaves,
				this.Const.Perks.PerkDefs.SpecCrossbow,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.SpecThrowing,
				this.Const.Perks.PerkDefs.SpecAxe,
				this.Const.Perks.PerkDefs.SpecCleaver,
				this.Const.Perks.PerkDefs.LegendSkillfulStacking
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTROffhandTraining,
				this.Const.Perks.PerkDefs.PTRSweepingStrikes,
				this.Const.Perks.PerkDefs.PTRSoftMetal,
				this.Const.Perks.PerkDefs.Duelist,
				this.Const.Perks.PerkDefs.PTRIronSights,
				this.Const.Perks.PerkDefs.PTRConcussiveStrikes,
				this.Const.Perks.PerkDefs.ReachAdvantage,
				this.Const.Perks.PerkDefs.LegendWindReader,
				this.Const.Perks.PerkDefs.PTRTraumaSurvivor,
				this.Const.Perks.PerkDefs.Underdog,
				this.Const.Perks.PerkDefs.SunderingStrikes,
				this.Const.Perks.PerkDefs.Nimble
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PushTheAdvantage,
				this.Const.Perks.PerkDefs.PTRUtilitarian,
				this.Const.Perks.PerkDefs.LegendSpecSpearWall,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.Ballistics,
				this.Const.Perks.PerkDefs.PTRNailedIt,
				this.Const.Perks.PerkDefs.HeadHunter,
				this.Const.Perks.PerkDefs.Overwhelm,
				this.Const.Perks.PerkDefs.PTRMarksmanship,
				this.Const.Perks.PerkDefs.PTRMuscleMemory,
				this.Const.Perks.PerkDefs.PTRStrengthInNumbers,
				this.Const.Perks.PerkDefs.Fearsome
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_beggar_commander_op_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.BeastsTree,
				this.Const.Perks.MysticTree,
				this.Const.Perks.UndeadTree,
				this.Const.Perks.CivilizationTree,
				this.Const.Perks.ArchersTree,
				this.Const.Perks.OutlandersTree,				
				this.Const.Perks.SwordmastersTree																		
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.FastAdaption,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.Backstabber
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.FortifiedMind,
				this.Const.Perks.PerkDefs.Taunt,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Sprint,
				this.Const.Perks.PerkDefs.RallyTheTroops

			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRDynamicDuo,
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.Steadfast
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendMindOverBody,
				this.Const.Perks.PerkDefs.PTRTheRushOfBattle,
				this.Const.Perks.PerkDefs.InspiringPresence
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,			
				this.Const.Perks.PerkDefs.LastStand,
				this.Const.Perks.PerkDefs.Indomitable,
				this.Const.Perks.PerkDefs.PerfectFocus
			]
		);

		o.onTargetKilled = function( _targetEntity, _skill )
		{
			local actor = this.getContainer().getActor();

			if (actor.isAlliedWith(_targetEntity))
			{
				return;
			}

			actor.getBaseProperties().Hitpoints += (actor.getBaseProperties().Hitpoints < _targetEntity.getBaseProperties().Hitpoints ? 1 : 0);
			actor.getBaseProperties().Bravery += (actor.getBaseProperties().Bravery < _targetEntity.getBaseProperties().Bravery ? 1 : 0);
			actor.getBaseProperties().Stamina += (actor.getBaseProperties().Stamina < _targetEntity.getBaseProperties().Stamina ? 1 : 0);
			actor.getBaseProperties().MeleeSkill += (actor.getBaseProperties().MeleeSkill < _targetEntity.getBaseProperties().MeleeSkill ? 1 : 0);
			actor.getBaseProperties().RangedSkill += (actor.getBaseProperties().RangedSkill < _targetEntity.getBaseProperties().RangedSkill ? 1 : 0);
			actor.getBaseProperties().MeleeDefense += (actor.getBaseProperties().MeleeDefense < _targetEntity.getBaseProperties().MeleeDefense ? 1 : 0);
			actor.getBaseProperties().RangedDefense += (actor.getBaseProperties().RangedDefense < _targetEntity.getBaseProperties().RangedDefense ? 1 : 0);
			actor.getBaseProperties().Initiative += (actor.getBaseProperties().Initiative < _targetEntity.getBaseProperties().Initiative ? 1 : 0);

			local target_skills = _targetEntity.getSkills().query(this.Const.SkillType.Perk);
			local potentialPerks = [];

			foreach (perk in target_skills)
			{
				local id = perk.getID();
				if (id == "perk.stalwart" || id == "perk.legend_composure" || id == "perk.battering_ram")
				{
					continue;
				}

				if (!actor.getSkills().hasSkill(id))
				{
					potentialPerks.push(perk);
				}
			}

			if (potentialPerks.len() == 0)
			{
				return;
			}

			local perk = potentialPerks[this.Math.rand(0, potentialPerks.len() - 1)];
			
			foreach( i, v in this.Const.Perks.PerkDefObjects )
			{
				if (perk.getID() == v.ID)
				{
					if (v.Script != "")
					{
						this.Tactical.EventLog.log("The framed beggar learned [color=" + this.Const.UI.Color.NegativeValue + "]" + perk.getName() + "[/color] from " + _targetEntity.getName());
						actor.getSkills().add(this.new(v.Script));
						actor.getBackground().addPerk(i, this.Math.rand(0,6));
						break;
					}
				}
			}
		}
	});


	::mods_hookNewObject("skills/backgrounds/legend_berserker_background", function(o) {		
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);
		
		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.AxeTree,
				this.Const.Perks.CleaverTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.OrcsTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.LargeTree,
				this.Const.Perks.SturdyTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.HammerTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.LegendAlert
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Sprint,
				this.Const.Perks.PerkDefs.PTRMenacing
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.Rebound,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRVigorousAssault
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
			this.Const.Perks.PerkDefs.BattleFlow
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRFreshAndFurious,
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness,
				this.Const.Perks.PerkDefs.PTRTheRushOfBattle
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendBerserkerRage,
				this.Const.Perks.PerkDefs.LegendUberNimble
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_berserker_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.AxeTree,
				this.Const.Perks.CleaverTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.OrcsTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.LargeTree,
				this.Const.Perks.SturdyTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.HammerTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.LegendAlert
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Sprint,
				this.Const.Perks.PerkDefs.PTRMenacing
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.Rebound,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRVigorousAssault
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
			this.Const.Perks.PerkDefs.BattleFlow
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRFreshAndFurious,
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness,
				this.Const.Perks.PerkDefs.PTRTheRushOfBattle
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendBerserkerRage,
				this.Const.Perks.PerkDefs.LegendUberNimble
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_blacksmith_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.FastTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.LargeTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.SturdyTree},
				{Multiplier = 2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.BlacksmithProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]	
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			],
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_cannibal_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_crusader_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.ShieldTree},
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
					{Weight = 70, Tree = this.Const.Perks.HolyManProfessionTree},
					{Weight = 30, Tree = this.Const.Perks.SoldierProfessionTree},
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
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.FlailTree,
				this.Const.Perks.MaceTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.HeavyArmorTree,
				this.Const.Perks.ShieldTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.CalmTree,
				this.Const.Perks.SturdyTree,
				this.Const.Perks.TwoHandedTree,
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.PTRSwordlike,
				this.Const.Perks.PerkDefs.LegendSmashingShields,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyZombie
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.RallyTheTroops,
				this.Const.Perks.PerkDefs.PTRPatternRecognition,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRDismemberment
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.Steadfast,
				this.Const.Perks.PerkDefs.Rotation,								
				this.Const.Perks.PerkDefs.PTRDeepImpact
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemySkeleton,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyZombie,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyVampire,
				this.Const.Perks.PerkDefs.SpecCleaver,
				this.Const.Perks.PerkDefs.PTRExudeConfidence,
				this.Const.Perks.PerkDefs.PTRSanguinary,
				this.Const.Perks.PerkDefs.PTRVigilant,				
				this.Const.Perks.PerkDefs.LegendPrayerOfFaith,
				this.Const.Perks.PerkDefs.LegendPrayerOfLife

			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSecondWind,				
				this.Const.Perks.PerkDefs.Berserk,
				this.Const.Perks.PerkDefs.PTRPatternRecognition,				
				this.Const.Perks.PerkDefs.LegendBattleheart
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.SunderingStrikes,
				this.Const.Perks.PerkDefs.PTRVigorousAssault,
				this.Const.Perks.PerkDefs.LegendHolyFlame,
				this.Const.Perks.PerkDefs.PTRTheRushOfBattle,				
				this.Const.Perks.PerkDefs.Duelist
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BattleFlow,
				this.Const.Perks.PerkDefs.LastStand,
				this.Const.Perks.PerkDefs.Inspire,								
				this.Const.Perks.PerkDefs.PTRProfessional,
				this.Const.Perks.PerkDefs.PerfectFocus,				
				this.Const.Perks.PerkDefs.PTRWeaponMaster,
				this.Const.Perks.PerkDefs.Rebound
			]
		);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_death_summoner_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_diviner_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_donkey", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_druid_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.StavesTree,
				this.Const.Perks.SpearTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.HoundmasterClassTree,
				this.Const.Perks.SwordTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendWither,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.Student,
				this.Const.Perks.PerkDefs.LegendSummonHound,
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleSkill
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendScryTrance,
				this.Const.Perks.PerkDefs.STRPhalanx,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.LegendGatherer
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendRoots,
				this.Const.Perks.PerkDefs.LegendHerbcraft,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleDamage
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendSummonWolf,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyOrk,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyGoblin,
				this.Const.Perks.PerkDefs.PTRDynamicDuo,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPotionBrewer,
				this.Const.Perks.PerkDefs.LegendReadOmensTrance,
				this.Const.Perks.PerkDefs.LegendInsects
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendDrumsOfLife,
				this.Const.Perks.PerkDefs.LegendDistantVisions,
				this.Const.Perks.PerkDefs.LegendSummonStorm,
				this.Const.Perks.PerkDefs.LegendBattleheart
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendMiasma,
				this.Const.Perks.PerkDefs.LegendTumble,
				this.Const.Perks.PerkDefs.LegendSummonBear
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_druid_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.StavesTree,
				this.Const.Perks.SpearTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.HoundmasterClassTree,
				this.Const.Perks.SwordTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendWither,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.Student,
				this.Const.Perks.PerkDefs.LegendSummonHound,
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleSkill
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendScryTrance,
				this.Const.Perks.PerkDefs.STRPhalanx,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.LegendGatherer
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendRoots,
				this.Const.Perks.PerkDefs.LegendHerbcraft,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleDamage
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendSummonWolf,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyOrk,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyGoblin,
				this.Const.Perks.PerkDefs.PTRDynamicDuo,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPotionBrewer,
				this.Const.Perks.PerkDefs.LegendReadOmensTrance,
				this.Const.Perks.PerkDefs.LegendInsects
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendDrumsOfLife,
				this.Const.Perks.PerkDefs.LegendDistantVisions,
				this.Const.Perks.PerkDefs.LegendSummonStorm,
				this.Const.Perks.PerkDefs.LegendBattleheart
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendMiasma,
				this.Const.Perks.PerkDefs.LegendTumble,
				this.Const.Perks.PerkDefs.LegendSummonBear
			]
		);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_enchanter_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_entrancer_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_female_beggar_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.SlingsTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBearDown,
				this.Const.Perks.PerkDefs.PTRPushIt,
				this.Const.Perks.PerkDefs.PTRRattle,
				this.Const.Perks.PerkDefs.LegendSmackdown,
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.PTRSwordlike,
				this.Const.Perks.PerkDefs.PTRVersatileWeapon,
				this.Const.Perks.PerkDefs.PTRSmallTarget,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.BagsAndBelts

			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRPointyEnd,
				this.Const.Perks.PerkDefs.PTRBloodyHarvest,
				this.Const.Perks.PerkDefs.PTRDeepCuts,
				this.Const.Perks.PerkDefs.Bullseye,
				this.Const.Perks.PerkDefs.CoupDeGrace,
				this.Const.Perks.PerkDefs.PTRHybridization,
				this.Const.Perks.PerkDefs.LegendSmashingShields,
				this.Const.Perks.PerkDefs.Backstabber,
				this.Const.Perks.PerkDefs.Dodge,
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.LegendOnslaught
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTREntrenched,
				this.Const.Perks.PerkDefs.PTRHeadSmasher,
				this.Const.Perks.PerkDefs.PTRDismemberment,
				this.Const.Perks.PerkDefs.STRPhalanx,
				this.Const.Perks.PerkDefs.PTRDeepImpact,
				this.Const.Perks.PerkDefs.SteelBrow,
				this.Const.Perks.PerkDefs.LegendEfficientPacking,
				this.Const.Perks.PerkDefs.PTRThroughTheGaps,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct,
				this.Const.Perks.PerkDefs.Anticipation,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.PTRLeverage,
				this.Const.Perks.PerkDefs.ShieldExpert,
				this.Const.Perks.PerkDefs.SpecDagger,
				this.Const.Perks.PerkDefs.PTRFormidableApproach,
				this.Const.Perks.PerkDefs.Taunt,
				this.Const.Perks.PerkDefs.PTRPunchingBag,
				this.Const.Perks.PerkDefs.Steadfast,
				this.Const.Perks.PerkDefs.SpecSpear,
				this.Const.Perks.PerkDefs.SpecSword,
				this.Const.Perks.PerkDefs.PTRPowerShot,
				this.Const.Perks.PerkDefs.Relentless
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.SpecHammer,
				this.Const.Perks.PerkDefs.SpecFlail,
				this.Const.Perks.PerkDefs.SpecMace,
				this.Const.Perks.PerkDefs.SpecPolearm,
				this.Const.Perks.PerkDefs.LegendMasteryStaves,
				this.Const.Perks.PerkDefs.SpecCrossbow,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.SpecThrowing,
				this.Const.Perks.PerkDefs.SpecAxe,
				this.Const.Perks.PerkDefs.SpecCleaver,
				this.Const.Perks.PerkDefs.LegendSkillfulStacking
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTROffhandTraining,
				this.Const.Perks.PerkDefs.PTRSweepingStrikes,
				this.Const.Perks.PerkDefs.PTRSoftMetal,
				this.Const.Perks.PerkDefs.Duelist,
				this.Const.Perks.PerkDefs.PTRIronSights,
				this.Const.Perks.PerkDefs.PTRConcussiveStrikes,
				this.Const.Perks.PerkDefs.ReachAdvantage,
				this.Const.Perks.PerkDefs.LegendWindReader,
				this.Const.Perks.PerkDefs.PTRTraumaSurvivor,
				this.Const.Perks.PerkDefs.Underdog,
				this.Const.Perks.PerkDefs.SunderingStrikes,
				this.Const.Perks.PerkDefs.Nimble
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PushTheAdvantage,
				this.Const.Perks.PerkDefs.PTRUtilitarian,
				this.Const.Perks.PerkDefs.LegendSpecSpearWall,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.Ballistics,
				this.Const.Perks.PerkDefs.PTRNailedIt,
				this.Const.Perks.PerkDefs.HeadHunter,
				this.Const.Perks.PerkDefs.Overwhelm,
				this.Const.Perks.PerkDefs.PTRMarksmanship,
				this.Const.Perks.PerkDefs.PTRMuscleMemory,
				this.Const.Perks.PerkDefs.PTRStrengthInNumbers,
				this.Const.Perks.PerkDefs.Fearsome
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_female_inventor_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.CrossbowTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.StavesTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.OrganisedTree,
				this.Const.Perks.TalentedTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.RangedTree,
				this.Const.Perks.InventorMagicTree,
				this.Const.Perks.PhilosophyMagicTree,
				this.Const.Perks.MenderClassTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TrapperClassTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendMedIngredients,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.LegendBackToBasics
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.LegendBlendIn				
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpecBandage,
				this.Const.Perks.PerkDefs.PTRVigilant,
				this.Const.Perks.PerkDefs.LegendMasteryNets
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.PTRDynamicDuo,
				this.Const.Perks.PerkDefs.LegendEscapeArtist
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness				
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFieldTriage,
				this.Const.Perks.PerkDefs.PerfectFocus				
			]
		);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_healer_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_herbalist_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horserider", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_courser", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_destrier", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	/* ::mods_hookNewObject("skills/backgrounds/legend_horse_rouncey", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	// ::mods_hookNewObject("skills/backgrounds/legend_illusionist_background", function(o) {
	// 	o.m.PerkTreeDynamic = {			
	// 		WeightMultipliers = [
	// 			{Multiplier = 3, Tree = this.Const.Perks.DeviousTree}
	// 		],
	// 		Magic = [
	// 			[{Weight = 100, Tree = this.Const.Perks.IllusionistMagicTree}]
	// 		],
	// 		Traits = [
	// 			[{Weight = 100, Tree = this.Const.Perks.FastTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
	// 		],
	// 		Weapon = [
	// 			[{Weight = 100, Tree = this.Const.Perks.StavesTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.ThrowingTree}]
	// 		]
	// 		Defense = [
	// 			[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
	// 		],
	// 		Styles = [
	// 			[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.RangedTree}]
	// 		]
	// 	};
	// });

	::mods_hookNewObject("skills/backgrounds/legend_inventor_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.InventorMagicTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.OrganisedTree}],
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.MenderClassTree}]
			]
			Magic = [
				[{Weight = 100, Tree = this.Const.Perks.InventorMagicTree}],
				[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}]	
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_inventor_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.CrossbowTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.StavesTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.OrganisedTree,
				this.Const.Perks.TalentedTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.RangedTree,
				this.Const.Perks.InventorMagicTree,
				this.Const.Perks.PhilosophyMagicTree,
				this.Const.Perks.MenderClassTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TrapperClassTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendMedIngredients,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.LegendBackToBasics
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.PTRSurvivalInstinct
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.LegendBlendIn				
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpecBandage,
				this.Const.Perks.PerkDefs.PTRVigilant,
				this.Const.Perks.PerkDefs.LegendMasteryNets
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.PTRDynamicDuo,
				this.Const.Perks.PerkDefs.LegendEscapeArtist
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness				
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFieldTriage,
				this.Const.Perks.PerkDefs.PerfectFocus				
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_ironmonger_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}]
			],
			Class = [
				[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
			]		
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_ironmonger_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.BlacksmithProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_master_archer_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
				[{Weight = 100, Tree = this.Const.Perks.BowTree}],
				[{Weight = 100, Tree = this.Const.Perks.CrossbowTree}],
				[{Weight = 100, Tree = this.Const.Perks.SlingsTree}],
				[{Weight = 100, Tree = this.Const.Perks.ThrowingTree}]							
			]
		};
	});

 // 	::mods_hookNewObject("skills/backgrounds/legend_necromancer_background", function(o) {
	// 	o.m.PerkTreeDynamic = {			
	// 		WeightMultipliers = [
	// 			{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
	// 			{Multiplier = 3, Tree = this.Const.Perks.CalmTree},
	// 			{Multiplier = 3, Tree = this.Const.Perks.TalentedTree},
	// 			{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
	// 			{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
	// 			{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree},
	// 			{Multiplier = 2, Tree = this.Const.Perks.DaggerTree},
	// 			{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree}
	// 		],
	// 		Profession = [
	// 			[{Weight = 100, Tree = this.Const.Perks.BasicNecroMagicTree}]
	// 		],
	// 		Class = [
	// 			[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
	// 		],
	// 		Defense = [
	// 			[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
	// 		],
	// 		Weapon = [
	// 			[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
	// 		],
	// 		Styles = [
	// 			[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
	// 		],
	// 	};
	// });

	::mods_hookNewObject("skills/backgrounds/legend_necrosavant_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.FastTree},
				{Multiplier = 3, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.AxeTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.VampireMagicTree}]
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
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);		

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.CleaverTree,
				this.Const.Perks.DaggerTree,
				this.Const.Perks.StavesTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.HoundmasterClassTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TalentedTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.LegendSpawnZombieLow,
				this.Const.Perks.PerkDefs.LegendSpawnSkeletonLow,
				this.Const.Perks.PerkDefs.LegendSpecialistNinetailsSkill,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheSkill
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPrepareBleed,
				this.Const.Perks.PerkDefs.LegendRust,
				this.Const.Perks.PerkDefs.LegendMedPackages
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
				this.Const.Perks.PerkDefs.LegendPrepareGraze,
				this.Const.Perks.PerkDefs.LegendLacerate
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyGhoul,
				this.Const.Perks.PerkDefs.LegendExtendendAura,
				this.Const.Perks.PerkDefs.LegendSpecialistNinetailsDamage,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheDamage,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendSpawnZombieMed,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
				this.Const.Perks.PerkDefs.LegendSpawnZombieMed
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendReclamation,
				this.Const.Perks.PerkDefs.LegendBrinkOfDeath,
				this.Const.Perks.PerkDefs.LegendConservation,
				this.Const.Perks.PerkDefs.LegendSlaughter
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPossession,
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendChanneledPower

			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpawnSkeletonHigh,
				this.Const.Perks.PerkDefs.LegendViolentDecomposition,
				this.Const.Perks.PerkDefs.LegendSpawnZombieHigh
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_necro_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);		

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.CleaverTree,
				this.Const.Perks.DaggerTree,
				this.Const.Perks.StavesTree,
				this.Const.Perks.OneHandedTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.ResilientTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.HoundmasterClassTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TalentedTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.LegendSpawnZombieLow,
				this.Const.Perks.PerkDefs.LegendSpawnSkeletonLow,
				this.Const.Perks.PerkDefs.LegendSpecialistNinetailsSkill,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheSkill
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPrepareBleed,
				this.Const.Perks.PerkDefs.LegendRust,
				this.Const.Perks.PerkDefs.LegendMedPackages
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
				this.Const.Perks.PerkDefs.LegendPrepareGraze,
				this.Const.Perks.PerkDefs.LegendLacerate
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendExtendendAura,
				this.Const.Perks.PerkDefs.LegendSpecialistNinetailsDamage,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheDamage,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendSpawnZombieMed,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
				this.Const.Perks.PerkDefs.LegendSpawnZombieMed
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendReclamation,
				this.Const.Perks.PerkDefs.LegendBrinkOfDeath,
				this.Const.Perks.PerkDefs.LegendConservation,
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendPossession,
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendChanneledPower

			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpawnSkeletonHigh,
				this.Const.Perks.PerkDefs.LegendViolentDecomposition,
				this.Const.Perks.PerkDefs.LegendSpawnZombieHigh
			]
		);
	});

 	::mods_hookNewObject("skills/backgrounds/legend_nightwatch_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.ScoutClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MilitiaProfessionTree}]
			]
		};
	});

 	::mods_hookNewObject("skills/backgrounds/legend_noble_2h", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.33, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.SergeantClassTree,
				this.Const.Perks.TacticianClassTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.CalmTree,
				this.Const.Perks.TrainedTree,
				this.Const.Perks.TalentedTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.MediumArmorTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.BagsAndBelts
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRPatternRecognition
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRExudeConfidence,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.PTRBetweenTheEyes
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBully
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendRelax,
				this.Const.Perks.PerkDefs.Rebound,
				this.Const.Perks.PerkDefs.BattleFlow
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.PolearmTree,
				this.Const.Perks.TwoHandedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.SergeantClassTree,
				this.Const.Perks.TacticianClassTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.CalmTree,
				this.Const.Perks.TrainedTree,
				this.Const.Perks.TalentedTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.FlailTree,
				this.Const.Perks.MediumArmorTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.Pathfinder,
				this.Const.Perks.PerkDefs.BagsAndBelts
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRPatternRecognition
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyBarbarian
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRExudeConfidence,
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.PTRBetweenTheEyes
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBully
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendRelax,
				this.Const.Perks.PerkDefs.Rebound,
				this.Const.Perks.PerkDefs.BattleFlow
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_event_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 3, Tree = this.Const.Perks.TalentedTree}
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree}
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.SwordTree}						
			],
			Class = [
				[
				{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
				{Weight = 50, Tree = this.Const.Perks.TacticianClassTree}
				]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.PolearmTree}],
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}],
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_ranged", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 9, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 3, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 3, Tree = this.Const.Perks.ThrowingTree}						
			],
			Defense = [
				[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.CrossbowTree}],
			],			
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.RangedTree}],
				[{Weight = 100, Tree = this.Const.Perks.OneHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_noble_shield", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
				[
				{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
				{Weight = 50, Tree = this.Const.Perks.HealerClassTree}				
				]

			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_philosopher_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 1.66, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.TrapperClassTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TalentedTree}]
			]
		};
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_premonitionist_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_preserver_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree, [
				this.Const.Perks.AgileTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.SlingsTree,
				this.Const.Perks.SwordTree,
				this.Const.Perks.RangedTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.Student,
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.LegendMedPackages,
				this.Const.Perks.PerkDefs.QuickHands,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleSkill,
				this.Const.Perks.PerkDefs.PTRDeepCuts,
				this.Const.Perks.PerkDefs.BagsAndBelts
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.Gifted,
				this.Const.Perks.PerkDefs.CoupDeGrace,
				this.Const.Perks.PerkDefs.LegendGatherer,
				this.Const.Perks.PerkDefs.RallyTheTroops,
				this.Const.Perks.PerkDefs.LegendPrepareBleed
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.FortifiedMind,
				this.Const.Perks.PerkDefs.LegendSpecialistSickleDamage,
				this.Const.Perks.PerkDefs.Debilitate,		
				this.Const.Perks.PerkDefs.LegendHerbcraft,
				this.Const.Perks.PerkDefs.Lookout,
				this.Const.Perks.PerkDefs.LegendPrepareGraze,											
				this.Const.Perks.PerkDefs.LegendBloodbath
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.ShieldExpert,
				this.Const.Perks.PerkDefs.PTRDismemberment,
				this.Const.Perks.PerkDefs.PTRDiscoveredTalent,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendSpecBandage,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyGhoul,				
				this.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
				this.Const.Perks.PerkDefs.LegendPoisonImmunity,
				this.Const.Perks.PerkDefs.LegendPotionBrewer
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendClarity,				
				this.Const.Perks.PerkDefs.LegendMedIngredients,
				this.Const.Perks.PerkDefs.LegendSlaughter,
				this.Const.Perks.PerkDefs.Duelist,				
				this.Const.Perks.PerkDefs.PTRVigorousAssault,
				this.Const.Perks.PerkDefs.LegendBlendIn,
				this.Const.Perks.PerkDefs.LegendConservation				
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Overwhelm,
				this.Const.Perks.PerkDefs.LegendMindOverBody,
				this.Const.Perks.PerkDefs.LegendAssuredConquest,
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness,				
				this.Const.Perks.PerkDefs.InspiringPresence,				
				this.Const.Perks.PerkDefs.LegendReclamation
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Rebound,
				this.Const.Perks.PerkDefs.PTRRisingStar,
				this.Const.Perks.PerkDefs.Fearsome,								
				this.Const.Perks.PerkDefs.LegendFieldTriage,
				this.Const.Perks.PerkDefs.Inspire,	
				this.Const.Perks.PerkDefs.PerfectFocus,							
				this.Const.Perks.PerkDefs.PTRTunnelVision,
				this.Const.Perks.PerkDefs.PTRMarksmanship
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_puppet_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.5, Tree = this.Const.Perks.CaravanTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.NoblesTree},			
				{Multiplier = 0.33, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},				
				{Multiplier = 0, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 0, Tree = this.Const.Perks.RangedTree}											
			],
			Profession = [
				[
					{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}
				]
			],
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_puppet_master_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree, [
				this.Const.Perks.ResilientTree,
				this.Const.Perks.TalentedTree,
				this.Const.Perks.SturdyTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.HeavyArmorTree,
				this.Const.Perks.CleaverTree,
				this.Const.Perks.MaceTree,
				this.Const.Perks.ThrowingTree,
				this.Const.Perks.TwoHandedTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheSkill,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.PTRDeepImpact,
				this.Const.Perks.PerkDefs.Taunt,
				this.Const.Perks.PerkDefs.PTRRattle,
				this.Const.Perks.PerkDefs.LegendPossession	
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.CoupDeGrace,
				this.Const.Perks.PerkDefs.LegendWither,
				this.Const.Perks.PerkDefs.LegendPrepareBleed,
				this.Const.Perks.PerkDefs.LegendPrepareGraze,
				this.Const.Perks.PerkDefs.PTRMenacing
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendSpecialistScytheDamage,
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.Steadfast,		
				this.Const.Perks.PerkDefs.LegendRust,
				this.Const.Perks.PerkDefs.LegendBloodbath
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendLacerate,
				this.Const.Perks.PerkDefs.PTRDismemberment,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNomad,
				this.Const.Perks.PerkDefs.LegendFavouredEnemySoutherner,
				this.Const.Perks.PerkDefs.LegendMasteryStaves,
				this.Const.Perks.PerkDefs.LegendEfficientPacking,				
				this.Const.Perks.PerkDefs.SunderingStrikes
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Underdog,				
				this.Const.Perks.PerkDefs.LegendInsects,
				this.Const.Perks.PerkDefs.PTRUtilitarian,
				this.Const.Perks.PerkDefs.LegendSlaughter,				
				this.Const.Perks.PerkDefs.LegendSkillfulStacking,
				this.Const.Perks.PerkDefs.PTRBully
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.SunderingStrikes,
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.Berserk,
				this.Const.Perks.PerkDefs.LegendSiphon,				
				this.Const.Perks.PerkDefs.Fearsome
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRTunnelVision,
				this.Const.Perks.PerkDefs.LegendMuscularity,
				this.Const.Perks.PerkDefs.PerfectFocus,								
				this.Const.Perks.PerkDefs.BattleFlow,
				this.Const.Perks.PerkDefs.LegendMiasma,	
				this.Const.Perks.PerkDefs.LegendDeathtouch
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_ranger_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.BowTree,
				this.Const.Perks.ThrowingTree,
				this.Const.Perks.RangedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.AgileTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.FastTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.BeastsTree,
				this.Const.Perks.OrcsTree,
				this.Const.Perks.ArchersTree,
				this.Const.Perks.HoundmasterClassTree,				
				this.Const.Perks.CrossbowTree			
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendMarkTarget,
				this.Const.Perks.PerkDefs.FastAdaption,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.LegendSummonHound,
				this.Const.Perks.PerkDefs.PTRSmallTarget
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendNightvision,
				this.Const.Perks.PerkDefs.LegendOnslaught,
				this.Const.Perks.PerkDefs.SpecSpear,
				this.Const.Perks.PerkDefs.PTRExploitOpening,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.PTRPatience,
				this.Const.Perks.PerkDefs.LegendSummonFalcon,
				this.Const.Perks.PerkDefs.LegendAmmoBinding,
				this.Const.Perks.PerkDefs.PTRFormidableApproach,
				this.Const.Perks.PerkDefs.LegendHairSplitter
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Overwhelm,
				this.Const.Perks.PerkDefs.LegendSummonWolf,
				this.Const.Perks.PerkDefs.LegendAmmoBundles
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendCascade,
				this.Const.Perks.PerkDefs.PTRTwoForOne,	
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness,
				this.Const.Perks.PerkDefs.LegendHidden
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendBigGameHunter,
				this.Const.Perks.PerkDefs.HeadHunter,
				this.Const.Perks.PerkDefs.PTRDeathFromAfar
			]
		);
	});


	::mods_hookNewObject("skills/backgrounds/legend_ranger_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.BowTree,
				this.Const.Perks.ThrowingTree,
				this.Const.Perks.RangedTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.AgileTree,
				this.Const.Perks.ViciousTree,
				this.Const.Perks.FastTree,
				this.Const.Perks.UnstoppableTree,
				this.Const.Perks.BeastsTree,
				this.Const.Perks.OrcsTree,
				this.Const.Perks.ArchersTree,
				this.Const.Perks.HoundmasterClassTree,				
				this.Const.Perks.CrossbowTree			
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendMarkTarget,
				this.Const.Perks.PerkDefs.FastAdaption,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.LegendSummonHound,
				this.Const.Perks.PerkDefs.PTRSmallTarget
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendNightvision,
				this.Const.Perks.PerkDefs.LegendOnslaught,
				this.Const.Perks.PerkDefs.SpecSpear,
				this.Const.Perks.PerkDefs.PTRExploitOpening,
				this.Const.Perks.PerkDefs.Rotation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.DevastatingStrikes,
				this.Const.Perks.PerkDefs.PTRPatience,
				this.Const.Perks.PerkDefs.LegendSummonFalcon,
				this.Const.Perks.PerkDefs.LegendAmmoBinding,
				this.Const.Perks.PerkDefs.PTRFormidableApproach,
				this.Const.Perks.PerkDefs.LegendHairSplitter
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Overwhelm,
				this.Const.Perks.PerkDefs.LegendSummonWolf,
				this.Const.Perks.PerkDefs.LegendAmmoBundles
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendCascade,
				this.Const.Perks.PerkDefs.PTRTwoForOne,	
				this.Const.Perks.PerkDefs.PTRKnowTheirWeakness,
				this.Const.Perks.PerkDefs.LegendHidden
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PerfectFocus,
				this.Const.Perks.PerkDefs.LegendBigGameHunter,
				this.Const.Perks.PerkDefs.HeadHunter,
				this.Const.Perks.PerkDefs.PTRDeathFromAfar
			]
		);
	});

	/* ::mods_hookNewObject("skills/backgrounds/legend_runesmith_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_shieldmaiden_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
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
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/legend_taxidermist_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

	 	addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			 [
			 	 this.Const.Perks.CrossbowTree,
				 this.Const.Perks.SwordTree,
				 this.Const.Perks.SpearTree,
				 this.Const.Perks.OneHandedTree,
				 this.Const.Perks.TwoHandedTree,
				 this.Const.Perks.RangedTree,
				 this.Const.Perks.LightArmorTree,
				 this.Const.Perks.MediumArmorTree,
				 this.Const.Perks.ShieldTree,
				 this.Const.Perks.DeviousTree,
				 this.Const.Perks.TalentedTree,
				 this.Const.Perks.EntertainerClassTree,
				 this.Const.Perks.OrganisedTree,
				 this.Const.Perks.ClerkClassTree,
				 this.Const.Perks.TraderProfessionTree
			 ]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.LegendCheerOn,
				this.Const.Perks.PerkDefs.LegendMedIngredients,
				this.Const.Perks.PerkDefs.LegendMealPreperation,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.FastAdaption
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [				
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRVigilant,
				this.Const.Perks.PerkDefs.LegendPeaceful,
				this.Const.Perks.PerkDefs.LegendShieldsUp				
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.Underdog
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendHoldTheLine
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Rebound
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_trader_commander_background", function(o) {
	 	o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

	 	addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			 [
			 	 this.Const.Perks.CrossbowTree,
				 this.Const.Perks.SwordTree,
				 this.Const.Perks.SpearTree,
				 this.Const.Perks.OneHandedTree,
				 this.Const.Perks.TwoHandedTree,
				 this.Const.Perks.RangedTree,
				 this.Const.Perks.LightArmorTree,
				 this.Const.Perks.MediumArmorTree,
				 this.Const.Perks.ShieldTree,
				 this.Const.Perks.DeviousTree,
				 this.Const.Perks.TalentedTree,
				 this.Const.Perks.EntertainerClassTree,
				 this.Const.Perks.OrganisedTree,
				 this.Const.Perks.ClerkClassTree,
				 this.Const.Perks.TraderProfessionTree
			 ]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendAlert,
				this.Const.Perks.PerkDefs.LegendCheerOn,
				this.Const.Perks.PerkDefs.LegendMedIngredients,
				this.Const.Perks.PerkDefs.LegendMealPreperation,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.FastAdaption
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Anticipation
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [				
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRVigilant,
				this.Const.Perks.PerkDefs.LegendPeaceful,
				this.Const.Perks.PerkDefs.LegendShieldsUp				
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Footwork,
				this.Const.Perks.PerkDefs.Underdog
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendHoldTheLine
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Rebound
			]
		);
	});


 	::mods_hookNewObject("skills/backgrounds/legend_vala_background", function(o) {

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			 [
			 	 this.Const.Perks.ValaSpiritMagicTree,
				 this.Const.Perks.ValaChantMagicTree,
				 this.Const.Perks.ValaTranceMagicTree,
				 this.Const.Perks.CalmTree,
				 this.Const.Perks.TalentedTree,
				 this.Const.Perks.SergeantClassTree,
				 this.Const.Perks.LightArmorTree,
				 this.Const.Perks.TwoHandedTree,
				 this.Const.Perks.StavesTree,
			 ]
		);
	});

	::mods_hookNewObject("skills/backgrounds/legend_vala_commander_background", function(o) {

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
	 		[
		 		this.Const.Perks.ValaSpiritMagicTree,
		 		this.Const.Perks.ValaChantMagicTree,
		 		this.Const.Perks.ValaTranceMagicTree,
		 		this.Const.Perks.CalmTree,
		 		this.Const.Perks.TalentedTree,
		 		this.Const.Perks.SergeantClassTree,
		 		this.Const.Perks.LightArmorTree,
		 		this.Const.Perks.TwoHandedTree,
		 		this.Const.Perks.StavesTree,
	 		]
	 	);
	});

	// ::mods_hookNewObject("skills/backgrounds/legend_warlock_background", function(o) {
	// 	o.m.PerkTreeDynamic = {			
	// 		WeightMultipliers = [
	// 			{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
	// 			{Multiplier = 0, Tree = this.Const.Perks.ViciousTree},
	// 			{Multiplier = 0, Tree = this.Const.Perks.CalmTree},
	// 			{Multiplier = 0, Tree = this.Const.Perks.TalentedTree},
	// 			{Multiplier = 0, Tree = this.Const.Perks.UnstoppableTree},				
	// 			{Multiplier = 0.2, Tree = this.Const.Perks.ChefClassTree},
	// 			{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
	// 			{Multiplier = 0.25, Tree = this.Const.Perks.AxeTree}
	// 		],
	// 		Profession = [
	// 			[{Weight = 100, Tree = this.Const.Perks.WarlockMagicTree}]
	// 		],
	// 		Class = [
	// 			[{Weight = 100, Tree = this.Const.Perks.HealerClassTree}]
	// 		],
	// 		Weapon = [
	// 			[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
	// 		],
	// 		Defense = [
	// 			[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
	// 		],
	// 		Styles = [
	// 			[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
	// 		],
	// 	};
	// });

	::mods_hookNewObject("skills/backgrounds/legend_warlock_summoner_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree, [
				this.Const.Perks.TalentedTree,
				this.Const.Perks.ChefClassTree,
				this.Const.Perks.LightArmorTree,
				this.Const.Perks.MediumArmorTree,
				this.Const.Perks.CleaverTree,
				this.Const.Perks.PolearmTree,
				this.Const.Perks.StavesTree,
				this.Const.Perks.TwoHandedTree
			]
		);


		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.CripplingStrikes,
				this.Const.Perks.PerkDefs.LegendSpawnZombieLow,
				this.Const.Perks.PerkDefs.NineLives,
				this.Const.Perks.PerkDefs.BagsAndBelts,
				this.Const.Perks.PerkDefs.Recover,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheSkill
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.CoupDeGrace,
				this.Const.Perks.PerkDefs.Backstabber,
				this.Const.Perks.PerkDefs.LegendPrepareBleed,
				this.Const.Perks.PerkDefs.LegendPrepareGraze,
				this.Const.Perks.PerkDefs.QuickHands
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.HoldOut,
				this.Const.Perks.PerkDefs.Debilitate,
				this.Const.Perks.PerkDefs.LegendEfficientPacking,		
				this.Const.Perks.PerkDefs.Rotation,
				this.Const.Perks.PerkDefs.LegendSpecialistScytheDamage,
				this.Const.Perks.PerkDefs.LegendBloodbath				
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRDismemberment,
				this.Const.Perks.PerkDefs.ShieldExpert,
				this.Const.Perks.PerkDefs.PTRVigilant,
				this.Const.Perks.PerkDefs.LegendSpecPoison,
				this.Const.Perks.PerkDefs.LegendLacerate,
				this.Const.Perks.PerkDefs.LegendSpawnZombieMed,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyCaravan,				
				this.Const.Perks.PerkDefs.LegendFavouredEnemyBandit,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyNoble				
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendBlendIn,				
				this.Const.Perks.PerkDefs.Underdog,
				this.Const.Perks.PerkDefs.LegendSkillfulStacking,
				this.Const.Perks.PerkDefs.LegendReclamation,				
				this.Const.Perks.PerkDefs.LegendSlaughter
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Duelist,
				this.Const.Perks.PerkDefs.LegendClarity,
				this.Const.Perks.PerkDefs.LegendHidden
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.Fearsome,
				this.Const.Perks.PerkDefs.PTRTunnelVision,
				this.Const.Perks.PerkDefs.PerfectFocus,								
				this.Const.Perks.PerkDefs.LegendSpawnZombieHigh,
				this.Const.Perks.PerkDefs.LegendExtendendAura
			]
		);
	});

	// ::mods_hookNewObject("skills/backgrounds/legend_witch_background", function(o) {
	// 	o.m.PerkTreeDynamic = {			
	// 		WeightMultipliers = [
	// 		],
	// 		Traits = [
	// 			[{Weight = 100, Tree = this.Const.Perks.TalentedTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.CalmTree}]
	// 		],
	// 		Defense = [
	// 			[{Weight = 100, Tree = this.Const.Perks.LightArmorTree}]
	// 		],
	// 		Weapon = [
	// 			[{Weight = 100, Tree = this.Const.Perks.StavesTree}]
	// 		],
	// 		Styles = [
	// 			[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
	// 		],
	// 		Magic = [
	// 			[{Weight = 100, Tree = this.Const.Perks.PremonitionMagicTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.PhilosophyMagicTree}],
	// 			[{Weight = 100, Tree = this.Const.Perks.InventorMagicTree}]
	// 		]
	// 	};
	// });

	::mods_hookNewObject("skills/backgrounds/legend_witch_commander_background", function(o) {

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
	 		[
	 			this.Const.Perks.TalentedTree,
	 			this.Const.Perks.StavesTree,
	 			this.Const.Perks.TwoHandedTree
	 		]
	 	);

	 	addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.LegendFavouredEnemyAlps,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyHexen,
				this.Const.Perks.PerkDefs.LegendFavouredEnemyVampire				
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/lumberjack_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.LumberjackProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/mage_background", function(o) {
		o.m.PerkTreeDynamic = null;

		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

		addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.StavesTree,
				this.Const.Perks.TalentedTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBloodyHarvest
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRFormidableApproach
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRSweepingStrikes,
				this.Const.Perks.PerkDefs.ReachAdvantage,
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [				
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/mage_legend_mage_commander_background", function(o) {
		o.m.CustomPerkTree = clearCustomPerkTree(o.m.CustomPerkTree);

	 	addPerkTreesToCustomPerkTree(o.m.CustomPerkTree,
			[
				this.Const.Perks.StavesTree,
				this.Const.Perks.TalentedTree
			]
		);

		addPerksToCustomPerkTree(1, o.m.CustomPerkTree, [

			]
		);

		addPerksToCustomPerkTree(2, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRBloodyHarvest
			]
		);

		addPerksToCustomPerkTree(3, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRFormidableApproach
			]
		);

		addPerksToCustomPerkTree(4, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(5, o.m.CustomPerkTree, [
				this.Const.Perks.PerkDefs.PTRSweepingStrikes,
				this.Const.Perks.PerkDefs.ReachAdvantage,
			]
		);

		addPerksToCustomPerkTree(6, o.m.CustomPerkTree, [
			]
		);

		addPerksToCustomPerkTree(7, o.m.CustomPerkTree, [				
			]
		);
	});

	::mods_hookNewObject("skills/backgrounds/manhunter_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.NomadsTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.HealerClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.MaceTree},				
				{Multiplier = 4, Tree = this.Const.Perks.CleaverTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree}
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
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MilitiaProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/miller_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.MinerProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/minstrel_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/nomad_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.SouthernersTree},
				{Multiplier = 2, Tree = this.Const.Perks.ResilientTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.ScoutClassTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.RaiderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/nomad_ranged_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			],
			Weapon = [
				[
					{Weight = 25, Tree = this.Const.Perks.BowTree},
					{Weight = 25, Tree = this.Const.Perks.CrossbowTree},
					{Weight = 25, Tree = this.Const.Perks.SlingsTree},
					{Weight = 25, Tree = this.Const.Perks.ThrowingTree}									
				]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/old_gladiator_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TacticianClassTree},
				{Multiplier = 3, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 20, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 10, Tree = this.Const.Perks.SoldierProfessionTree},
					{Weight = 70, Tree = this.Const.Perks.NoTree}
				]
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
				{Multiplier = 0, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 0, Tree = this.Const.Perks.SpearTree}
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
			WeightMultipliers = [
			]
		};
	}); */

	::mods_hookNewObject("skills/backgrounds/peddler_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.TraderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/peddler_southern_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.TraderProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/pilgrim_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 4, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.SergeantClassTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.HealerClassTree}			
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.HolyManProfessionTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/pimp_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
			],
			Weapon = [
				[{Weight = 100, Tree = this.Const.Perks.BowTree}]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/raider_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
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
			WeightMultipliers = [
				{Multiplier = 0.66, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.FastTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.SoldierProfessionTree}]
			],
			Class = [
				[
				{Weight = 50, Tree = this.Const.Perks.SergeantClassTree},
				{Weight = 50, Tree = this.Const.Perks.TacticianClassTree}
				]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/sellsword_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.MercenaryTree},
				{Multiplier = 0.1, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[
					{Weight = 60, Tree = this.Const.Perks.RaiderProfessionTree},
					{Weight = 25, Tree = this.Const.Perks.SoldierProfessionTree},
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
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.CalmTree},
				{Multiplier = 0.2, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 0.25, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 2, Tree = this.Const.Perks.HeavyArmorTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SpearTree}
			],
			Profession = [
				[{Weight = 30, Tree = this.Const.Perks.SoldierProfessionTree}],
				[{Weight = 70, Tree = this.Const.Perks.NoTree}]
			],
			Traits = [
				[{Weight = 100, Tree = this.Const.Perks.TrainedTree}]				
			],
			Class = [
				[
					{Weight = 75, Tree = this.Const.Perks.SergeantClassTree},
					{Weight = 25, Tree = this.Const.Perks.TacticianClassTree}
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
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.ThrowingTree},
				{Multiplier = 2, Tree = this.Const.Perks.PolearmTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree},
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
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree}
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/wildwoman_background", function(o) {
		o.m.PerkTreeDynamic = {			
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
				{Multiplier = 0.66, Tree = this.Const.Perks.SpearTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 0.5, Tree = this.Const.Perks.DaggerTree},
				{Multiplier = 2, Tree = this.Const.Perks.StavesTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree}
			],
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/witchhunter_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 0, Tree = this.Const.Perks.DeviousTree},
				{Multiplier = 2, Tree = this.Const.Perks.TalentedTree},
				{Multiplier = 0, Tree = this.Const.Perks.OrganisedTree},
				{Multiplier = 3, Tree = this.Const.Perks.BowTree}
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
				[{Weight = 100, Tree = this.Const.Perks.CrossbowTree}]
			]
			Styles = [
				[{Weight = 100, Tree = this.Const.Perks.TwoHandedTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_alchemist_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
			],
			Profession = [
				[{Weight = 100, Tree = this.Const.Perks.ApothecaryProfessionTree}]
			],
			Enemy = [
				[{Weight = 100, Tree = this.Const.Perks.MysticTree}]
			]
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_dervish_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.BarbarianTree},
				{Multiplier = 2, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.UnstoppableTree},
				{Multiplier = 2, Tree = this.Const.Perks.TrainedTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 1.5, Tree = this.Const.Perks.MediumArmorTree},
				{Multiplier = 2, Tree = this.Const.Perks.TwoHandedTree},
				{Multiplier = 2, Tree = this.Const.Perks.SwordTree},
				{Multiplier = 2, Tree = this.Const.Perks.CleaverTree},
				{Multiplier = 0, Tree = this.Const.Perks.BowTree},
				{Multiplier = 0, Tree = this.Const.Perks.CrossbowTree},
				{Multiplier = 0, Tree = this.Const.Perks.SlingsTree}
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
			],
			Weapon = [
				[
					{Weight = 25, Tree = this.Const.Perks.BowTree},
					{Weight = 25, Tree = this.Const.Perks.CrossbowTree},
					{Weight = 25, Tree = this.Const.Perks.SlingsTree},
					{Weight = 25, Tree = this.Const.Perks.ThrowingTree}									
				]
			]			
		};
	});

	::mods_hookNewObject("skills/backgrounds/legend_qiyan_background", function(o) {
		o.m.PerkTreeDynamic = {			
			WeightMultipliers = [
				{Multiplier = 3, Tree = this.Const.Perks.ViciousTree},
				{Multiplier = 2, Tree = this.Const.Perks.AgileTree},
				{Multiplier = 2, Tree = this.Const.Perks.FastTree},
				{Multiplier = 3, Tree = this.Const.Perks.LightArmorTree},
				{Multiplier = 0.66, Tree = this.Const.Perks.ShieldTree},
				{Multiplier = 3, Tree = this.Const.Perks.DaggerTree},
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
