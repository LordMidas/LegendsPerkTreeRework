::mods_hookExactClass("skills/backgrounds/orc_slayer_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.AgileTree],
			[0.1, ::Const.Perks.DeviousTree],
			[0.5, ::Const.Perks.CalmTree],
			[0.5, ::Const.Perks.FastTree],
			[0.1, ::Const.Perks.OrganisedTree],
			[0.33, ::Const.Perks.LightArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.DaggerTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Enemy = [
				::Const.Perks.OrcTree
			],
			Class = [
				::Const.Perks.SergeantClassTree
			],
			Defense = [
				::Const.Perks.HeavyArmorTree
			],
			Weapon = [
				::Const.Perks.HammerTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
