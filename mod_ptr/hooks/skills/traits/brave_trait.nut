::mods_hookExactClass("skills/traits/brave_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.SergeantClassTree]
		];
	}
});
