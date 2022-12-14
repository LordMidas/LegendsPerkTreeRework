::mods_hookExactClass("skills/traits/light_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.RangedTree],
			[4, ::Const.Perks.FastTree],
			[4, ::Const.Perks.AgileTree]
		];
	}
});
