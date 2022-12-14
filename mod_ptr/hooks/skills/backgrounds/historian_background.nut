::mods_hookExactClass("skills/backgrounds/historian_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.66, ::Const.Perks.OrganisedTree],
			[0.25, ::Const.Perks.TrapperClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.PhilosophyMagicTree
			],
			Traits = [
				::Const.Perks.TalentedTree,
				::Const.Perks.CalmTree
			],
			Class = [
				::Const.Perks.TacticianClassTree
			]
		};
	}
});
