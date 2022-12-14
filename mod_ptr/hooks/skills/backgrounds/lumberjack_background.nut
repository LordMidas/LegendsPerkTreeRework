::mods_hookExactClass("skills/backgrounds/lumberjack_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.LumberjackProfessionTree
			]
		};
	}
});
