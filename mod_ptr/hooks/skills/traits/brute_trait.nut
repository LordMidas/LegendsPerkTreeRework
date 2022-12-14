::mods_hookExactClass("skills/traits/brute_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[4, ::Const.Perks.FlailTree]
		];
	}
});
