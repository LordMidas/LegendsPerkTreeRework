::mods_hookExactClass("skills/traits/impatient_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.FastTree]
		];
	}
});
