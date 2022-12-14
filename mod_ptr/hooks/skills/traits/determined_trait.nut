::mods_hookExactClass("skills/traits/determined_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar],
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.ViciousTree]
		];
	}
});
