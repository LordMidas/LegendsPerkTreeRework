::mods_hookExactClass("skills/backgrounds/companion_ranged_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.ResilientTree],
			[0.5, ::Const.Perks.CalmTree],
			[0, ::Const.Perks.SturdyTree],
			[0.25, ::Const.Perks.LargeTree],
			[0, ::Const.Perks.TrainedTree],
			[0, ::Const.Perks.HeavyArmorTree],
			[0, ::Const.Perks.ShieldTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Traits = [
				::Const.Perks.AgileTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::MSU.Class.WeightedContainer([
					[25, ::Const.Perks.BowTree],
					[25, ::Const.Perks.CrossbowTree],
					[25, ::Const.Perks.SlingTree],
					[25, ::Const.Perks.ThrowingTree]
				])
			]
		};
	}
});
