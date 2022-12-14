::mods_hookExactClass("skills/traits/clubfooted_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.AgileTree],
			[0.5, ::Const.Perks.FastTree]
		];
	}
});
