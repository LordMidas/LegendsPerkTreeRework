::mods_hookExactClass("skills/traits/eagle_eyes_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter],
			[4, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.BowTree],
			[4, ::Const.Perks.ScoutClassTree]
		];
	}
});
