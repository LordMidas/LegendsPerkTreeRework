::mods_hookExactClass("skills/backgrounds/peddler_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.TraderProfessionTree
			]
		};
	}
});
