::mods_hookExactClass("skills/traits/iron_lungs_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.UnstoppableTree],
			[2, ::Const.Perks.ViciousTree]
		];
	}
});
