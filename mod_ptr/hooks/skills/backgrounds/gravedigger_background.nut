::mods_hookExactClass("skills/backgrounds/gravedigger_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			[1.5, ::Const.Perks.SkeletonTree],
			[1.5, ::Const.Perks.ZombieTree],
			[1.5, ::Const.Perks.VampireTree],
			[2, ::Const.Perks.CalmTree],
			[2, ::Const.Perks.SergeantClassTree],
			[0.5, ::Const.Perks.TalentedTree],
			[1.5, ::Const.Perks.TwoHandedTree]
		];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.DiggerProfessionTree
			]
		};
	}
});
