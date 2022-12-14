::mods_hookExactClass("skills/backgrounds/female_minstrel_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.MinstrelProfessionTree
			],
			Class = [
				::Const.Perks.EntertainerClassTree
			]
		};
	}
});
