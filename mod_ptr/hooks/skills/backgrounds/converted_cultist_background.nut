::mods_hookExactClass("skills/backgrounds/converted_cultist_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.CultistProfessionTree
			]
		};
	}
});
