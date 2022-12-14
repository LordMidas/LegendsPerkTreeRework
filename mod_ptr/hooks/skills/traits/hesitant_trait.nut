::mods_hookExactClass("skills/traits/hesitant_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0, ::Const.Perks.FastTree]
		];
	}
});
