::mods_hookExactClass("skills/traits/lucky_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar],
			[2, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.ResilientTree]
		];
	}
});
