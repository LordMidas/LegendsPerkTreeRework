::mods_hookExactClass("skills/backgrounds/female_beggar_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.1, ::Const.Perks.TalentedTree],
			[0.25, ::Const.Perks.ClerkClassTree],
			[0, ::Const.Perks.EntertainerClassTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.PauperProfessionTree
			],
			Weapon = [
				::Const.Perks.StaffTree
			]
		};
	}
});
