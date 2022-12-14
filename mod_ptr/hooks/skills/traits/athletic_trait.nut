::mods_hookExactClass("skills/traits/athletic_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.AgileTree],
			[2, ::Const.Perks.FastTree]
		];
	}
});
