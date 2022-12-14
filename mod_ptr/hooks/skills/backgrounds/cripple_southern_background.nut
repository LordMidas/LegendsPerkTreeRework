::mods_hookExactClass("skills/backgrounds/cripple_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.FastTree],
			[0.5, ::Const.Perks.AgileTree],
			[0.5, ::Const.Perks.SturdyTree],
			[2, ::Const.Perks.ResilientTree],
			[0, ::Const.Perks.EntertainerClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[99, ::Const.Perks.PauperProfessionTree],
					[0.25, ::Const.Perks.ApothecaryProfessionTree],
					[0.25, ::Const.Perks.JugglerProfessionTree],
					[0.25, ::Const.Perks.MinstrelProfessionTree],
					[0.25, ::Const.Perks.AssassinProfessionTree]
				])
			]
		};
	}
});
