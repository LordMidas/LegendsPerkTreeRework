::mods_hookExactClass("skills/backgrounds/pimp_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ServiceProfessionTree
			],
			Class = [
				::Const.Perks.ClerkClassTree
			]
		};
	}
});
