::mods_hookExactClass("skills/traits/gift_of_people_trait", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers = [
			[2, ::Const.Perks.SergeantClassTree],
			[4, ::Const.Perks.EntertainerClassTree]
		];
	}
});
