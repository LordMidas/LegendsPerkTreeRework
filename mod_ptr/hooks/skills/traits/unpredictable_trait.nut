::mods_hookExactClass("skills/traits/unpredictable_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar],
			[2, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[4, ::Const.Perks.FlailTree]
		];
	}
});
