::mods_hookExactClass("skills/backgrounds/nomad_ranged_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.SouthernersTree],
			[5, ::Const.Perks.ViciousTree],
			[0.5, ::Const.Perks.ResilientTree],
			[2, ::Const.Perks.ScoutClassTree],
			[0.33, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.MediumArmorTree],
			[0.25, ::Const.Perks.CalmTree]
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
