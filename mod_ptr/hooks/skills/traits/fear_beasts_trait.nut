::mods_hookExactClass("skills/traits/fear_beasts_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];
	}
});
