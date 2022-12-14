::mods_hookExactClass("skills/traits/disloyal_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0.5, ::Const.Perks.SergeantClassTree]
		];
	}
});
