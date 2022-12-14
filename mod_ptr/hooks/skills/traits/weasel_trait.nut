::mods_hookExactClass("skills/traits/weasel_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.FastTree],
			[2, ::Const.Perks.AgileTree]
		];
	}
});
