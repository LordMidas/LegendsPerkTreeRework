::mods_hookExactClass("skills/backgrounds/legend_master_archer_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[0.66, ::Const.Perks.ShieldTree],
			[3, ::Const.Perks.MediumArmorTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.HunterProfessionTree
			],
			Enemy = [
				::Const.Perks.ArchersTree
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
				::Const.Perks.BowTree,
				::Const.Perks.CrossbowTree,
				::Const.Perks.SlingTree,
				::Const.Perks.ThrowingTree
			]
		};
	}
});
