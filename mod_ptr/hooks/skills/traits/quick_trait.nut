::mods_hookExactClass("skills/traits/quick_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.SwordTree],
			[-1, ::Const.Perks.FastTree]
		];
	}
});
