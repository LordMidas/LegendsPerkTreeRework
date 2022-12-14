::mods_hookExactClass("skills/backgrounds/disowned_noble_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.OrganisedTree],
			[0.5, ::Const.Perks.SergeantClassTree],
			[1.5, ::Const.Perks.TacticianClassTree],
			[0.8, ::Const.Perks.ShieldTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
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
