::mods_hookExactClass("skills/traits/paranoid_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.ResilientTree],
			[0, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.SergeantClassTree]
		];
	}
});
