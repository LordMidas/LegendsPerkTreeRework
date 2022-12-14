::mods_hookExactClass("skills/backgrounds/monk_background", function(o) {
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
				::Const.Perks.SergeantClassTree
			],
			Weapon = [
				::Const.Perks.StaffTree
			]
		};
	}
});