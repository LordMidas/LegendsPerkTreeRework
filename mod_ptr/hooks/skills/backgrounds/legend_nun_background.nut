::mods_hookExactClass("skills/backgrounds/legend_nun_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.25, ::Const.Perks.UnstoppableTree],
			[3, ::Const.Perks.OrganisedTree],
			[0.25, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.TalentedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HolyManProfessionTree
			],
			Class = [
				::MSU.Class.WeightedContainer([
					[50, ::Const.Perks.SergeantClassTree],
					[50, ::Const.Perks.HealerClassTree]
				])

			],
			Weapon = [
				::Const.Perks.StaffTree
			]
		};
	}
});
