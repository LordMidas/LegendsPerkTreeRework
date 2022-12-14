::mods_hookExactClass("skills/traits/strong_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.PTRManOfSteel]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.UnstoppableTree],
			[2, ::Const.Perks.LargeTree]
		];
	}
});
