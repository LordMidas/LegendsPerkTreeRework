::mods_hookExactClass("skills/backgrounds/slave_barbarian_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.SouthernersTree],
			[0.4, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.CalmTree],
			[5, ::Const.Perks.ResilientTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.RaiderProfessionTree],
					[50, ::Const.Perks.WildlingProfessionTree]
				])
			]
		};
	}
});
