::mods_hookExactClass("skills/traits/short_sighted_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[0.5, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.ScoutClassTree]
		];
	}
});
