::mods_hookExactClass("skills/backgrounds/militia_background", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.PerkGroupMultipliers <- [
			];

		this.m.PerkTreeDynamic = {
			Profession = [
				::Const.Perks.MilitiaProfessionTree
			],
			Traits = [
				::Const.Perks.TrainedTree
			]
		};
	}
});
