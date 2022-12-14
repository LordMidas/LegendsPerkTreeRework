::mods_hookExactClass("skills/backgrounds/fisherman_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.LargeTree],
			[0.75, ::Const.Perks.ResilientTree],
			[0.5, ::Const.Perks.SturdyTree],
			[1.5, ::Const.Perks.OrganisedTree],
			[1.5, ::Const.Perks.ChefClassTree],
			[1.25, ::Const.Perks.SpearTree],
			[0.66, ::Const.Perks.ThrowingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[30, ::Const.Perks.ButcherProfessionTree],
					[30, ::Const.Perks.LaborerProfessionTree],
					[10, ::Const.Perks.TraderProfessionTree],
					[30, ::Const.Perks.NoTree]
				])
			],
			Class = [
				::Const.Perks.TrapperClassTree
			]
		};
	}
});
