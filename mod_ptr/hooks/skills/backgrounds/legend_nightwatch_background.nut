::mods_hookExactClass("skills/backgrounds/legend_nightwatch_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.TrainedTree],
			[2, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.LightArmorTree],
			[3, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.ScoutClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.MilitiaProfessionTree
			]
		};
	}
});
