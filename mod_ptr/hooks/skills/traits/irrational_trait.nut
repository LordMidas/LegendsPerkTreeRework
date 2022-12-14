::mods_hookExactClass("skills/traits/irrational_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.EntertainerClassTree]
		];
	}
});
