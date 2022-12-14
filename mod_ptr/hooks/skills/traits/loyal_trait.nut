::mods_hookExactClass("skills/traits/loyal_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.ResilientTree]
		];
	}
});
