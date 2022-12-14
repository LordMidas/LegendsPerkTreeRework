::mods_hookExactClass("skills/backgrounds/beast_hunter_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[5, ::Const.Perks.PerkDefs.LegendBigGameHunter]
		];

		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.ViciousTree],
			[0.33, ::Const.Perks.ShieldTree],
			[0.5, ::Const.Perks.FlailTree],
			[0.5, ::Const.Perks.HammerTree],
			[0.5, ::Const.Perks.MaceTree],
			[0.5, ::Const.Perks.StaffTree],
			[0.25, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.ApothecaryProfessionTree],
			[0, ::Const.Perks.MinstrelProfessionTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[90, ::Const.Perks.NoTree],
					[10, ::Const.Perks.RandomTree]
				])
			],
			Enemy = [
				::Const.Perks.BeastsTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[90, ::Const.Perks.TrapperClassTree],
					[5, ::Const.Perks.ScoutClassTree],
					[5, ::Const.Perks.NoTree]
				])
			],
			Weapon = [
				::Const.Perks.SpearTree
			]
		};
	}
});
