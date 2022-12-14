::mods_hookExactClass("skills/backgrounds/female_butcher_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.ButcherProfessionTree,
			]
		};
	}
});
