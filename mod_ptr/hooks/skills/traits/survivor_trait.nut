::mods_hookExactClass("skills/traits/survivor_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.ResilientTree],
			[2, ::Const.Perks.SturdyTree]
		];
	}
});
