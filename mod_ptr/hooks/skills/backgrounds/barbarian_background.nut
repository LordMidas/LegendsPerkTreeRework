::mods_hookExactClass("skills/backgrounds/barbarian_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.CalmTree],
			[0, ::Const.Perks.OrganisedTree],
			[3, ::Const.Perks.UnstoppableTree],
			[2, ::Const.Perks.ViciousTree],
			[0.2, ::Const.Perks.ClerkClassTree],
			[0, ::Const.Perks.EntertainerClassTree],
			[0.2, ::Const.Perks.ShieldTree],
			[3, ::Const.Perks.HeavyArmorTree],
			[2, ::Const.Perks.AxeTree],
			[2, ::Const.Perks.HammerTree],
			[2, ::Const.Perks.MaceTree],
			[2, ::Const.Perks.CleaverTree],
			[0, ::Const.Perks.BowTree],
			[0, ::Const.Perks.SlingTree],
			[0, ::Const.Perks.CrossbowTree],
			[0.5, ::Const.Perks.DaggerTree],
			[0.5, ::Const.Perks.PolearmTree],
			[0.66, ::Const.Perks.SpearTree],
			[0.5, ::Const.Perks.StaffTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.RaiderProfessionTree],
					[50, ::Const.Perks.WildlingProfessionTree]
				])
			],
			Traits = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.LargeTree],
					[50, ::Const.Perks.AgileTree]
				])
			],
			Styles = [
				::Const.Perks.OneHandedTree,
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
