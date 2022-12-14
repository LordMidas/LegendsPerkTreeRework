::mods_hookExactClass("skills/backgrounds/anatomist_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.LargeTree],
			[0.5, ::Const.Perks.SturdyTree],
			[3, ::Const.Perks.TalentedTree],
			[0, ::Const.Perks.EntertainerClassTree],
			[3, ::Const.Perks.HealerClassTree],
			[0, ::Const.Perks.HoundmasterClassTree],
			[0, ::Const.Perks.BowTree],
			[0.4, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.RangedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ApothecaryProfessionTree
			],
			Enemy = [
				::MSU.Class.WeightedContainer([
					[8, ::Const.Perks.DirewolfTree],
					[8, ::Const.Perks.GhoulTree],
					[9, ::Const.Perks.LindwurmTree],
					[8, ::Const.Perks.GoblinTree],
					[8, ::Const.Perks.OrcTree],
					[8, ::Const.Perks.UnholdTree],
					[8, ::Const.Perks.AlpTree],
					[9, ::Const.Perks.HexenTree],
					[9, ::Const.Perks.SchratTree],
					[8, ::Const.Perks.SkeletonTree],
					[9, ::Const.Perks.VampireTree],
					[8, ::Const.Perks.ZombieTree]
				])
			]
		};
	}
});
