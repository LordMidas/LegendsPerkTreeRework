::mods_hookExactClass("skills/backgrounds/wildman_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[2, ::Const.Perks.ResilientTree],
			[2, ::Const.Perks.ViciousTree],
			[0.4, ::Const.Perks.DeviousTree],
			[2, ::Const.Perks.LargeTree],
			[2, ::Const.Perks.SturdyTree],
			[2, ::Const.Perks.UnstoppableTree],
			[0.4, ::Const.Perks.TrainedTree],
			[0.5, ::Const.Perks.MenderClassTree],
			[2, ::Const.Perks.ScoutClassTree],
			[3, ::Const.Perks.HeavyArmorTree],
			[3, ::Const.Perks.MaceTree],
			[3, ::Const.Perks.HammerTree],
			[2, ::Const.Perks.AxeTree],
			[0.66, ::Const.Perks.SpearTree],
			[0.5, ::Const.Perks.SwordTree],
			[2, ::Const.Perks.StaffTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.WildlingProfessionTree
			],
			Styles = [
				::Const.Perks.TwoHandedTree
			]
		};
	}
});
