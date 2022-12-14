::mods_hookExactClass("skills/backgrounds/flagellant_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[3, ::Const.Perks.ResilientTree],
			[3, ::Const.Perks.ViciousTree],
			[2, ::Const.Perks.SturdyTree],
			[0.2, ::Const.Perks.HealerClassTree],
			[0.1, ::Const.Perks.ShieldTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HolyManProfessionTree
			],
			Class = [
				::Const.Perks.SergeantClassTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::Const.Perks.CleaverTree
			]
		};
	}
});
