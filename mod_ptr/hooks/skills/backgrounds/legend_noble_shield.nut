::mods_hookExactClass("skills/backgrounds/legend_noble_shield", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0, ::Const.Perks.DeviousTree],
			[0.1, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.SoldierProfessionTree
			],
			Defense = [
				::Const.Perks.ShieldTree
			]
			Styles = [
				::Const.Perks.OneHandedTree
			]
		};
	}
});
