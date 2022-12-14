::mods_hookExactClass("skills/traits/tough_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[-1, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[4, ::Const.Perks.LargeTree],
			[-1, ::Const.Perks.SturdyTree],
			[2, ::Const.Perks.ResilientTree]
		];
	}
});
