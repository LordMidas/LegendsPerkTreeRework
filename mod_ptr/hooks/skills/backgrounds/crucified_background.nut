::mods_hookExactClass("skills/backgrounds/crucified_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.ResilientTree],
			[0.25, ::Const.Perks.ViciousTree],
			[0, ::Const.Perks.DeviousTree],
			[0.1, ::Const.Perks.OrganisedTree],
			[0, ::Const.Perks.LightArmorTree],
			[1.33, ::Const.Perks.ShieldTree],
			[0.5, ::Const.Perks.DaggerTree],
			[2, ::Const.Perks.SwordTree],
			[2, ::Const.Perks.MaceTree],
			[2, ::Const.Perks.FlailTree],
			[2, ::Const.Perks.HammerTree],
			[0.33, ::Const.Perks.PolearmTree],
			[0, ::Const.Perks.ThrowingTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.CrossbowTree],
			[0, ::Const.Perks.SlingTree],
			[0.5, ::Const.Perks.SpearTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[70, ::Const.Perks.HolyManProfessionTree],
					[30, ::Const.Perks.SoldierProfessionTree]
				])
			],
			Defense = [
				::Const.Perks.HeavyArmorTree
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
