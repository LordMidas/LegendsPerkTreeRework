::mods_hookExactClass("skills/backgrounds/legend_noble_ranged", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.OrganisedTree],
			[3, ::Const.Perks.MediumArmorTree],
			[9, ::Const.Perks.BowTree],
			[0.5, ::Const.Perks.PolearmTree],
			[0.5, ::Const.Perks.StaffTree],
			[3, ::Const.Perks.SlingTree],
			[3, ::Const.Perks.ThrowingTree]
		];

		this.m.PerkTreeDynamic = {
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::Const.Perks.CrossbowTree
			],
			Styles = [
				::Const.Perks.RangedTree,
				::Const.Perks.OneHandedTree
			]
		};
	}
});
