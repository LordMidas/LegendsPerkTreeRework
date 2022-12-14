::mods_hookExactClass("skills/backgrounds/legend_pilgrim_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[4, ::Const.Perks.DeviousTree],
			[0.2, ::Const.Perks.SergeantClassTree],
			[0.2, ::Const.Perks.HealerClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HolyManProfessionTree
			]
		};
	}
});
