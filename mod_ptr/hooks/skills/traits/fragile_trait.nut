::mods_hookExactClass("skills/traits/fragile_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.SturdyTree],
			[0, ::Const.Perks.ResilientTree]
		];
	}
});
