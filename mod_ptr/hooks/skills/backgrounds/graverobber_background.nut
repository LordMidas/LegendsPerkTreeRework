::mods_hookExactClass("skills/backgrounds/graverobber_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.SkeletonTree],
			[1.5, ::Const.Perks.ZombieTree],
			[1.5, ::Const.Perks.VampireTree],
			[2, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.DeviousTree],
			[2, ::Const.Perks.SergeantClassTree]
		];

		this.m.PerkTreeDynamic = {};
	}
});
