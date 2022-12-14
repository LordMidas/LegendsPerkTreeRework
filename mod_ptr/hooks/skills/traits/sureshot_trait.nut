::mods_hookExactClass("skills/traits/sureshot_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[-1, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.BowTree],
			[-1, ::Const.Perks.CrossbowTree],
			[-1, ::Const.Perks.RangedTree]
		];
	}
});
