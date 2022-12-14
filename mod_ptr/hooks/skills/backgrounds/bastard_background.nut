::mods_hookExactClass("skills/backgrounds/bastard_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.NoblesTree],
			[1.5, ::Const.Perks.HeavyArmorTree],
			[0.5, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.OrganisedTree],
			[2, ::Const.Perks.TacticianClassTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.BowTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Weapon = [
				::Const.Perks.SwordTree
			]
		};
	}
});
