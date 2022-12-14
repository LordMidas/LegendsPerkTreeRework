::mods_hookExactClass("skills/traits/bright_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar]
		];

		this.m.PerkGroupMultipliers = [
			[4, ::Const.Perks.TalentedTree]
		];
	}
});
