::mods_hookExactClass("skills/backgrounds/butcher_southern_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ButcherProfessionTree
			]
		};
	}
});
