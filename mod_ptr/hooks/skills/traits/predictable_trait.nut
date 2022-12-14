::mods_hookExactClass("skills/traits/predictable_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[0.75, ::Const.Perks.FastTree],
			[0.5, ::Const.Perks.FlailTree]
		];
	}
});
