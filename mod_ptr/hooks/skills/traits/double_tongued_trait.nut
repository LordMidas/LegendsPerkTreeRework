::mods_hookExactClass("skills/traits/double_tongued_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0.5, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.ClerkClassTree],
			[2, ::Const.Perks.EntertainerClassTree]
		];
	}
});
