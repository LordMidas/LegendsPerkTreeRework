::mods_hookExactClass("skills/backgrounds/regent_in_absentia_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.DeviousTree],
			[0, ::Const.Perks.BowTree],
			[0.4, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree],
			[1.25, ::Const.Perks.TrainedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.NobleProfessionTree
			],
			Weapon = [
				::Const.Perks.SwordTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
