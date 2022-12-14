::mods_hookExactClass("skills/traits/clumsy_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRRisingStar],
			[0, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];
	}
});
