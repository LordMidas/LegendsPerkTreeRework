::mods_hookExactClass("skills/backgrounds/poacher_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[1.5, ::Const.Perks.PerkDefs.LegendBigGameHunter],
			[1.5, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];
		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.AgileTree],
			[0.5, ::Const.Perks.ResilientTree],
			[0.5, ::Const.Perks.LargeTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Class = [
				::Const.Perks.ScoutClassTree
			],
			Defense = [
				::Const.Perks.LightArmorTree
			],
			Weapon = [
				::Const.Perks.BowTree
			]
		};
	}
});
