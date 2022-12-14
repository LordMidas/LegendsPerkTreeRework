::mods_hookExactClass("skills/traits/legend_peaceful_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.ViciousTree],
			[0, ::Const.Perks.UnstoppableTree],
			[-1, ::Const.Perks.CalmTree],
			[4, ::Const.Perks.SergeantClassTree],
			[2, ::Const.Perks.OrganisedTree]
		];
	}
});
