::mods_hookExactClass("skills/traits/pragmatic_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0.25, ::Const.Perks.FlailTree]
		];
	}
});
