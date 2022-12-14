::mods_hookExactClass("skills/traits/heavy_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[0 ::Const.Perks.FastTree],
			[0.25, ::Const.Perks.AgileTree],
			[-1, ::Const.Perks.LargeTree],
			[2, ::Const.Perks.SturdyTree]
		];
	}
});
