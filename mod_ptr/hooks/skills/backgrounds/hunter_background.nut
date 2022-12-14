::mods_hookExactClass("skills/backgrounds/hunter_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.SpecialPerkMultipliers = [
			[2, ::Const.Perks.PerkDefs.LegendBigGameHunter],
			[2, ::Const.Perks.PerkDefs.PTRMarksmanship]
		];

		this.m.PerkGroupMultipliers <- [
			[0.5, ::Const.Perks.ResilientTree],
			[0.5, ::Const.Perks.LargeTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Traits = [
				::Const.Perks.AgileTree
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
