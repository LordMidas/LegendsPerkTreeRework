::mods_hookExactClass("skills/traits/dastard_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.SergeantClassTree],
			[0, ::Const.Perks.CalmTree]
		];
	}
});
