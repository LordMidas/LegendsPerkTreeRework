::mods_hookExactClass("skills/traits/dexterous_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRRisingStar]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.TrainedTree],
			[2, ::Const.Perks.TalentedTree]
		];
	}
});
