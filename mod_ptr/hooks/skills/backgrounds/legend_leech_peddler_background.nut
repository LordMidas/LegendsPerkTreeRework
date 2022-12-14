::mods_hookExactClass("skills/backgrounds/legend_leech_peddler_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ApothecaryProfessionTree
			]
		};
	}
});
