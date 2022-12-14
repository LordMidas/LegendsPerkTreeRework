::mods_hookExactClass("skills/traits/slack_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRRisingStar],
			[0.5, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];
	}
});
