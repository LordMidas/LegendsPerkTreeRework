::mods_hookExactClass("skills/traits/sure_footing_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.TrainedTree],
			[2, ::Const.Perks.SturdyTree],
			[2, ::Const.Perks.ResilientTree]
		];
	}
});
