::mods_hookExactClass("skills/traits/cocky_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.UnstoppableTree],
			[2, ::Const.Perks.SergeantClassTree],
			[1.5, ::Const.Perks.EntertainerClassTree]
		];
	}
});
