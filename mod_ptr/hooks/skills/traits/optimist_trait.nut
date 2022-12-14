::mods_hookExactClass("skills/traits/optimist_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.SergeantClassTree]
		];
	}
});
