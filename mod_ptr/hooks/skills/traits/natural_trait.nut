::mods_hookExactClass("skills/traits/natural_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.TalentedTree]
		];
	}
});
