::mods_hookExactClass("skills/traits/iron_jaw_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[-1, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.SturdyTree],
			[-1, ::Const.Perks.ResilientTree]
		];
	}
});
