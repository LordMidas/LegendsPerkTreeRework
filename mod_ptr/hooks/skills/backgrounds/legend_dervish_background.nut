::mods_hookExactClass("skills/backgrounds/legend_dervish_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.BarbarianTree],
			[2, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.UnstoppableTree],
			[2, ::Const.Perks.TrainedTree],
			[1.5, ::Const.Perks.LightArmorTree],
			[1.5, ::Const.Perks.MediumArmorTree],
			[2, ::Const.Perks.TwoHandedTree],
			[2, ::Const.Perks.SwordTree],
			[2, ::Const.Perks.CleaverTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HolyManProfessionTree
			],
			Class = [
				::Const.Perks.SergeantClassTree
			],
			Styles = [
				::Const.Perks.OneHandedTree
			]
		};
	}
});
