::mods_hookExactClass("skills/traits/bloodthirsty_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.CleaverTree],
			[2, ::Const.Perks.AxeTree],
			[0.5, ::Const.Perks.SpearTree]
		];
	}
});
