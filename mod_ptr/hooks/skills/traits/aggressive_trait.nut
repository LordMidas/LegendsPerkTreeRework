::mods_hookExactClass("skills/traits/aggressive_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.ViciousTree],
			[-1, ::Const.Perks.UnstoppableTree]
		];
	}
});
