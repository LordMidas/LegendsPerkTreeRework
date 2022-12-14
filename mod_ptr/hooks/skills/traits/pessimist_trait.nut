::mods_hookExactClass("skills/traits/pessimist_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.SergeantClassTree],
			[0.5, ::Const.Perks.CalmTree]
		];
	}
});
