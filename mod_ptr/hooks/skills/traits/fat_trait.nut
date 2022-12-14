::mods_hookExactClass("skills/traits/fat_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.AgileTree],
			[0.5, ::Const.Perks.FastTree]
		];
	}
});
