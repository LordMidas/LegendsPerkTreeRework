::mods_hookExactClass("skills/traits/asthmatic_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.UnstoppableTree],
			[0, ::Const.Perks.FastTree],
			[0, ::Const.Perks.AgileTree]
		];
	}
});
