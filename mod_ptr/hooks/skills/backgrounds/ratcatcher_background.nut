::mods_hookExactClass("skills/backgrounds/ratcatcher_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[5, ::Const.Perks.FastTree],
			[5, ::Const.Perks.AgileTree],
			[2, ::Const.Perks.ViciousTree]
		];

		this.m.PerkTreeDynamic = {
			Class = [
				::Const.Perks.TrapperClassTree
			]
		};
	}
});
