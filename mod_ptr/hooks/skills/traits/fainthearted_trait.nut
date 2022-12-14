::mods_hookExactClass("skills/traits/fainthearted_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRRisingStar],
			[0.5, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.CalmTree]
		];
	}
});
