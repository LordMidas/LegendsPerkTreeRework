::mods_hookExactClass("skills/backgrounds/legend_man_at_arms_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.8, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.SlingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SoldierProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[80, ::Const.Perks.SergeantClassTree],
					[20, ::Const.Perks.TacticianClassTree]
				])
			]
		};
	}
});
