::mods_hookExactClass("skills/backgrounds/female_adventurous_noble_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.ResilientTree],
			[0.25, ::Const.Perks.LargeTree],
			[0.25, ::Const.Perks.SturdyTree],
			[0.5, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.MediumArmorTree],
			[3, ::Const.Perks.CrossbowTree],
			[0.33, ::Const.Perks.SlingTree],
			[1.5, ::Const.Perks.PolearmTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.NobleProfessionTree
			],
			Traits = [
				::Const.Perks.AgileTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.SergeantClassTree],
					[50, ::Const.Perks.TacticianClassTree]
				])
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::Const.Perks.BowTree
			],
			Styles = [
				::Const.Perks.RangedTree
			]
		};
	}
});
