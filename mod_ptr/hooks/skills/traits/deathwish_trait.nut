::mods_hookExactClass("skills/traits/deathwish_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.ResilientTree],
			[2, ::Const.Perks.SturdyTree]
		];
	}
});
