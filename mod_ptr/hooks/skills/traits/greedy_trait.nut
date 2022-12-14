::mods_hookExactClass("skills/traits/greedy_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.ClerkClassTree]
		];
	}
});
