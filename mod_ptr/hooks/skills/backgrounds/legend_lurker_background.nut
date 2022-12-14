::mods_hookExactClass("skills/backgrounds/legend_lurker_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0, ::Const.Perks.SergeantClassTree],
			[3, ::Const.Perks.ScoutClassTree],
			[3, ::Const.Perks.MediumArmorTree],
			[9, ::Const.Perks.BowTree],
			[2.4, ::Const.Perks.CrossbowTree],
			[3, ::Const.Perks.SlingTree],
			[0.5, ::Const.Perks.StaffTree],
			[3, ::Const.Perks.ThrowingTree],
			[2, ::Const.Perks.OneHandedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.CultistProfessionTree
			],
			Traits = [
				::Const.Perks.AgileTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::MSU.Class.WeightedContainer([
					[25, ::Const.Perks.BowTree],
					[25, ::Const.Perks.CrossbowTree],
					[25, ::Const.Perks.SlingTree],
					[25, ::Const.Perks.ThrowingTree]
				])
			],
			Styles = [
				::Const.Perks.RangedTree
			]
		};
	}
});
