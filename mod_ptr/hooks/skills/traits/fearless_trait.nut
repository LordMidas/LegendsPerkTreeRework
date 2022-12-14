::mods_hookExactClass("skills/traits/fearless_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.CalmTree],
			[4, ::Const.Perks.SergeantClassTree]
		];
	}
});
