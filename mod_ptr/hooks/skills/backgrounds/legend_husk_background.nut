::mods_hookExactClass("skills/backgrounds/legend_husk_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0, ::Const.Perks.TalentedTree],
			[0, ::Const.Perks.DeviousTree],
			[0, ::Const.Perks.CalmTree],
			[0, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.TrainedTree],
			[0, ::Const.Perks.SergeantClassTree],
			[0, ::Const.Perks.HealerClassTree],
			[0, ::Const.Perks.TrapperClassTree],
			[0, ::Const.Perks.ChefClassTree],
			[0, ::Const.Perks.ClerkClassTree],
			[0, ::Const.Perks.HoundmasterClassTree],
			[0, ::Const.Perks.TacticianClassTree],
			[0, ::Const.Perks.ScoutClassTree],
			[0, ::Const.Perks.EntertainerClassTree],
			[0, ::Const.Perks.RangedTree],
			[0, ::Const.Perks.DaggerTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.PolearmTree],
			[0, ::Const.Perks.SlingTree],
			[0.5, ::Const.Perks.ThrowingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.CultistProfessionTree
			],
			Weapon = [
				::Const.Perks.CleaverTree,
				::Const.Perks.FlailTree
			]
		};
	}
});
