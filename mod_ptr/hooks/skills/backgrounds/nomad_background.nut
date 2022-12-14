::mods_hookExactClass("skills/backgrounds/nomad_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.SouthernersTree],
			[2, ::Const.Perks.ResilientTree],
			[0.25, ::Const.Perks.OrganisedTree],
			[2, ::Const.Perks.ScoutClassTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.RaiderProfessionTree
			]
		};
	}
});
