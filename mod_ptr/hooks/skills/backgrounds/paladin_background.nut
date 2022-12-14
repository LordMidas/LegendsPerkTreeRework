::mods_hookExactClass("skills/backgrounds/paladin_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.2, ::Const.Perks.AgileTree],
			[0, ::Const.Perks.DeviousTree],
			[1.2, ::Const.Perks.FastTree],
			[0, ::Const.Perks.OrganisedTree],
			[1.33, ::Const.Perks.TrainedTree],
			[1.5, ::Const.Perks.MenderClassTree],
			[1.5, ::Const.Perks.SergeantClassTree],
			[1.5, ::Const.Perks.TacticianClassTree],
			[0, ::Const.Perks.LightArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0, ::Const.Perks.RangedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[5, ::Const.Perks.SoldierProfessionTree],
					[5, ::Const.Perks.MilitiaProfessionTree],
					[3, ::Const.Perks.RaiderProfessionTree],
					[1, ::Const.Perks.NobleProfessionTree],
					[1, ::Const.Perks.WildlingProfessionTree],
					[1, ::Const.Perks.JugglerProfessionTree],
					[5, ::Const.Perks.ButcherProfessionTree],
					[5, ::Const.Perks.DiggerProfessionTree],
					[5, ::Const.Perks.FarmerProfessionTree],
					[5, ::Const.Perks.LaborerProfessionTree],
					[5, ::Const.Perks.LumberjackProfessionTree],
					[5, ::Const.Perks.MinerProfessionTree],
					[54, ::Const.Perks.NoTree]
				])
			]
		};
	}
});
