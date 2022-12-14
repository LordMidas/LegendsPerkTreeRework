::mods_hookExactClass("skills/backgrounds/companion_2h_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.CalmTree],
			[0.25, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.DeviousTree],
			[0.5, ::Const.Perks.FastTree],
			[0.5, ::Const.Perks.AgileTree],
			[0, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[6, ::Const.Perks.MilitiaProfessionTree],
					[6, ::Const.Perks.ButcherProfessionTree],
					[6, ::Const.Perks.BlacksmithProfessionTree],
					[6, ::Const.Perks.MinerProfessionTree],
					[6, ::Const.Perks.FarmerProfessionTree],
					[6, ::Const.Perks.DiggerProfessionTree],
					[6, ::Const.Perks.LumberjackProfessionTree],
					[6, ::Const.Perks.LaborerProfessionTree],
					[6, ::Const.Perks.SoldierProfessionTree],
					[1, ::Const.Perks.JugglerProfessionTree],
					[43, ::Const.Perks.NoTree]
				])
			],
			Defense = [
				::Const.Perks.HeavyArmorTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
