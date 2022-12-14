::mods_hookExactClass("skills/traits/steady_hands_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[4, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.RangedTree],
			[2, ::Const.Perks.BowTree],
			[2, ::Const.Perks.CrossbowTree]
		];
	}
});
