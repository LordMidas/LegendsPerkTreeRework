::mods_hookExactClass("skills/backgrounds/adventurous_noble_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.DeviousTree],
			[0.33, ::Const.Perks.LightArmorTree],
			[3, ::Const.Perks.HeavyArmorTree],
			[2, ::Const.Perks.PolearmTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree],
			[1.25, ::Const.Perks.TrainedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.NobleProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.SergeantClassTree],
					[50, ::Const.Perks.TacticianClassTree]
				])
			],
			Defense = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.MediumArmorTree],
					[50, ::Const.Perks.HeavyArmorTree]
				])
			],
			Weapon = [
				::Const.Perks.SwordTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
