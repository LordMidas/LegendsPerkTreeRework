::mods_hookExactClass("skills/backgrounds/legend_shieldmaiden_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.OrganisedTree],
			[0.25, ::Const.Perks.FastTree],
			[0.25, ::Const.Perks.AgileTree],
			[0.1, ::Const.Perks.LightArmorTree],
			[3, ::Const.Perks.HeavyArmorTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.DaggerTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[90, ::Const.Perks.LaborerProfessionTree],
					[10, ::Const.Perks.WildlingProfessionTree]
				])
			],
			Defense = [
				::Const.Perks.ShieldTree
			],
			Styles = [
				::Const.Perks.OneHandedTree
			]
		};
	}
});
