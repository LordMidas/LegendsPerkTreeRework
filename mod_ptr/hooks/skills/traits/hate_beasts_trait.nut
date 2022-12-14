::mods_hookExactClass("skills/traits/hate_beasts_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[4, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];
	}
});
