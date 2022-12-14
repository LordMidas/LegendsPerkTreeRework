::mods_hookExactClass("skills/backgrounds/sellsword_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.MercenaryTree],
			[0.1, ::Const.Perks.OrganisedTree],
			[2, ::Const.Perks.HeavyArmorTree],
			[0.66, ::Const.Perks.ShieldTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.66, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[60, ::Const.Perks.RaiderProfessionTree],
					[25, ::Const.Perks.SoldierProfessionTree],
					[15, ::Const.Perks.NoTree]
				])
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
