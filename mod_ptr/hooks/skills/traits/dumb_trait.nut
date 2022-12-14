::mods_hookExactClass("skills/traits/dumb_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRRisingStar]
		];

		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.TalentedTree]
		];
	}
});
