::mods_hookExactClass("skills/traits/legend_cannibalistic", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[-1, ::Const.Perks.CleaverTree]
		];
	}
});
