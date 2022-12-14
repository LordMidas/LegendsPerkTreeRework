::mods_hookExactClass("skills/backgrounds/manhunter_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.NomadsTree],
			[0.5, ::Const.Perks.OrganisedTree],
			[0.5, ::Const.Perks.HealerClassTree],
			[2, ::Const.Perks.TacticianClassTree],
			[2, ::Const.Perks.MaceTree],
			[4, ::Const.Perks.CleaverTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.SlingTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.RaiderProfessionTree
			],
			Class = [
				::Const.Perks.TrapperClassTree
			]
		};
	}
});
