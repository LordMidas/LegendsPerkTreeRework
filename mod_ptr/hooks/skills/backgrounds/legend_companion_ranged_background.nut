::mods_hookExactClass("skills/backgrounds/legend_companion_ranged_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.HeavyArmorTree]
		];

		local trees = [
			::Const.Perks.BowTree,
			::Const.Perks.CrossbowTree,
			::Const.Perks.SlingTree,
			::Const.Perks.ThrowingTree
		];

		for (local i = 0; i < 1; ++i)
		{
			::PTR.HooksHelper.addPerkTreesToCustomPerkTree(this.m.CustomPerkTree, [trees.remove(::Math.rand(0, trees.len()-1))]);
		}

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[10, ::Const.Perks.ApothecaryProfessionTree],
					[10, ::Const.Perks.JugglerProfessionTree],
					[10, ::Const.Perks.LaborerProfessionTree],
					[10, ::Const.Perks.MilitiaProfessionTree],
					[10, ::Const.Perks.NobleProfessionTree],
					[5, ::Const.Perks.MinstrelProfessionTree],
					[5, ::Const.Perks.TraderProfessionTree],
					[40, ::Const.Perks.NoTree]
				])
			]
		};
	}
});
