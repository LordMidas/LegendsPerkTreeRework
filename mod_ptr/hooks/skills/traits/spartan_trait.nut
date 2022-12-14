::mods_hookExactClass("skills/traits/spartan_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[0.75, ::Const.Perks.ResilientTree],
			[0.5, ::Const.Perks.SturdyTree]
		];
	}
});
